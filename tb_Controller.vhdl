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

    -- Função simplificada para mostrar vetor
    function show_vector(vec : array_3X7bits) return string is
        variable result : string(1 to 100) := (others => ' ');
        variable pos : integer := 1;
    begin
        result(pos) := '['; pos := pos + 1;
        for i in 0 to 6 loop
            -- Adiciona valor decimal
            result(pos) := character'val(character'pos('0') + to_integer(unsigned(vec(i))));
            pos := pos + 1;
            if i < 6 then
                result(pos) := ','; pos := pos + 1;
                result(pos) := ' '; pos := pos + 1;
            end if;
        end loop;
        result(pos) := ']';
        return result(1 to pos);
    end function;

    -- Função para mostrar sequência de switches
    function show_switch_sequence(vec : array_3X7bits) return string is
        variable result : string(1 to 100) := (others => ' ');
        variable pos : integer := 1;
    begin
        for i in 0 to 6 loop
            result(pos) := 'S'; pos := pos + 1;
            result(pos) := 'W'; pos := pos + 1;
            result(pos) := character'val(character'pos('0') + (to_integer(unsigned(vec(i))) - 1));
            pos := pos + 1;
            if i < 6 then
                result(pos) := ','; pos := pos + 1;
                result(pos) := ' '; pos := pos + 1;
            end if;
        end loop;
        return result(1 to pos-1);
    end function;

    --------------------------------------------------------------------
    -- Componentes
    --------------------------------------------------------------------
    component Controller is
        Port (
            clk           : in  std_logic;
            rst           : in  std_logic;
            start         : in  std_logic;
            sw_usuario    : in  STD_LOGIC_VECTOR(6 downto 0);
            ativado       : in  STD_LOGIC_VECTOR(2 downto 0);
            indice_ready  : in  std_logic;
            reorder_ready : in  std_logic;
            fsm_off       : out std_logic;
            load_seed     : out std_logic;
            enable_lfsr   : out std_logic;
            global_ready  : out std_logic;
            inicia_Input  : out STD_LOGIC;
            enable_led    : out STD_LOGIC;
            sw_out        : out STD_LOGIC_VECTOR(6 downto 0);
            vetor_resultado : out std_logic_vector(20 downto 0);
            leds_out      : out STD_LOGIC_VECTOR(6 downto 0)
        );
    end component;

    component LFSR_3bits is
        port (
            clk                 : in std_logic;
            rst                 : in std_logic;
            enable_lfsr         : in std_logic;
            load_seed           : in std_logic;
            seed                : in std_logic_vector(2 downto 0);
            indice_vector       : out array_3X7bits;
            indice_vector_ready : out std_logic
        );
    end component;

    component Reorder_Vector is
        Port (
            clk           : in std_logic;
            rst           : in std_logic;
            enable        : in std_logic;
            indice_vector : in array_3X7bits;
            random_vector : out array_3X7bits;
            ready         : out std_logic
        );
    end component;

    component Seed_generator is
        Port ( 
            clk        : in  std_logic;
            rst        : in  std_logic;
            start      : in  std_logic;
            fsm_off    : in  std_logic;
            seed       : out std_logic_vector(2 downto 0)
        );
    end component;

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

    -- Sinais para monitorar sequência REAL
    signal seed_value    : std_logic_vector(2 downto 0);
    signal indice_vector : array_3X7bits;
    signal random_vector : array_3X7bits;
    signal lfsr_ready    : std_logic;
    signal reorder_ready_int : std_logic;
    signal actual_sequence : array_3X7bits;

