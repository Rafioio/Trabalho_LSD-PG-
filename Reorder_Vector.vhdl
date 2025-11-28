library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Reorder_Vector is
    port (
        clk           : in  std_logic;
        rst           : in  std_logic;
        enable        : in  std_logic;
        indice_vector : in  std_logic_vector(20 downto 0); -- 7 números de 3 bits
        random_vector : out std_logic_vector(20 downto 0);
        ready         : out std_logic
    );
end Reorder_Vector;

architecture rtl of Reorder_Vector is

    -- Base original
    constant BASE_ORIGINAL : std_logic_vector(20 downto 0) :=
        "001010011100101110111"; -- concatenação dos 7 números de 3 bits

    signal current_base : std_logic_vector(20 downto 0) := BASE_ORIGINAL;
    signal random_reg   : std_logic_vector(20 downto 0) := BASE_ORIGINAL;
    signal ready_reg    : std_logic := '0';

    signal next_base  : std_logic_vector(20 downto 0);
    signal next_ready : std_logic;

    -- variável auxiliar
    function get_3bits(vec : std_logic_vector(20 downto 0); i : integer) return std_logic_vector is
        variable res : std_logic_vector(2 downto 0);
    begin
        res := vec(3*i+2 downto 3*i);
        return res;
    end function;

    procedure set_3bits_var(
        variable vec : inout std_logic_vector(20 downto 0);
        i            : integer;
        val          : std_logic_vector(2 downto 0)
    ) is
    begin
        vec(3*i+2 downto 3*i) := val;
    end procedure;


begin

    -------------------------------------------------------
    -- Lógica combinacional
    -------------------------------------------------------
    combinational : process(current_base, enable, indice_vector)
        variable idx : integer;
        variable temp_base : std_logic_vector(20 downto 0);
    begin
        temp_base := current_base;
        next_ready <= '0';

        if enable = '1' then
            for i in 0 to 6 loop
                idx := to_integer(unsigned(get_3bits(indice_vector, i))) - 1;

                if idx >= 0 and idx <= 6 then
                    set_3bits_var(temp_base, i, get_3bits(current_base, idx));
                else
                    set_3bits_var(temp_base, i, "000");
                end if;
            end loop;

            next_ready <= '1';
        end if;

        next_base <= temp_base;
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
