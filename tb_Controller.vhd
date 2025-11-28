library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_Controller is
end tb_Controller;

architecture Behavioral of tb_Controller is

    -- Constants
    constant CLOCK_PERIOD : time := 20 ns; -- 50 MHz

    -- Component signals
    signal clk            : std_logic := '0';
    signal reset          : std_logic := '0';
    signal start          : std_logic := '0';
    signal sw_usuario     : std_logic_vector(6 downto 0) := (others => '0');
    signal ativado        : std_logic_vector(2 downto 0) := (others => '0');
    signal sw_out         : std_logic_vector(6 downto 0);
    signal inicia_Input   : std_logic;
    signal enable_led     : std_logic;
    signal vetor_resultado: std_logic_vector(20 downto 0);
    signal leds_out       : std_logic_vector(6 downto 0);
    signal clear_leds     : std_logic;
    signal sequence_done  : std_logic := '0';
    signal system_state   : std_logic_vector(1 downto 0);
    signal correct_sequence : std_logic_vector(20 downto 0);

    -- Test signals
    signal sim_finished : boolean := false;
    
begin

    -- Clock generation
    clk <= not clk after CLOCK_PERIOD/2 when not sim_finished else '0';

    -- Instantiate Controller
    uut: entity work.Controller
        port map (
            clk => clk,
            reset => reset,
            start => start,
            sw_usuario => sw_usuario,
            ativado => ativado,
            sw_out => sw_out,
            inicia_Input => inicia_Input,
            enable_led => enable_led,
            vetor_resultado => vetor_resultado,
            leds_out => leds_out,
            clear_leds => clear_leds,
            sequence_done => sequence_done,
            system_state => system_state,
            correct_sequence => correct_sequence
        );

    -- Test process
    test_process: process
    begin
        -- Reset system
        report "Applying reset...";
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        wait for 50 ns;

        -- Start the game
        report "Starting game...";
        start <= '1';
        wait for 100 ns;
        start <= '0';

        -- Wait for sequence to be shown
        wait for 500 ns;
        sequence_done <= '1';
        wait for 100 ns;
        sequence_done <= '0';

        -- Test sequence input
        report "Testing sequence input...";
        
        -- Input sequence: SW0 to SW6
        for i in 0 to 6 loop
            wait until rising_edge(clk);
            -- Simulate switch press
            sw_usuario <= (others => '0');
            sw_usuario(i) <= '1';
            ativado <= std_logic_vector(to_unsigned(i + 1, 3));
            
            wait for 100 ns;
            
            -- Release switch
            sw_usuario <= (others => '0');
            ativado <= "000";
            
            -- Wait between inputs
            wait for 200 ns;
        end loop;

        -- Wait for completion
        wait for 1000 ns;

        report "Simulation completed successfully!";
        sim_finished <= true;
        wait;
    end process test_process;

end Behavioral;