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

    -- Função auxiliar para extrair 3 bits
    function get_3bits(vec : std_logic_vector(20 downto 0); i : integer) return std_logic_vector is
    begin
        return vec(3*i+2 downto 3*i);
    end function;

    -- Procedimento auxiliar para definir 3 bits
    procedure set_3bits(
        signal vec : out std_logic_vector(20 downto 0);
        constant i : in integer;
        constant val : in std_logic_vector(2 downto 0)
    ) is
    begin
        vec(3*i+2 downto 3*i) <= val;
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
                -- Extrai o índice (3 bits) e converte para integer
                idx := to_integer(unsigned(get_3bits(indice_vector, i)));
                
                -- Ajusta o índice para começar de 0 (se necessário)
                -- Se os índices vão de 1-7, subtrai 1
                if idx > 0 then
                    idx := idx - 1;
                end if;
                
                -- Verifica se o índice está dentro do range válido
                if idx >= 0 and idx <= 6 then
                    temp_base(3*i+2 downto 3*i) := get_3bits(current_base, idx);
                else
                    temp_base(3*i+2 downto 3*i) := "000"; -- valor padrão em caso de erro
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
                ready_reg    <= next_ready;
                
                if enable = '1' then
                    random_reg <= next_base;
                end if;
            end if;
        end if;
    end process;

    random_vector <= random_reg;
    ready         <= ready_reg;

end rtl;