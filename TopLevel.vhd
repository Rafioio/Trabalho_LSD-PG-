library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TopLevel is
    Port (
        CLOCK_50 : in  STD_LOGIC;
        KEY      : in  STD_LOGIC_VECTOR(1 downto 0);
        SW       : in  STD_LOGIC_VECTOR(6 downto 0);
        LEDR     : out STD_LOGIC_VECTOR(9 downto 0)
    );
end TopLevel;

architecture RTL of TopLevel is
    -- Sinais do Jogo
    signal reset_sig           : std_logic;
    signal start_sig           : std_logic;
    signal ativado_sig         : std_logic_vector(2 downto 0);
    signal inicia_input_sig    : std_logic;
    signal enable_led_sig      : std_logic;
    signal clear_leds_sig      : std_logic;
    signal vetor_resultado_sig : std_logic_vector(20 downto 0);
    signal leds_controller_sig : std_logic_vector(6 downto 0);
    signal comparator_leds_sig : std_logic_vector(6 downto 0);
    signal show_sequence_leds_sig : std_logic_vector(6 downto 0);
    signal comparison_done_sig : std_logic;
    signal sequence_done_sig   : std_logic;
    signal correct_sequence_sig : std_logic_vector(20 downto 0);
    signal input_completo_sig  : std_logic;
    signal start_show_sig      : std_logic;
    
    -- Sinais de tempo
    signal led_on_time_sig     : std_logic_vector(24 downto 0);
    signal pause_time_sig      : std_logic_vector(24 downto 0);
    signal win_blink_time_sig  : std_logic_vector(24 downto 0);
    signal lose_display_time_sig : std_logic_vector(24 downto 0);
    -- REMOVIDO: input_clear_delay_sig
    
    -- Sinal para LEDs finais
    signal leds_finais_sig     : std_logic_vector(6 downto 0);
    
    -- Sinais do Gerador Aleatório (conectados diretamente)
    signal generate_random_sig : std_logic;
    signal random_ready_sig    : std_logic;
    signal random_sequence_sig : std_logic_vector(20 downto 0);

begin
    reset_sig <= not KEY(1);
    start_sig <= not KEY(0);

    LEDR(6 downto 0) <= leds_finais_sig;
    LEDR(9 downto 7) <= (others => '0');

    -- Componentes do Jogo
    u_input: entity work.Input
        port map (clk => CLOCK_50, reset => reset_sig, inicia_Input => inicia_input_sig, sw => SW, ativado => ativado_sig);

    u_led_input: entity work.Led_Input
        port map (clk => CLOCK_50, reset => reset_sig, enable_led => enable_led_sig, clear_led => clear_leds_sig, ativado => ativado_sig, leds_out => leds_controller_sig);

    u_controller: entity work.Controller
        port map (
            clk => CLOCK_50, 
            reset => reset_sig, 
            start => start_sig, 
            sw_usuario => SW, 
            ativado => ativado_sig,
            inicia_Input => inicia_input_sig, 
            enable_led => enable_led_sig, 
            vetor_resultado => vetor_resultado_sig,
            clear_leds => clear_leds_sig, 
            sequence_done => sequence_done_sig, 
            comparison_done => comparison_done_sig,
            leds_controller => leds_controller_sig, 
            leds_comparator => comparator_leds_sig, 
            leds_show_sequence => show_sequence_leds_sig, 
            leds_finais => leds_finais_sig,
            correct_sequence => correct_sequence_sig, 
            input_completo => input_completo_sig, 
            start_show => start_show_sig,
            led_on_time => led_on_time_sig, 
            pause_time => pause_time_sig, 
            win_blink_time => win_blink_time_sig,
            lose_display_time => lose_display_time_sig, 
            input_clear_delay => open,  -- CORREÇÃO: Conectado para OPEN
            generate_random => generate_random_sig, 
            random_sequence => random_sequence_sig, 
            random_ready => random_ready_sig
        );

    u_comparator: entity work.Comparator
        port map (clk => CLOCK_50, reset => reset_sig, user_input => vetor_resultado_sig, input_completo => input_completo_sig,
                 leds_out => comparator_leds_sig, comparison_done => comparison_done_sig, correct_sequence => correct_sequence_sig,
                 win_blink_time => win_blink_time_sig, lose_display_time => lose_display_time_sig);
        
    u_show_sequence: entity work.Show_Sequence
        port map (clk => CLOCK_50, reset => reset_sig, start_show => start_show_sig, seq_data => correct_sequence_sig,
                 leds_out => show_sequence_leds_sig, sequence_done => sequence_done_sig,
                 led_on_time => led_on_time_sig, pause_time => pause_time_sig);
					  
    u_seed_generator: entity work.Seed_Generator
        port map (
            clk => CLOCK_50, rst => reset_sig, 
            start => generate_random_sig, fsm_off => '1', seed => open
        );

    u_lfsr: entity work.LFSR_3bits
        port map (
            clk => CLOCK_50, rst => reset_sig, 
            enable_lfsr => generate_random_sig, load_seed => generate_random_sig, 
            seed => "001", indice_vector => open, indice_vector_ready => open
        );

    u_reorder: entity work.Reorder_Vector
        port map (
            clk => CLOCK_50, rst => reset_sig, enable => generate_random_sig,
            indice_vector => (others => '0'), random_vector => random_sequence_sig, 
            ready => random_ready_sig
        );

end RTL;