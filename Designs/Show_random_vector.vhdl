library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Types.all;

entity Show_random_vector is
    generic (
        DELAY_CYCLES : integer := 30   -- tempo que cada LED fica aceso
    );
    port (
        clk           : in  std_logic;
        rst           : in  std_logic;
        start_show    : in  std_logic;
        random_vector : in  array_3X7bits;
        led_sel       : out std_logic_vector(2 downto 0);
        done          : out std_logic
    );
end Show_random_vector;

architecture rtl of Show_random_vector is

    type state_type is (IDLE, SHOW_LED, CLEAR_ALL, DONE_STATE);
    signal state : state_type := IDLE;

    signal index : integer range 0 to 6 := 0;
    signal counter : integer range 0 to DELAY_CYCLES := 0;

begin

    process(clk, rst)
    begin
        if rst = '1' then
            state    <= IDLE;
            index    <= 0;
            counter  <= 0;
            led_sel  <= (others => '0');
            done     <= '0';

        elsif rising_edge(clk) then

            case state is

                -----------------------------
                -- IDLE: espera PULSO start --
                -----------------------------
                when IDLE =>
                    done    <= '0';
                    led_sel <= (others => '0');
                    index   <= 0;
                    counter <= 0;

                    if start_show = '1' then
                        state <= SHOW_LED;
                    end if;

                --------------------------------------------
                -- SHOW_LED: acende random_vector(index) por X --
                --------------------------------------------
                when SHOW_LED =>
                    led_sel <= random_vector(index);

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

                ---------------------------
                -- CLEAR_ALL: apaga tudo --
                ---------------------------
                when CLEAR_ALL =>
                    led_sel <= (others => '0');
                    state   <= DONE_STATE;

                ----------------------
                -- DONE_STATE: terminou!  --
                ----------------------
                when DONE_STATE =>
                    done <= '1';
                    -- Fica aqui até reset
                    null;

            end case;

        end if;
    end process;

end rtl;