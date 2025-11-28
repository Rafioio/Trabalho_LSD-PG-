library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Input is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        inicia_Input : in STD_LOGIC;
        sw : in STD_LOGIC_VECTOR(6 downto 0);
        ativado : out STD_LOGIC_VECTOR(2 downto 0)
    );
end Input;

architecture RTL of Input is

    --------------------------------------------------------------------
    -- Debounce parameters
    --------------------------------------------------------------------
    constant DEBOUNCE_MAX : unsigned(17 downto 0) := to_unsigned(250000, 18);
        -- 250k ciclos @ 50MHz → 5ms

    -- Debounce registers
    type debounce_array is array (6 downto 0) of unsigned(17 downto 0);
    signal debounce_cnt : debounce_array := (others => (others => '0'));

    signal sw_sync1 : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');
    signal sw_sync2 : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');
    signal sw_clean : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');

    --------------------------------------------------------------------
    -- Rising-edge detection
    --------------------------------------------------------------------
    signal sw_prev_clean : STD_LOGIC_VECTOR(6 downto 0) := (others => '0');

    --------------------------------------------------------------------
    -- Output
    --------------------------------------------------------------------
    signal ativado_r : STD_LOGIC_VECTOR(2 downto 0);

begin
    ativado <= ativado_r;

    --------------------------------------------------------------------
    -- Debounce process
    --------------------------------------------------------------------
    process(clk, reset)
        variable new_code : STD_LOGIC_VECTOR(2 downto 0);
    begin
        if reset = '1' then
            sw_sync1      <= (others => '0');
            sw_sync2      <= (others => '0');
            sw_clean      <= (others => '0');
            sw_prev_clean <= (others => '0');
            debounce_cnt  <= (others => (others => '0'));
            ativado_r     <= "000";

        elsif rising_edge(clk) then

            ------------------------------------------------------------
            -- 1) Sincronização para evitar metastabilidade
            ------------------------------------------------------------
            sw_sync1 <= sw;
            sw_sync2 <= sw_sync1;

            ------------------------------------------------------------
            -- 2) Debounce para cada switch
            ------------------------------------------------------------
            for i in 0 to 6 loop
                if sw_sync2(i) /= sw_clean(i) then
                    -- switch mudou → reset no contador
                    debounce_cnt(i) <= (others => '0');
                else
                    -- switch está igual → contador aumenta
                    if debounce_cnt(i) < DEBOUNCE_MAX then
                        debounce_cnt(i) <= debounce_cnt(i) + 1;
                    end if;
                end if;

                -- Quando contador estoura → aceita novo valor
                if debounce_cnt(i) = DEBOUNCE_MAX then
                    sw_clean(i) <= sw_sync2(i);
                end if;
            end loop;

            ------------------------------------------------------------
            -- 3) Detectar borda de subida
            ------------------------------------------------------------
            ativado_r <= "000";   -- default

            if inicia_Input = '1' then

                new_code := "000";

                for idx in 0 to 6 loop
                    if (sw_clean(idx) = '1') and (sw_prev_clean(idx) = '0') then
                        case idx is
                            when 0 => new_code := "001";
                            when 1 => new_code := "010";
                            when 2 => new_code := "011";
                            when 3 => new_code := "100";
                            when 4 => new_code := "101";
                            when 5 => new_code := "110";
                            when 6 => new_code := "111";
                            when others => new_code := "000";
                        end case;
                        exit;
                    end if;
                end loop;

                ativado_r <= new_code;

            else
                ativado_r <= "000";
            end if;

            ------------------------------------------------------------
            -- 4) Armazena estado anterior limpo
            ------------------------------------------------------------
            sw_prev_clean <= sw_clean;

        end if;
    end process;

end RTL;
