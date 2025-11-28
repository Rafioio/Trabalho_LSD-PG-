library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Show_Sequence is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        start_show : in STD_LOGIC;
        seq_data : in STD_LOGIC_VECTOR(20 downto 0);
        leds_out : out STD_LOGIC_VECTOR(6 downto 0);
        sequence_done : out STD_LOGIC;
        -- Sinais de tempo do Controller
        led_on_time : in std_logic_vector(24 downto 0);
        pause_time : in std_logic_vector(24 downto 0)
    );
end Show_Sequence;

architecture RTL of Show_Sequence is
    
    type state_type is (IDLE, SHOW_LED, PAUSE, FINISHED);
    signal current_state : state_type;
    
    signal timer : unsigned(24 downto 0);
    signal led_index : integer range 0 to 6;
    signal leds_reg : std_logic_vector(6 downto 0);
    signal sequence_done_reg : std_logic;

begin

    leds_out <= leds_reg;
    sequence_done <= sequence_done_reg;

    process(clk, reset)
        variable current_led_code : std_logic_vector(2 downto 0);
    begin
        if reset = '1' then
            current_state <= IDLE;
            leds_reg <= (others => '0');
            timer <= (others => '0');
            led_index <= 0;
            sequence_done_reg <= '0';
            
        elsif rising_edge(clk) then
            case current_state is
                when IDLE =>
                    leds_reg <= (others => '0');
                    led_index <= 0;
                    sequence_done_reg <= '0';
                    if start_show = '1' then
                        current_state <= SHOW_LED;
                        timer <= (others => '0');
                    end if;
                    
                when SHOW_LED =>
                    -- Extrai o código do LED atual (3 bits)
                    current_led_code := seq_data((led_index * 3) + 2 downto led_index * 3);
                    
                    -- Acende o LED correspondente
                    case current_led_code is
                        when "001" => leds_reg <= "0000001";
                        when "010" => leds_reg <= "0000010";
                        when "011" => leds_reg <= "0000100";
                        when "100" => leds_reg <= "0001000";
                        when "101" => leds_reg <= "0010000";
                        when "110" => leds_reg <= "0100000";
                        when "111" => leds_reg <= "1000000";
                        when others => leds_reg <= "0000000";
                    end case;
                    
                    -- Conta o tempo que o LED fica aceso (usando tempo do Controller)
                    if timer < unsigned(led_on_time) then
                        timer <= timer + 1;
                    else
                        timer <= (others => '0');
                        current_state <= PAUSE;
                        leds_reg <= (others => '0');  -- Apaga todos os LEDs
                    end if;
                    
                when PAUSE =>
                    -- Tempo entre LEDs (usando tempo do Controller)
                    if timer < unsigned(pause_time) then
                        timer <= timer + 1;
                    else
                        timer <= (others => '0');
                        if led_index < 6 then
                            led_index <= led_index + 1;
                            current_state <= SHOW_LED;
                        else
                            current_state <= FINISHED;
                        end if;
                    end if;
                    
                when FINISHED =>
                    sequence_done_reg <= '1';
                    leds_reg <= (others => '0');
                    -- CORREÇÃO: Volta para IDLE automaticamente
                    current_state <= IDLE;
                    
            end case;
        end if;
    end process;

end RTL;