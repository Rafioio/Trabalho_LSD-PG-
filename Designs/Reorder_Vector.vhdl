library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Types.all;

entity Reorder_Vector is
    Port (
        clk           : in  std_logic;
        rst           : in  std_logic;
        enable        : in  std_logic;
        indice_vector : in  array_3X7bits;
        random_vector : out array_3X7bits;
        ready         : out std_logic
    );
end Reorder_Vector;

architecture Behavioral of Reorder_Vector is
    
    constant BASE_ORIGINAL : array_3X7bits :=
        ("001", "010", "011", "100", "101", "110", "111");

    signal current_base : array_3X7bits := BASE_ORIGINAL;
    signal ready_int    : std_logic := '0';

begin

    process(clk)
        variable new_base : array_3X7bits;
        variable index    : integer;
    begin
        if rising_edge(clk) then
    
            if rst = '1' then
                current_base <= BASE_ORIGINAL;
                ready_int    <= '0';

          
            else
                ready_int <= '0';

        
                if enable = '1' then
                end if;

                if enable = '1' then
                    
                
                    for i in 0 to 6 loop
                        index := to_integer(unsigned(indice_vector(i))) - 1;

                        if index >= 0 and index <= 6 then
                            new_base(i) := current_base(index);
                        else
                            new_base(i) := "000";
                        end if;
                    end loop;

                    random_vector <= new_base;
                    ready_int     <= '1';

                    current_base <= new_base;

                end if;
            end if;
        end if;
    end process;

    ready <= ready_int;

end Behavioral;