library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Types.all;

entity Sequence_design is
    Port (
        clk      : in  std_logic;
        rst      : in  std_logic;
        start    : in  std_logic;
        base_out : out array_3X7bits;
        ready_out : out std_logic
    );
end Sequence_design;

architecture wiring of Sequence_design is

    signal seed              : std_logic_vector(2 downto 0);
    signal fsm_off         : std_logic := '0';
    signal load_seed         : std_logic := '0';
    signal enable_lfsr       : std_logic := '0';
    signal indice_vector     : array_3X7bits;
    signal indice_ready      : std_logic;
    signal random_vector     : array_3X7bits;
    signal reorder_ready     : std_logic;
    
    -- Sinal interno para o fsm_off do Seed_generator
    signal seed_gen_save     : std_logic := '0';

begin

    u_controller: entity work.Controller
        port map (
            clk           => clk,
            rst           => rst,
            start         => start,
            indice_ready  => indice_ready,
            reorder_ready => reorder_ready,
            fsm_off     => fsm_off,
            load_seed     => load_seed,
            enable_lfsr   => enable_lfsr,
            global_ready  => ready_out
        );

    u_seed: entity work.Seed_generator
        port map (
            clk        => clk,
            rst        => rst,
            start      => start,       -- Mantém interface original
            fsm_off  => fsm_off,   -- Usa o fsm_off do controller
            seed       => seed
        );


    u_lfsr: entity work.LFSR_3bits
        port map (
            clk                 => clk,
            rst                 => rst,
            enable_lfsr         => enable_lfsr,
            load_seed           => load_seed,
            seed                => seed,
            indice_vector       => indice_vector,
            indice_vector_ready => indice_ready
        );

    u_reorder: entity work.Reorder_Vector
        port map (
            clk           => clk,
            rst           => rst,
            enable        => indice_ready,
            indice_vector => indice_vector,
            random_vector => random_vector,
            ready         => reorder_ready
        );

    base_out <= random_vector;

end wiring;