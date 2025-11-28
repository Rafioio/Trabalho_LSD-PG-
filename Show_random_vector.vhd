library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Show_random_vector is
    generic (
        DELAY_CYCLES : integer := 30;  -- Tempo que cada LED fica aceso
        BLINK_CYCLES : integer := 10   -- Ciclos de piscada inicial
    );
    port (
        clk           : in  std_logic;                
        rst           : in  std_logic;                
        start_show    : in  std_logic;                
        random_vector : in  std_logic_vector(20 downto 0); -- 7 números de 3 bits
        led_sel       : out std_logic_vector(6 downto 0);  -- 7 LEDs
        done          : out std_logic                 
    );
end Show_random_vector;

architecture rtl of Show_random_vector is

    type state_type is (IDLE, BLINK_ALL, SHOW_LED, CLEAR_ALL, DONE_STATE);
    signal state : state_type := IDLE;

    signal index   : integer range 0 to 6 := 0;  
    signal counter : integer range 0 to DELAY_CYCLES := 0;  

    -- Função para extrair 3 bits de cada posição do vetor de 21 bits
    function get_3bits(vec : std_logic_vector(20 downto 0); i : integer) return std_logic_vector is
        variable res : std_logic_vector(2 downto 0);
    begin
        res := vec(3*i+2 downto 3*i);
        return res;
    end function;

begin

    process(clk, rst)
        variable led_idx : integer;
    begin
        if rst = '1' then
            state    <= IDLE;
            index    <= 0;
            counter  <= 0;
            led_sel  <= (others => '0');  
            done     <= '0';

        elsif rising_edge(clk) then

            case state is

                when IDLE =>
                    done    <= '0';
                    led_sel <= (others => '0');  
                    index   <= 0;
                    counter <= 0;

                    if start_show = '1' then
                        state <= BLINK_ALL;  -- vai piscar todos os LEDs
                    end if;

                -- Pisca todos os LEDs antes da sequência
                when BLINK_ALL =>
                    led_sel <= (others => '1');
                    if counter = BLINK_CYCLES then
                        counter <= 0;
                        led_sel <= (others => '0');
                        state <= SHOW_LED;
                        index <= 0;
                    else
                        counter <= counter + 1;
                    end if;

                -- Mostra cada LED na ordem do vetor
                when SHOW_LED =>
                    led_sel <= (others => '0');  

                    led_idx := to_integer(unsigned(get_3bits(random_vector, index))) - 1;
                    if led_idx >= 0 and led_idx <= 6 then
                        led_sel(led_idx) <= '1';
                    end if;

                    if counter = DELAY_CYCLES then
                        counter <= 0;
                        if index = 6 then
                            state <= CLEAR_ALL;
                        else
                            index <= index + 1;
                        end if;
                    else
                        counter <= counter + 1;
                    end if;

                -- Apaga todos os LEDs no final
                when CLEAR_ALL =>
                    led_sel <= (others => '0');
                    state   <= DONE_STATE;

                -- Sinaliza que a sequência terminou
                when DONE_STATE =>
                    done  <= '1';
                    state <= IDLE;

            end case;
        end if;
    end process;

end rtl;
