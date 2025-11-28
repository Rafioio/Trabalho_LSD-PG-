library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LFSR_3bits is
    port (
        clk                 : in  std_logic;
        rst                 : in  std_logic;
        enable_lfsr         : in  std_logic;
        load_seed           : in  std_logic;
        seed                : in  std_logic_vector(2 downto 0);
        indice_vector       : out std_logic_vector(20 downto 0);
        indice_vector_ready : out std_logic
    );
end LFSR_3bits;

architecture rtl of LFSR_3bits is

    signal reg         : std_logic_vector(2 downto 0) := "001";
    signal results     : std_logic_vector(20 downto 0) := (others => '0');
    signal count       : integer range 0 to 7 := 0;
    signal running     : std_logic := '0';
    signal prev_enable : std_logic := '0';

begin

process(clk, rst)
    variable newbit : std_logic;
begin
    if rst = '1' then
        reg <= "001";
        results <= (others => '0');
        count <= 0;
        running <= '0';
        prev_enable <= '0';
        indice_vector_ready <= '0';

    elsif rising_edge(clk) then
        prev_enable <= enable_lfsr;
        indice_vector_ready <= '0';

        --------------------------------------------------------------------
        -- CARREGAR SEED SEMPRE QUE load_seed = 1
        --------------------------------------------------------------------
        if load_seed = '1' then
            if seed /= "000" then
                reg <= seed;
            else
                reg <= "001";
            end if;
        end if;

        --------------------------------------------------------------------
        -- DETECTA BORDA DE SUBIDA DO ENABLE
        --------------------------------------------------------------------
        if enable_lfsr = '1' and prev_enable = '0' then
            running <= '1';
            count <= 0;
            results <= (others => '0');
            -- Coloca a seed atual no início
            results(2 downto 0) <= reg;
        end if;

        --------------------------------------------------------------------
        -- LFSR RODANDO
        --------------------------------------------------------------------
        if running = '1' then
            if count < 6 then  -- Precisamos de 7 valores (0-6)
                newbit := reg(2) xor reg(0);
                reg <= newbit & reg(2 downto 1);
                
                -- Armazena o próximo valor
                results(3*(count+1)+2 downto 3*(count+1)) <= newbit & reg(2 downto 1);
                count <= count + 1;
            else
                running <= '0';
                indice_vector_ready <= '1';
            end if;
        end if;
    end if;
end process;

indice_vector <= results;

end rtl;