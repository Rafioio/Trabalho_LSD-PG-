library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Controller is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        start : in STD_LOGIC;
        sw_usuario : in STD_LOGIC_VECTOR(6 downto 0);
        ativado : in STD_LOGIC_VECTOR(2 downto 0);
        inicia_Input : out STD_LOGIC;
        enable_led : out STD_LOGIC;
        vetor_resultado : out std_logic_vector(20 downto 0);
        clear_leds : out STD_LOGIC;
        sequence_done : in STD_LOGIC;
        comparison_done : in STD_LOGIC;
        leds_controller : in STD_LOGIC_VECTOR(6 downto 0);
        leds_comparator : in STD_LOGIC_VECTOR(6 downto 0);
        leds_show_sequence : in STD_LOGIC_VECTOR(6 downto 0);
        leds_finais : out STD_LOGIC_VECTOR(6 downto 0);
        correct_sequence : out std_logic_vector(20 downto 0);
        input_completo : out STD_LOGIC;
        start_show : out STD_LOGIC;
        -- Sinais de tempo para outros módulos
        led_on_time : out std_logic_vector(24 downto 0);
        pause_time : out std_logic_vector(24 downto 0);
        win_blink_time : out std_logic_vector(24 downto 0);
        lose_display_time : out std_logic_vector(24 downto 0);
        input_clear_delay : out std_logic_vector(19 downto 0);
        -- Sinais para controle do gerador aleatório
        generate_random : out STD_LOGIC;
        random_sequence : in STD_LOGIC_VECTOR(20 downto 0);
        random_ready : in STD_LOGIC
    );
end Controller;

architecture RTL of Controller is
    -- Estados do sistema principal do Jogo
    type system_state_type is (WAITING_START, GENERATING_RANDOM, SHOW_SEQUENCE, INPUT_PHASE, COMPARISON_PHASE);
    signal system_state : system_state_type;
    
    -- Estados internos para controle de input
    type estado_input_type is (AGUARDA_START, CAPTURANDO, COMPLETO);
    signal estado_input : estado_input_type;
    
    -- Sinais internos
    signal contador_inputs : integer range 0 to 7;
    signal resposta_packed : std_logic_vector(20 downto 0);
    signal inicia_Input_r : std_logic;
    signal enable_led_r : std_logic;
    signal clear_leds_r : std_logic;
    signal ativado_prev : STD_LOGIC_VECTOR(2 downto 0);
    signal input_completo_r : std_logic;
    signal start_show_r : std_logic;
    signal start_prev : std_logic;
    signal timer_clear : unsigned(19 downto 0) := (others => '0');
    signal generate_random_r : std_logic;
    
    -- CONSTANTES DE TEMPO CENTRALIZADAS
    constant LED_ON_TIME_CONST : unsigned(24 downto 0) := to_unsigned(25000000, 25);
    constant PAUSE_TIME_CONST : unsigned(24 downto 0) := to_unsigned(25000000, 25);
    constant WIN_BLINK_TIME_CONST : unsigned(24 downto 0) := to_unsigned(12500000, 25);
    constant LOSE_DISPLAY_TIME_CONST : unsigned(24 downto 0) := to_unsigned(25000000, 25);
    constant INPUT_CLEAR_DELAY_CONST : unsigned(19 downto 0) := to_unsigned(1000000, 20);

