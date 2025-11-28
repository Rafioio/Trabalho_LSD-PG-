library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Seed_generator is
  Port (
    clk        : in  std_logic;
    rst        : in  std_logic;
    start      : in  std_logic;  -- captura seed
    fsm_off    : in  std_logic;  -- avança LFSR
    seed       : out std_logic_vector(2 downto 0) 
  );
end Seed_generator;

architecture rtl of Seed_generator is
  signal lfsr_r     : std_logic_vector(2 downto 0) := "001";
  signal saved_seed : std_logic_vector(2 downto 0) := "001";
begin

  process(clk, rst)
    variable newbit : std_logic;
  begin
    if rst = '1' then
        lfsr_r     <= "001";
        saved_seed <= "001";
    elsif rising_edge(clk) then
        -- Avança LFSR somente quando fsm_off = '1'
        if fsm_off = '1' then
          newbit := lfsr_r(2) xor lfsr_r(0);
          lfsr_r <= newbit & lfsr_r(2 downto 1);
        end if;

        -- Captura seed quando start = '1'
        if start = '1' then
          if lfsr_r = "000" then
            saved_seed <= "110";
          else
            saved_seed <= lfsr_r;
          end if;
        end if;
    end if;
  end process;

  seed <= saved_seed;

end rtl;