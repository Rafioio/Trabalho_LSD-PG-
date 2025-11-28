library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Comparator is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        user_input : in STD_LOGIC_VECTOR(20 downto 0);
        input_completo : in STD_LOGIC;
        leds_out : out STD_LOGIC_VECTOR(6 downto 0);
        comparison_done : out STD_LOGIC;
        correct_sequence : in STD_LOGIC_VECTOR(20 downto 0);
        -- Sinais de tempo do Controller
        win_blink_time : in std_logic_vector(24 downto 0);
        lose_display_time : in std_logic_vector(24 downto 0)
    );
end Comparator;

architecture RTL of Comparator is
    
    type state_type is (IDLE, COMPARING, WIN, LOSE, FINISHED);
    signal current_state : state_type;
    
    signal timer : unsigned(24 downto 0);
    signal blink_counter : integer range 0 to 3 := 0;
    signal leds_reg : std_logic_vector(6 downto 0);
    signal comparison_done_reg : std_logic;

begin

    leds_out <= leds_reg;
    comparison_done <= comparison_done_reg;

    process(clk, reset)
    begin
        if reset = '1' then
            current_state <= IDLE;
            leds_reg <= (others => '0');
            timer <= (others => '0');
            blink_counter <= 0;
            comparison_done_reg <= '0';
            
        elsif rising_edge(clk) then
            case current_state is
                when IDLE =>
                    leds_reg <= (others => '0');
                    comparison_done_reg <= '0';  -- IMPORTANTE: Reset do sinal done
                    blink_counter <= 0;
                    timer <= (others => '0');
                    
                    -- Só compara quando Controller avisa que input está completo
                    if input_completo = '1' then
                        current_state <= COMPARING;
                    end if;
                    
                when COMPARING =>
                    -- Compara a sequência do usuário com a correta
                    if user_input = correct_sequence then
                        current_state <= WIN;
                        timer <= (others => '0');
                        blink_counter <= 0;
                        leds_reg <= "1111111";
                    else
                        current_state <= LOSE;
                        timer <= (others => '0');
                        leds_reg <= "1010101";
                    end if;
                    
                when WIN =>
                    -- Efeito de piscar
                    if timer < unsigned(win_blink_time) then
                        timer <= timer + 1;
                        leds_reg <= "1111111";
                    elsif timer < (unsigned(win_blink_time) * 2) then
                        timer <= timer + 1;
                        leds_reg <= "0000000";
                    else
                        timer <= (others => '0');
                        blink_counter <= blink_counter + 1;
                        
                        if blink_counter >= 3 then
                            current_state <= FINISHED;
                            leds_reg <= "0000000";
                        end if;
                    end if;
                    
                when LOSE =>
                    -- Mostra padrão 1010101
                    leds_reg <= "1010101";
                    
                    if timer < unsigned(lose_display_time) then
                        timer <= timer + 1;
                    else
                        current_state <= FINISHED;
                        leds_reg <= "0000000";
                    end if;
                    
                when FINISHED =>
                    comparison_done_reg <= '1';  -- AVISA que terminou
                    leds_reg <= "0000000";
                    
                    -- CORREÇÃO CRÍTICA: Permanece aqui apenas um ciclo
                    -- e volta para IDLE automaticamente
                    current_state <= IDLE;
                    
            end case;
        end if;
    end process;

end RTL;
