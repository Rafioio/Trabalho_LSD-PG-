library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Controller is
    Port (
        -- Clock e Reset
        clk           : in  std_logic;
        rst           : in  std_logic;
        
        -- Entradas do usuário
        start         : in  std_logic;
        sw_usuario    : in  STD_LOGIC_VECTOR(6 downto 0);
        ativado       : in  STD_LOGIC_VECTOR(2 downto 0);
        
        -- Sinais do caminho de dados (Sequência)
        indice_ready  : in  std_logic;
        reorder_ready : in  std_logic;
        
        -- Saídas para controle de sequência
        fsm_off       : out std_logic;
        load_seed     : out std_logic;
        enable_lfsr   : out std_logic;
        global_ready  : out std_logic;
        
        -- Saídas para controle de input
        inicia_Input  : out STD_LOGIC;
        enable_led    : out STD_LOGIC;
        sw_out        : out STD_LOGIC_VECTOR(6 downto 0);
        vetor_resultado : out std_logic_vector(20 downto 0);
        leds_out      : out STD_LOGIC_VECTOR(6 downto 0)
    );
end Controller;

architecture Behavioral of Controller is

    -- Tipos para FSM de sequência
    type state_sequence_type is (S_IDLE, S_LOAD_SEED, S_RUN_LFSR, S_REORDER, S_DONE);
    signal state_sequence : state_sequence_type := S_IDLE;
    
    -- Tipos para FSM de input
    type estado_input_type is (AGUARDA_START, CAPTURANDO, COMPLETO);
    signal estado_input : estado_input_type := AGUARDA_START;
    
    -- Sinais para controle de sequência
    signal prev_start_seq : std_logic := '0';
    
    -- Sinais para controle de input
    type array_resposta is array (0 to 6) of std_logic_vector(2 downto 0);
    signal resposta_usuario : array_resposta := (others => "000");
    signal contador_inputs : integer range 0 to 7 := 0;
    signal vetor_resultado_int : std_logic_vector(20 downto 0) := (others => '0');
    signal leds_internos : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');
    signal enable_led_int : STD_LOGIC := '0';
    
    -- Sinal interno para sincronização
    signal sequence_ready : std_logic := '0';
    
    -- Sinal para detectar borda do sinal ativado
    signal ativado_anterior : STD_LOGIC_VECTOR(2 downto 0) := "000";
    signal novo_input : std_logic := '0';

