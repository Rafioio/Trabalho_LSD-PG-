library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Types.all;

entity Reorder_Vector is
    port (
        clk           : in  std_logic;
        rst           : in  std_logic;
        enable        : in  std_logic;
        indice_vector : in  array_3X7bits;
        random_vector : out array_3X7bits;
        ready         : out std_logic
    );
end Reorder_Vector;

architecture rtl of Reorder_Vector is

    constant BASE_ORIGINAL : array_3X7bits :=
        ("001", "010", "011", "100", "101", "110", "111");

    signal current_base : array_3X7bits := BASE_ORIGINAL;
    signal random_reg   : array_3X7bits := BASE_ORIGINAL;
    signal ready_reg    : std_logic := '0';

    signal next_base  : array_3X7bits;
    signal next_ready : std_logic;

begin

    -------------------------------------------------------
    -- Lógica combinacional (sensibilidade explícita)
    -------------------------------------------------------
    combinational : process(current_base, enable, indice_vector)
        variable idx : integer;
    begin
        next_base  <= current_base;
        next_ready <= '0';

        if enable = '1' then
            for i in 0 to 6 loop
                idx := to_integer(unsigned(indice_vector(i))) - 1;

                if idx >= 0 and idx <= 6 then
                    next_base(i) <= current_base(idx);
                else
                    next_base(i) <= "000";
                end if;
            end loop;

            next_ready <= '1';
        end if;
    end process;

    -------------------------------------------------------
    -- Lógica sequencial
    -------------------------------------------------------
    sequential : process(clk)
    begin
        if rising_edge(clk) then

            if rst = '1' then
                current_base <= BASE_ORIGINAL;
                random_reg   <= BASE_ORIGINAL;
                ready_reg    <= '0';

            else
                current_base <= next_base;

                if enable = '1' then
                    random_reg <= next_base;
                end if;

                ready_reg <= next_ready;
            end if;
        end if;
    end process;

    random_vector <= random_reg;
    ready         <= ready_reg;

end rtl;
