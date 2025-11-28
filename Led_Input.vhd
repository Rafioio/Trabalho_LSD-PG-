library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Led_Input is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        enable_led : in STD_LOGIC;
        clear_led : in STD_LOGIC;
        ativado : in STD_LOGIC_VECTOR(2 downto 0);
        leds_out : out STD_LOGIC_VECTOR(6 downto 0)
    );
end Led_Input;

architecture RTL of Led_Input is
    signal leds_reg : STD_LOGIC_VECTOR(6 downto 0);

begin
    leds_out <= leds_reg;

    process(clk, reset)
    begin
        if reset = '1' then
            leds_reg <= (others => '0');
        elsif rising_edge(clk) then
            if clear_led = '1' then
                leds_reg <= (others => '0');
            elsif enable_led = '1' then
                case ativado is
                    when "001" => leds_reg(0) <= '1';
                    when "010" => leds_reg(1) <= '1';
                    when "011" => leds_reg(2) <= '1';
                    when "100" => leds_reg(3) <= '1';
                    when "101" => leds_reg(4) <= '1';
                    when "110" => leds_reg(5) <= '1';
                    when "111" => leds_reg(6) <= '1';
                    when others => null;
                end case;
            end if;
        end if;
    end process;

end RTL;