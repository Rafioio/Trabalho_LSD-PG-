library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Sequence_design is
    port (
        clk        : in  std_logic;
        rst        : in  std_logic;
        start      : in  std_logic;
        ready_out  : out std_logic;
        leds_out   : out std_logic_vector(20 downto 0);
        reorder_done  : out std_logic
    );
end Sequence_design;

architecture rtl of Sequence_design is

    ------------------------------------------------------------------
    -- INTERNAL SIGNALS
    ------------------------------------------------------------------

    -- Seed
    signal seed            : std_logic_vector(2 downto 0);

    -- Controller signals
    signal fsm_off         : std_logic;
    signal load_seed       : std_logic;
    signal enable_lfsr     : std_logic;

    -- LFSR output (21 bits por posição)
    signal indice_vector   : std_logic_vector(20 downto 0);
    signal indice_ready    : std_logic;

    -- Reordered vector (21 bits por posição)
    signal random_vector   : std_logic_vector(20 downto 0);
    signal reorder_ready   : std_logic;

begin

    ------------------------------------------------------------------
    -- CONTROLLER
    ------------------------------------------------------------------
    controller_inst : entity work.Controller
        port map (
            clk           => clk,
            rst           => rst,
            start         => start,
            indice_ready  => indice_ready,
            reorder_ready => reorder_ready,
            fsm_off       => fsm_off,
            load_seed     => load_seed,
            enable_lfsr   => enable_lfsr,
            global_ready  => ready_out
        );

    ------------------------------------------------------------------
    -- SEED GENERATOR
    ------------------------------------------------------------------
    seed_gen_inst : entity work.Seed_generator
        port map (
            clk     => clk,
            rst     => rst,
            start   => start,
            fsm_off => fsm_off,
            seed    => seed
        );

    ------------------------------------------------------------------
    -- LFSR 3 BITS
    ------------------------------------------------------------------
    lfsr_inst : entity work.LFSR_3bits
        port map (
            clk                 => clk,
            rst                 => rst,
            enable_lfsr         => enable_lfsr,
            load_seed           => load_seed,
            seed                => seed,
            indice_vector       => indice_vector,
            indice_vector_ready => indice_ready
        );

    ------------------------------------------------------------------
    -- REORDER VECTOR
    ------------------------------------------------------------------
    reorder_inst : entity work.Reorder_Vector
        port map (
            clk           => clk,
            rst           => rst,
            enable        => indice_ready,
            indice_vector => indice_vector,
            random_vector => random_vector,
            ready         => reorder_ready
        );

    ------------------------------------------------------------------
    -- FINAL OUTPUTS
    ------------------------------------------------------------------
    leds_out <= random_vector;
    reorder_done <= reorder_ready;

end rtl;