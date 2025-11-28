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

    function slv_to_string(slv: std_logic_vector) return string is
        variable result : string(1 to slv'length);
    begin
        for i in slv'range loop
            case slv(i) is
                when '0' => result(i - slv'low + 1) := '0';
                when '1' => result(i - slv'low + 1) := '1';
                when 'U' => result(i - slv'low + 1) := 'U';
                when 'X' => result(i - slv'low + 1) := 'X';
                when 'Z' => result(i - slv'low + 1) := 'Z';
                when others => result(i - slv'low + 1) := '?';
            end case;
        end loop;
        return result;
    end function;

    signal reg         : std_logic_vector(2 downto 0) := "001";
    signal results     : std_logic_vector(20 downto 0) := (others => '0');
    signal count       : integer range 0 to 6 := 0;
    signal running     : std_logic := '0';
    signal prev_enable : std_logic := '0';


begin

process(clk, rst)
    variable temp   : std_logic_vector(2 downto 0);
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

            -- ZERA O RESULTADO ANTES DE COMEÇAR DE NOVO
            results <= (others => '0');

            -- COLOCA A SEED ATUAL NO INÍCIO
            results(2 downto 0) <= reg;
        end if;

        --------------------------------------------------------------------
        -- LFSR RODANDO
        --------------------------------------------------------------------
        if running = '1' and load_seed = '0' then
            newbit := reg(2) xor reg(1);
            temp := reg(1 downto 0) & newbit;
            reg <= temp;

            if count < 6 then
                results(3*(count+1)+2 downto 3*(count+1)) <= temp;
                count <= count + 1;
            else
                running <= '0';
                indice_vector_ready <= '1';
                report "indice_vector: " & slv_to_string(results);
            end if;
        end if;
    end if;
end process;

indice_vector <= results;

end rtl;