begin
    -- Atribuições de saída
    vetor_resultado <= resposta_packed;
    inicia_Input <= inicia_Input_r;
    enable_led <= enable_led_r;
    clear_leds <= clear_leds_r;
    correct_sequence <= random_sequence;  -- Direto do gerador aleatório
    input_completo <= input_completo_r;
    start_show <= start_show_r;
    generate_random <= generate_random_r;
    
    -- Sinais de tempo centralizados
    led_on_time <= std_logic_vector(LED_ON_TIME_CONST);
    pause_time <= std_logic_vector(PAUSE_TIME_CONST);
    win_blink_time <= std_logic_vector(WIN_BLINK_TIME_CONST);
    lose_display_time <= std_logic_vector(LOSE_DISPLAY_TIME_CONST);
    input_clear_delay <= std_logic_vector(INPUT_CLEAR_DELAY_CONST);

    -------------------------------------
    -- MÁQUINA DE ESTADOS PRINCIPAL 
    -------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            system_state <= WAITING_START;
            start_prev <= '0';
            start_show_r <= '0';
            generate_random_r <= '0';
        elsif rising_edge(clk) then
            start_prev <= start;
            start_show_r <= '0';
            generate_random_r <= '0';
            
            case system_state is
                when WAITING_START =>
                    if start = '1' and start_prev = '0' then
                        system_state <= GENERATING_RANDOM;
                        generate_random_r <= '1';  -- Ativa gerador aleatório
                    end if;
                    
                when GENERATING_RANDOM =>
                    if random_ready = '1' then
                        system_state <= SHOW_SEQUENCE;
                        start_show_r <= '1';
                    end if;
                    
                when SHOW_SEQUENCE =>
                    if sequence_done = '1' then
                        system_state <= INPUT_PHASE;
                    end if;

                when INPUT_PHASE =>
                    if clear_leds_r = '1' then
                        system_state <= COMPARISON_PHASE;
                    end if;

                when COMPARISON_PHASE =>
                    if comparison_done = '1' then
                        system_state <= WAITING_START;
                    end if;
                    
                when others =>
                    system_state <= WAITING_START;
            end case;
        end if;
    end process;

    -------------------------------------
    -- MUX DOS LEDs - CONTROLLER DECIDE
    -------------------------------------
    process(system_state, leds_controller, leds_comparator, leds_show_sequence)
    begin
        case system_state is
            when SHOW_SEQUENCE =>
                leds_finais <= leds_show_sequence;
            when COMPARISON_PHASE =>
                leds_finais <= leds_comparator;
            when others =>
                leds_finais <= leds_controller;
        end case;
    end process;

    -------------------------------------
    -- CONTROLE DE CAPTURA DE INPUTS
    -------------------------------------
    process(clk, reset)
        variable base_idx : integer;
    begin
        if reset = '1' then
            estado_input <= AGUARDA_START;
            contador_inputs <= 0;
            resposta_packed <= (others => '0');
            inicia_Input_r <= '0';
            enable_led_r <= '0';
            clear_leds_r <= '0';
            ativado_prev <= "000";
            input_completo_r <= '0';
            timer_clear <= (others => '0');
        elsif rising_edge(clk) then
            clear_leds_r <= '0';
            input_completo_r <= '0';  -- Reset a cada ciclo
            ativado_prev <= ativado;

            -- Só permite capturar inputs durante a fase INPUT_PHASE
            if system_state = INPUT_PHASE then
                case estado_input is
                    when AGUARDA_START =>
                        inicia_Input_r <= '0';
                        enable_led_r <= '0';
                        contador_inputs <= 0;
                        resposta_packed <= (others => '0');
                        estado_input <= CAPTURANDO;
                        inicia_Input_r <= '1';
                        enable_led_r <= '1';

                    when CAPTURANDO =>
                        inicia_Input_r <= '1';
                        enable_led_r <= '1';

                        -- Detecta borda de subida no sinal ativado
                        if ativado /= "000" and ativado_prev = "000" then
                            base_idx := contador_inputs * 3;
                            resposta_packed(base_idx + 2 downto base_idx) <= ativado;

                            -- incrementa contador
                            if contador_inputs < 6 then
                                contador_inputs <= contador_inputs + 1;
                            else
                                contador_inputs <= 7;
                                estado_input <= COMPLETO;
                                inicia_Input_r <= '0';
                                input_completo_r <= '1';  -- AVISA: Input completo!
                            end if;
                        end if;

                    when COMPLETO =>
                        inicia_Input_r <= '0';
                        enable_led_r <= '1';
                        if contador_inputs = 7 then
                            -- Aguarda tempo configurável antes de limpar LEDs
                            if timer_clear < INPUT_CLEAR_DELAY_CONST then
                                timer_clear <= timer_clear + 1;
                            else
                                clear_leds_r <= '1';
                                estado_input <= AGUARDA_START;
                                timer_clear <= (others => '0');
                            end if;
                        end if;
                end case;
            else
                -- Fora da fase INPUT_PHASE
                inicia_Input_r <= '0';
                enable_led_r <= '0';
                timer_clear <= (others => '0');
                if system_state = WAITING_START then
                    estado_input <= AGUARDA_START;
                    resposta_packed <= (others => '0');
                    contador_inputs <= 0;
                end if;
            end if;
        end if;
    end process;

end RTL;  -- FIM CORRETO DO ARQUIVO