begin

    --------------------------------------------------------------------
    -- FSM PARA CONTROLE DE SEQUÊNCIA (Geração Aleatória)
    --------------------------------------------------------------------
    process(clk, rst)
    begin
        if rst = '1' then
            state_sequence <= S_IDLE;
            load_seed    <= '0';
            enable_lfsr  <= '0';
            global_ready <= '0';
            prev_start_seq <= '0';
            sequence_ready <= '0';

        elsif rising_edge(clk) then
            prev_start_seq <= start;
            load_seed  <= '0';
            enable_lfsr <= '0';
            global_ready <= '0';
            sequence_ready <= '0';

            case state_sequence is

                when S_IDLE =>
                    if start = '1' and prev_start_seq = '0' then
                        load_seed <= '1'; -- captura seed aqui
                        state_sequence <= S_LOAD_SEED;
                    end if;

                when S_LOAD_SEED =>
                    enable_lfsr <= '1';
                    state_sequence <= S_RUN_LFSR;

                when S_RUN_LFSR =>
                    enable_lfsr <= '1';
                    if indice_ready = '1' then
                        state_sequence <= S_REORDER;
                    end if;

                when S_REORDER =>
                    if reorder_ready = '1' then
                        state_sequence <= S_DONE;
                        sequence_ready <= '1'; -- Sinal interno para FSM de input
                    end if;

                when S_DONE =>
                    global_ready <= '1';
                    sequence_ready <= '1'; -- Mantém sinal ativo
                    if start = '0' then
                        state_sequence <= S_IDLE;
                    end if;

            end case;
        end if;
    end process;

    -- fsm_off depende SOMENTE do estado de sequência
    fsm_off <= '1' when state_sequence = S_IDLE else '0';

    --------------------------------------------------------------------
    -- DETECÇÃO DE BORDA DO SINAL ATIVADO
    --------------------------------------------------------------------
    process(clk, rst)
    begin
        if rst = '1' then
            ativado_anterior <= "000";
            novo_input <= '0';
        elsif rising_edge(clk) then
            ativado_anterior <= ativado;
            -- Detecta borda de subida: ativado mudou de "000" para um código válido
            if ativado /= "000" and ativado_anterior = "000" then
                novo_input <= '1';
            else
                novo_input <= '0';
            end if;
        end if;
    end process;

    --------------------------------------------------------------------
    -- FSM PARA CONTROLE DE INPUT (Captura de Usuário)
    --------------------------------------------------------------------
    
    -- Conecta sinais internos às saídas
    vetor_resultado <= vetor_resultado_int;
    leds_out <= leds_internos;
    enable_led <= enable_led_int;

    -- Processo para construir o vetor resultado
    process(resposta_usuario)
        variable temp_vector : std_logic_vector(20 downto 0);
    begin
        temp_vector := (others => '0');
        for i in 0 to 6 loop
            temp_vector((i*3)+2 downto (i*3)) := resposta_usuario(i);
        end loop;
        vetor_resultado_int <= temp_vector;
    end process;

    -- Processo para controlar os LEDs
    process(clk, rst)
    begin
        if rst = '1' then
            leds_internos <= (others => '0');
        elsif rising_edge(clk) then
            if enable_led_int = '1' and novo_input = '1' then
                -- Acende o LED correspondente ao switch pressionado
                case ativado is
                    when "001" => leds_internos(0) <= '1';  -- SW0 -> LED0
                    when "010" => leds_internos(1) <= '1';  -- SW1 -> LED1
                    when "011" => leds_internos(2) <= '1';  -- SW2 -> LED2
                    when "100" => leds_internos(3) <= '1';  -- SW3 -> LED3
                    when "101" => leds_internos(4) <= '1';  -- SW4 -> LED4
                    when "110" => leds_internos(5) <= '1';  -- SW5 -> LED5
                    when "111" => leds_internos(6) <= '1';  -- SW6 -> LED6
                    when others => null;
                end case;
            end if;
        end if;
    end process;

    -- Processo principal da FSM de input
    process(clk, rst)
    begin
        if rst = '1' then
            estado_input <= AGUARDA_START;
            contador_inputs <= 0;
            inicia_Input <= '0';
            enable_led_int <= '0';
            sw_out <= (others => '0');
            for i in 0 to 6 loop
                resposta_usuario(i) <= "000";
            end loop;
            
        elsif rising_edge(clk) then
            sw_out <= sw_usuario;
            
            case estado_input is
                when AGUARDA_START =>
                    inicia_Input <= '0';
                    enable_led_int <= '0';
                    contador_inputs <= 0;
                    -- Inicia quando a sequência está pronta
                    if sequence_ready = '1' then
                        estado_input <= CAPTURANDO;
                        inicia_Input <= '1';
                        enable_led_int <= '1';  -- Ativa controle de LEDs
                        report "Controller: Iniciando captura de inputs";
                    end if;
                    
                when CAPTURANDO =>
                    inicia_Input <= '1';
                    enable_led_int <= '1';  -- Mantém LEDs ativos
                    
                    -- Captura apenas na BORDA do sinal ativado (um ciclo por pressionamento)
                    if novo_input = '1' then
                        resposta_usuario(contador_inputs) <= ativado;
                        contador_inputs <= contador_inputs + 1;
                        report "Controller: Input " & integer'image(contador_inputs) & 
                               " capturado - codigo: " & integer'image(to_integer(unsigned(ativado)));
                        
                        if contador_inputs = 6 then
                            estado_input <= COMPLETO;
                            inicia_Input <= '0';
                            report "Controller: Todos os 7 inputs capturados";
                        end if;
                    end if;
                    
                when COMPLETO =>
                    inicia_Input <= '0';
                    if rst = '1' then
                        estado_input <= AGUARDA_START;
                    end if;
                    
            end case;
        end if;
    end process;

end Behavioral;