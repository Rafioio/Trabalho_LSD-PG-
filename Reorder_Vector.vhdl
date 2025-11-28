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

    -- Base original: 7 números de 3 bits (1,2,3,4,5,6,7 em binário)
    constant BASE_ORIGINAL : std_logic_vector(20 downto 0) := 
        "001" & "010" & "011" & "100" & "101" & "110" & "111";

    signal reordered_data : std_logic_vector(20 downto 0) := BASE_ORIGINAL;
    signal ready_reg      : std_logic := '0';

    -- Função auxiliar para extrair 3 bits
    function get_3bits(vec : std_logic_vector(20 downto 0); i : integer) return std_logic_vector is
    begin
        return vec(3*i+2 downto 3*i);
    end function;

begin

    -------------------------------------------------------
    -- Processo de reordenação
    -------------------------------------------------------
    process(clk, rst)
        variable idx : integer;
        variable temp_result : std_logic_vector(20 downto 0);
    begin
        if rst = '1' then
            reordered_data <= BASE_ORIGINAL;
            ready_reg <= '0';
        elsif rising_edge(clk) then
            ready_reg <= '0';
            
            if enable = '1' then
                -- Reordena base original usando os índices
                for i in 0 to 6 loop
                    -- Extrai o índice (3 bits) e converte para integer
                    idx := to_integer(unsigned(get_3bits(indice_vector, i)));
                    
                    -- Ajusta índice para range 0-6
                    if idx >= 1 and idx <= 7 then
                        idx := idx - 1;
                    else
                        idx := 0; -- valor padrão em caso de índice inválido
                    end if;
                    
                    -- Copia o valor da base original na posição do índice
                    temp_result(3*i+2 downto 3*i) := get_3bits(BASE_ORIGINAL, idx);
                end loop;
                
                reordered_data <= temp_result;
                ready_reg <= '1';
            end if;
        end if;
    end process;

    random_vector <= reordered_data;
    ready <= ready_reg;

end rtl;