begin

    --------------------------------------------------------------------
    -- DUT
    --------------------------------------------------------------------
    uut: Controller
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

    -- Instâncias para gerar e monitorar sequência REAL
    u_seed: Seed_generator
        port map (
            clk        => clk,
            rst        => rst,
            start      => load_seed,
            fsm_off    => fsm_off,
            seed       => seed_value
        );

    u_lfsr: LFSR_3bits
        port map (
            clk                 => clk,
            rst                 => rst,
            enable_lfsr         => enable_lfsr,
            load_seed           => load_seed,
            seed                => seed_value,
            indice_vector       => indice_vector,
            indice_vector_ready => lfsr_ready
        );

    u_reorder: Reorder_Vector
        port map (
            clk           => clk,
            rst           => rst,
            enable        => lfsr_ready,
            indice_vector => indice_vector,
            random_vector => random_vector,
            ready         => reorder_ready_int
        );

    -- Conectar sinais de ready
    indice_ready <= lfsr_ready;
    reorder_ready <= reorder_ready_int;

    -- Registrar sequência atual
    process(clk)
    begin
        if rising_edge(clk) then
            if reorder_ready_int = '1' then
                actual_sequence <= random_vector;
            end if;
        end if;
    end process;

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
        report "=== INICIANDO TESTE DO CONTROLLER ===";
        
        -- Reset inicial
        rst <= '1';
        wait for 30 ns;
        rst <= '0';
        wait for 50 ns;

        -- Iniciar geração da sequência
        report "1. GERANDO SEQUENCIA ALEATORIA...";
        start <= '1';
        wait for CLK_PERIOD;
        start <= '0';

        -- Esperar sequência REAL ser gerada
        wait until reorder_ready_int = '1' for 200 * CLK_PERIOD;
        
        if reorder_ready_int = '1' then
            report "2. SEQUENCIA ALEATORIA REAL GERADA:";
            report "   Seed: " & integer'image(to_integer(unsigned(seed_value)));
            report "   Sequencia: " & show_vector(random_vector);
            report "   Usuario deve repetir: " & show_switch_sequence(random_vector);
            
            -- Mostrar detalhes da sequência
            report "   DETALHES:";
            for i in 0 to 6 loop
                report "     Posicao " & integer'image(i) & " -> SW" & 
                       integer'image(to_integer(unsigned(random_vector(i))) - 1) &
                       " (codigo: " & integer'image(to_integer(unsigned(random_vector(i)))) & ")";
            end loop;
        else
            report "ERRO: Sequencia nao foi gerada a tempo!" severity error;
        end if;

        wait for 20 * CLK_PERIOD;

        -- Fase de inputs do usuário
        report "3. AGUARDANDO CONTROLLER INICIAR CAPTURA DE INPUTS...";
        
        wait until inicia_Input = '1' for 100 * CLK_PERIOD;
        
        if inicia_Input = '1' then
            report "4. CAPTURANDO INPUTS DO USUARIO...";
            
            -- Usar sequência REAL gerada ou padrão
            if reorder_ready_int = '1' then
                report "   Sequencia a repetir: " & show_switch_sequence(actual_sequence);
                
                -- Repetir a sequência REAL gerada
                for i in 0 to 6 loop
                    simular_switch(to_integer(unsigned(actual_sequence(i))) - 1, 15 * CLK_PERIOD);
                end loop;
            else
                report "   Usando sequencia padrao: SW0, SW1, SW2, SW3, SW4, SW5, SW6";
                for i in 0 to 6 loop
                    simular_switch(i, 15 * CLK_PERIOD);
                end loop;
            end if;
            
            -- Liberar todos switches
            sw_usuario <= (others => '0');
            wait for 10 * CLK_PERIOD;
            
            report "5. TODOS OS 7 INPUTS CAPTURADOS";
        else
            report "ERRO: Controller nao iniciou captura de inputs!" severity error;
        end if;

        -- Mostrar resultados
        report "=== RESULTADOS FINAIS ===";
        report "Sequencia gerada: " & show_vector(actual_sequence);
        report "Vetor de respostas: " & slv_to_string(vetor_resultado);
        report "Vetor de respostas (decimal):";
        for i in 0 to 6 loop
            report "  Posicao " & integer'image(i) & " = " & 
                   integer'image(to_integer(unsigned(vetor_resultado(i*3+2 downto i*3))));
        end loop;
        report "LEDs finais: " & slv_to_string(leds_out);

        -- Verificação
        report "=== VERIFICACAO ===";
        if vetor_resultado /= "000000000000000000000" then
            report "SUCESSO: CONTROLLER FUNCIONANDO CORRETAMENTE";
        else
            report "ERRO: Nenhum input foi capturado";
        end if;

        report "=== SIMULACAO CONCLUIDA ===";
        
        -- Manter simulação rodando para capturar waveform
        wait for 100 * CLK_PERIOD;
        wait;
    end process;

end sim;