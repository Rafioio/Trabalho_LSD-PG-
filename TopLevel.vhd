library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TopLevel is
    Port (
        CLOCK_50 : in  STD_LOGIC;                      -- clock da DE10-Lite
        KEY      : in  STD_LOGIC_VECTOR(1 downto 0);   -- KEY[0] = Start, KEY[1] = Reset
        SW       : in  STD_LOGIC_VECTOR(6 downto 0);   -- SW[0..6]
        LEDR     : out STD_LOGIC_VECTOR(9 downto 0)    -- LEDR[0..6] usados, 7..9 apagados
    );
end TopLevel;

architecture RTL of TopLevel is

    -- Sinais internos (apenas para conexão)
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
    
    -- Sinais de tempo centralizados
    signal led_on_time_sig     : std_logic_vector(24 downto 0);
    signal pause_time_sig      : std_logic_vector(24 downto 0);
    signal win_blink_time_sig  : std_logic_vector(24 downto 0);
    signal lose_display_time_sig : std_logic_vector(24 downto 0);
    signal input_clear_delay_sig : std_logic_vector(19 downto 0);
    
    -- Sinal para LEDs finais (controlado pelo Controller)
    signal leds_finais_sig     : std_logic_vector(6 downto 0);

begin

    -------------------------------------
    -- Apenas Start e Reset agora
    -------------------------------------
    reset_sig <= not KEY(1);  -- Reset ativo baixo
    start_sig <= not KEY(0);  -- Start ativo baixo

    -------------------------------------
    -- LEDs controlados APENAS pelo Controller
    -------------------------------------
    LEDR(6 downto 0) <= leds_finais_sig;
    LEDR(9 downto 7) <= (others => '0');

    -------------------------------------
    -- Apenas conexões entre componentes
    -------------------------------------
    u_input: entity work.Input
        port map (
            clk => CLOCK_50,
            reset => reset_sig,
            inicia_Input => inicia_input_sig,
            sw => SW,
            ativado => ativado_sig
        );

    u_led_input: entity work.Led_Input
        port map (
            clk => CLOCK_50,
            reset => reset_sig,
            enable_led => enable_led_sig,
            clear_led => clear_leds_sig,
            ativado => ativado_sig,
            leds_out => leds_controller_sig
        );

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
            -- Sinais de tempo para outros módulos
            led_on_time => led_on_time_sig,
            pause_time => pause_time_sig,
            win_blink_time => win_blink_time_sig,
            lose_display_time => lose_display_time_sig,
            input_clear_delay => input_clear_delay_sig
        );

    u_comparator: entity work.Comparator
        port map (
            clk => CLOCK_50,
            reset => reset_sig,
            user_input => vetor_resultado_sig,
            input_completo => input_completo_sig,
            leds_out => comparator_leds_sig,
            comparison_done => comparison_done_sig,
            correct_sequence => correct_sequence_sig,
            -- Sinais de tempo do Controller
            win_blink_time => win_blink_time_sig,
            lose_display_time => lose_display_time_sig
        );
        
    u_show_sequence: entity work.Show_Sequence
        port map (
            clk => CLOCK_50,
            reset => reset_sig,
            start_show => start_show_sig,
            seq_data => correct_sequence_sig,
            leds_out => show_sequence_leds_sig,
            sequence_done => sequence_done_sig,
            -- Sinais de tempo do Controller
            led_on_time => led_on_time_sig,
            pause_time => pause_time_sig
        );

end RTL;