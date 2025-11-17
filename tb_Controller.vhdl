library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Types.all;

entity tb_Controller is
end tb_Controller;

architecture sim of tb_Controller is

    --------------------------------------------------------------------
    -- Função auxiliar para converter std_logic_vector → string
    --------------------------------------------------------------------
    function slv_to_string(slv: std_logic_vector) return string is
        variable result : string(1 to slv'length);
    begin
        for i in slv'range loop
            case slv(i) is
                when '0' => result(i - slv'low + 1) := '0';
                when '1' => result(i - slv'low + 1) := '1';
                when 'U' => result(i - slv'low + 1) := 'U';
                when 'X' => result(i - slv'low + 1) := 'X';
                when 'Z' => result(i - slv'low + 1) := 'Z';
                when others => result(i - slv'low + 1) := '?';
            end case;
        end loop;
        return result;
    end function;

    --------------------------------------------------------------------
    -- Sinais
    --------------------------------------------------------------------
    constant CLK_PERIOD : time := 20 ns;

    signal clk           : std_logic := '0';
    signal rst           : std_logic := '0';
    signal start         : std_logic := '0';
    signal sw_usuario    : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');
    signal ativado       : STD_LOGIC_VECTOR(2 downto 0) := "000";
    signal indice_ready  : std_logic := '0';
    signal reorder_ready : std_logic := '0';
    
    signal fsm_off       : std_logic;
    signal load_seed     : std_logic;
    signal enable_lfsr   : std_logic;
    signal global_ready  : std_logic;
    signal inicia_Input  : STD_LOGIC;
    signal enable_led    : STD_LOGIC;
    signal sw_out        : STD_LOGIC_VECTOR(6 downto 0);
    signal vetor_resultado : std_logic_vector(20 downto 0);
    signal leds_out      : STD_LOGIC_VECTOR(6 downto 0);

begin

    --------------------------------------------------------------------
    -- DUT
    --------------------------------------------------------------------
    uut: entity work.Controller
        port map (
            clk           => clk,
            rst           => rst,
            start         => start,
            sw_usuario    => sw_usuario,
            ativado       => ativado,
            indice_ready  => indice_ready,
            reorder_ready => reorder_ready,
            fsm_off       => fsm_off,
            load_seed     => load_seed,
            enable_lfsr   => enable_lfsr,
            global_ready  => global_ready,
            inicia_Input  => inicia_Input,
            enable_led    => enable_led,
            sw_out        => sw_out,
            vetor_resultado => vetor_resultado,
            leds_out      => leds_out
        );

    --------------------------------------------------------------------
    -- Clock
    --------------------------------------------------------------------
    clk_process : process
    begin
        while true loop
            clk <= '0'; wait for CLK_PERIOD/2;
            clk <= '1'; wait for CLK_PERIOD/2;
        end loop;
    end process;

    --------------------------------------------------------------------
    -- Estímulos
    --------------------------------------------------------------------
    stim_proc : process
        procedure simular_switch(switch_num : integer; tempo_espera : time) is
        begin
            wait for tempo_espera;
            sw_usuario(switch_num) <= '1';
            ativado <= std_logic_vector(to_unsigned(switch_num + 1, 3));
            report ">>> USUARIO PRESSIONOU: SW" & integer'image(switch_num) & 
                   " -> LED" & integer'image(switch_num) & " ACENDEU" &
                   " | Codigo: " & integer'image(switch_num + 1);
            wait for 2 * CLK_PERIOD;
            ativado <= "000";
            wait for 5 * CLK_PERIOD;
        end procedure;
    begin
        -- Reset inicial
        report "=== INICIANDO TESTE DO CONTROLLER ===";
        rst <= '1';
        wait for 30 ns;
        rst <= '0';
        wait for 50 ns;

        -- Iniciar geração da sequência
        report "1. GERANDO SEQUENCIA ALEATORIA...";
        start <= '1';
        wait for CLK_PERIOD;
        start <= '0';

        -- Simular processo de geração da sequência
        wait for 10 * CLK_PERIOD;
        
        -- Simular LFSR pronto
        report "2. LFSR PRONTO - enviando indice_ready";
        indice_ready <= '1';
        wait for CLK_PERIOD;
        indice_ready <= '0';
        wait for 5 * CLK_PERIOD;
        
        -- Simular reordenamento pronto
        report "3. REORDENAMENTO PRONTO - enviando reorder_ready";
        reorder_ready <= '1';
        wait for CLK_PERIOD;
        reorder_ready <= '0';

        -- Esperar sequência ficar pronta
        wait until global_ready = '1' for 50 * CLK_PERIOD;
        
        if global_ready = '1' then
            report "4. SEQUENCIA GERADA COM SUCESSO";
        else
            report "ERRO: Sequencia nao ficou pronta a tempo!" severity error;
        end if;

        -- Fase de inputs do usuário - AGUARDAR MAIS TEMPO
        report "5. AGUARDANDO CONTROLLER INICIAR CAPTURA DE INPUTS...";
        
        -- Esperar controller ficar pronto para capturar inputs (MAIS TEMPO)
        wait until inicia_Input = '1' for 100 * CLK_PERIOD;
        
        if inicia_Input = '1' then
            report "6. CAPTURANDO INPUTS (SW0 a SW6 em ordem)...";
            
            -- Simular usuário pressionando switches em ordem
            simular_switch(0, 10 * CLK_PERIOD);
            simular_switch(1, 15 * CLK_PERIOD);
            simular_switch(2, 15 * CLK_PERIOD);
            simular_switch(3, 15 * CLK_PERIOD);
            simular_switch(4, 15 * CLK_PERIOD);
            simular_switch(5, 15 * CLK_PERIOD);
            simular_switch(6, 15 * CLK_PERIOD);
            
            -- Liberar todos switches
            sw_usuario <= (others => '0');
            wait for 10 * CLK_PERIOD;
            
            report "7. TODOS OS 7 INPUTS CAPTURADOS";
        else
            report "ERRO: Controller nao iniciou captura de inputs!" severity error;
            report "Sinais atuais: global_ready=" & std_logic'image(global_ready) & 
                   ", inicia_Input=" & std_logic'image(inicia_Input);
        end if;

        -- Mostrar resultados
        report "=== RESULTADOS FINAIS ===";
        report "Vetor de respostas capturado: " & slv_to_string(vetor_resultado);
        report "LEDs finais: " & slv_to_string(leds_out);
        
        -- Mostrar vetor de respostas em formato decimal
        report "Vetor de respostas (decimal):";
        for i in 0 to 6 loop
            report "  Posicao " & integer'image(i) & " = " & 
                   integer'image(to_integer(unsigned(vetor_resultado(i*3+2 downto i*3))));
        end loop;

        report "=== SIMULACAO CONCLUIDA ===";
        wait;
    end process;

end sim;