-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/26/2025 21:55:50"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TopLevel IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END TopLevel;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF TopLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \u_system|Selector16~0_combout\ : std_logic;
SIGNAL \u_system|Add1~0_combout\ : std_logic;
SIGNAL \u_system|Selector15~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \u_system|index~0_combout\ : std_logic;
SIGNAL \u_system|Selector10~0_combout\ : std_logic;
SIGNAL \u_system|Selector8~1_combout\ : std_logic;
SIGNAL \u_system|Selector9~0_combout\ : std_logic;
SIGNAL \u_system|Selector9~1_combout\ : std_logic;
SIGNAL \u_system|Add0~0_combout\ : std_logic;
SIGNAL \u_system|Selector8~0_combout\ : std_logic;
SIGNAL \u_system|Selector8~2_combout\ : std_logic;
SIGNAL \u_system|Decoder0~0_combout\ : std_logic;
SIGNAL \u_system|Selector17~0_combout\ : std_logic;
SIGNAL \u_system|Selector16~1_combout\ : std_logic;
SIGNAL \u_system|state.IDLE~0_combout\ : std_logic;
SIGNAL \u_system|state.IDLE~q\ : std_logic;
SIGNAL \u_system|Selector17~1_combout\ : std_logic;
SIGNAL \u_system|state.SHOW_LED~q\ : std_logic;
SIGNAL \u_system|Add1~2_combout\ : std_logic;
SIGNAL \u_system|Add1~1\ : std_logic;
SIGNAL \u_system|Add1~3_combout\ : std_logic;
SIGNAL \u_system|Selector14~0_combout\ : std_logic;
SIGNAL \u_system|Add1~4\ : std_logic;
SIGNAL \u_system|Add1~5_combout\ : std_logic;
SIGNAL \u_system|Selector13~0_combout\ : std_logic;
SIGNAL \u_system|Add1~6\ : std_logic;
SIGNAL \u_system|Add1~7_combout\ : std_logic;
SIGNAL \u_system|Selector12~0_combout\ : std_logic;
SIGNAL \u_system|Add1~8\ : std_logic;
SIGNAL \u_system|Add1~9_combout\ : std_logic;
SIGNAL \u_system|Selector11~0_combout\ : std_logic;
SIGNAL \u_system|Equal0~0_combout\ : std_logic;
SIGNAL \u_system|Selector18~0_combout\ : std_logic;
SIGNAL \u_system|state.CLEAR_ALL~q\ : std_logic;
SIGNAL \u_system|state.DONE_STATE~q\ : std_logic;
SIGNAL \u_system|Selector7~0_combout\ : std_logic;
SIGNAL \u_system|Selector7~1_combout\ : std_logic;
SIGNAL \u_system|Selector5~0_combout\ : std_logic;
SIGNAL \u_system|Selector4~0_combout\ : std_logic;
SIGNAL \u_system|Selector4~1_combout\ : std_logic;
SIGNAL \u_system|Selector3~0_combout\ : std_logic;
SIGNAL \u_system|Selector3~1_combout\ : std_logic;
SIGNAL \u_system|led_sel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_system|index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_system|counter\ : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_system|led_sel\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_system|led_sel\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_system|led_sel\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_system|led_sel\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LEDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LEDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLOCK_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G3
\CLOCK_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X45_Y50_N6
\u_system|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector16~0_combout\ = (\u_system|state.CLEAR_ALL~q\) # (\u_system|state.DONE_STATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_system|state.CLEAR_ALL~q\,
	datad => \u_system|state.DONE_STATE~q\,
	combout => \u_system|Selector16~0_combout\);

-- Location: LCCOMB_X45_Y50_N18
\u_system|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Add1~0_combout\ = \u_system|counter\(0) $ (VCC)
-- \u_system|Add1~1\ = CARRY(\u_system|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|counter\(0),
	datad => VCC,
	combout => \u_system|Add1~0_combout\,
	cout => \u_system|Add1~1\);

-- Location: LCCOMB_X45_Y50_N30
\u_system|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector15~0_combout\ = (\u_system|Selector16~0_combout\ & ((\u_system|counter\(0)) # ((\u_system|Add1~2_combout\ & \u_system|Add1~0_combout\)))) # (!\u_system|Selector16~0_combout\ & (\u_system|Add1~2_combout\ & ((\u_system|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|Selector16~0_combout\,
	datab => \u_system|Add1~2_combout\,
	datac => \u_system|counter\(0),
	datad => \u_system|Add1~0_combout\,
	combout => \u_system|Selector15~0_combout\);

-- Location: IOIBUF_X46_Y54_N29
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X45_Y50_N31
\u_system|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_system|Selector15~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_system|counter\(0));

-- Location: IOIBUF_X49_Y54_N29
\KEY[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X46_Y50_N6
\u_system|index~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|index~0_combout\ = (\u_system|counter\(0)) # ((\u_system|Decoder0~0_combout\) # (!\u_system|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_system|counter\(0),
	datac => \u_system|Decoder0~0_combout\,
	datad => \u_system|Equal0~0_combout\,
	combout => \u_system|index~0_combout\);

-- Location: LCCOMB_X46_Y50_N26
\u_system|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector10~0_combout\ = (\u_system|index\(0) & ((\u_system|Selector16~0_combout\) # ((\u_system|state.SHOW_LED~q\ & \u_system|index~0_combout\)))) # (!\u_system|index\(0) & (\u_system|state.SHOW_LED~q\ & ((!\u_system|index~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|state.SHOW_LED~q\,
	datab => \u_system|Selector16~0_combout\,
	datac => \u_system|index\(0),
	datad => \u_system|index~0_combout\,
	combout => \u_system|Selector10~0_combout\);

-- Location: FF_X46_Y50_N27
\u_system|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_system|Selector10~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_system|index\(0));

-- Location: LCCOMB_X46_Y50_N14
\u_system|Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector8~1_combout\ = (\u_system|state.SHOW_LED~q\ & (!\u_system|counter\(0) & (!\u_system|Decoder0~0_combout\ & \u_system|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|state.SHOW_LED~q\,
	datab => \u_system|counter\(0),
	datac => \u_system|Decoder0~0_combout\,
	datad => \u_system|Equal0~0_combout\,
	combout => \u_system|Selector8~1_combout\);

-- Location: LCCOMB_X46_Y50_N20
\u_system|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector9~0_combout\ = (\u_system|index\(1) & ((\u_system|Selector16~0_combout\) # ((\u_system|state.SHOW_LED~q\ & \u_system|index~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|state.SHOW_LED~q\,
	datab => \u_system|index\(1),
	datac => \u_system|Selector16~0_combout\,
	datad => \u_system|index~0_combout\,
	combout => \u_system|Selector9~0_combout\);

-- Location: LCCOMB_X46_Y50_N28
\u_system|Selector9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector9~1_combout\ = (\u_system|Selector9~0_combout\) # ((\u_system|Selector8~1_combout\ & (\u_system|index\(0) $ (\u_system|index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|index\(0),
	datab => \u_system|Selector8~1_combout\,
	datac => \u_system|index\(1),
	datad => \u_system|Selector9~0_combout\,
	combout => \u_system|Selector9~1_combout\);

-- Location: FF_X46_Y50_N29
\u_system|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_system|Selector9~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_system|index\(1));

-- Location: LCCOMB_X46_Y50_N22
\u_system|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Add0~0_combout\ = (\u_system|index\(1) & \u_system|index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_system|index\(1),
	datac => \u_system|index\(0),
	combout => \u_system|Add0~0_combout\);

-- Location: LCCOMB_X46_Y50_N16
\u_system|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector8~0_combout\ = (\u_system|index\(2) & ((\u_system|Selector16~0_combout\) # ((\u_system|state.SHOW_LED~q\ & \u_system|index~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|index\(2),
	datab => \u_system|state.SHOW_LED~q\,
	datac => \u_system|Selector16~0_combout\,
	datad => \u_system|index~0_combout\,
	combout => \u_system|Selector8~0_combout\);

-- Location: LCCOMB_X46_Y50_N12
\u_system|Selector8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector8~2_combout\ = (\u_system|Selector8~0_combout\) # ((\u_system|Selector8~1_combout\ & (\u_system|Add0~0_combout\ $ (\u_system|index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|Add0~0_combout\,
	datab => \u_system|Selector8~1_combout\,
	datac => \u_system|index\(2),
	datad => \u_system|Selector8~0_combout\,
	combout => \u_system|Selector8~2_combout\);

-- Location: FF_X46_Y50_N13
\u_system|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_system|Selector8~2_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_system|index\(2));

-- Location: LCCOMB_X46_Y50_N4
\u_system|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Decoder0~0_combout\ = (\u_system|index\(2) & (!\u_system|index\(0) & \u_system|index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|index\(2),
	datac => \u_system|index\(0),
	datad => \u_system|index\(1),
	combout => \u_system|Decoder0~0_combout\);

-- Location: LCCOMB_X46_Y50_N2
\u_system|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector17~0_combout\ = (\u_system|state.SHOW_LED~q\ & ((\u_system|counter\(0)) # ((!\u_system|Equal0~0_combout\) # (!\u_system|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|state.SHOW_LED~q\,
	datab => \u_system|counter\(0),
	datac => \u_system|Decoder0~0_combout\,
	datad => \u_system|Equal0~0_combout\,
	combout => \u_system|Selector17~0_combout\);

-- Location: LCCOMB_X46_Y50_N10
\u_system|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector16~1_combout\ = (!\u_system|Selector16~0_combout\ & ((\u_system|Selector17~0_combout\) # ((\KEY[1]~input_o\ & !\u_system|state.SHOW_LED~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \u_system|state.SHOW_LED~q\,
	datac => \u_system|Selector16~0_combout\,
	datad => \u_system|Selector17~0_combout\,
	combout => \u_system|Selector16~1_combout\);

-- Location: LCCOMB_X46_Y50_N8
\u_system|state.IDLE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|state.IDLE~0_combout\ = (\u_system|Selector16~1_combout\ & ((\u_system|state.IDLE~q\))) # (!\u_system|Selector16~1_combout\ & (!\u_system|state.DONE_STATE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|state.DONE_STATE~q\,
	datac => \u_system|state.IDLE~q\,
	datad => \u_system|Selector16~1_combout\,
	combout => \u_system|state.IDLE~0_combout\);

-- Location: FF_X46_Y50_N9
\u_system|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_system|state.IDLE~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_system|state.IDLE~q\);

-- Location: LCCOMB_X46_Y50_N0
\u_system|Selector17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector17~1_combout\ = (\u_system|Selector17~0_combout\) # ((!\KEY[1]~input_o\ & !\u_system|state.IDLE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datac => \u_system|state.IDLE~q\,
	datad => \u_system|Selector17~0_combout\,
	combout => \u_system|Selector17~1_combout\);

-- Location: FF_X46_Y50_N1
\u_system|state.SHOW_LED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_system|Selector17~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_system|state.SHOW_LED~q\);

-- Location: LCCOMB_X45_Y50_N8
\u_system|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Add1~2_combout\ = (\u_system|state.SHOW_LED~q\ & ((\u_system|counter\(0)) # (!\u_system|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|counter\(0),
	datab => \u_system|state.SHOW_LED~q\,
	datad => \u_system|Equal0~0_combout\,
	combout => \u_system|Add1~2_combout\);

-- Location: LCCOMB_X45_Y50_N20
\u_system|Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Add1~3_combout\ = (\u_system|counter\(1) & (!\u_system|Add1~1\)) # (!\u_system|counter\(1) & ((\u_system|Add1~1\) # (GND)))
-- \u_system|Add1~4\ = CARRY((!\u_system|Add1~1\) # (!\u_system|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_system|counter\(1),
	datad => VCC,
	cin => \u_system|Add1~1\,
	combout => \u_system|Add1~3_combout\,
	cout => \u_system|Add1~4\);

-- Location: LCCOMB_X45_Y50_N0
\u_system|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector14~0_combout\ = (\u_system|Selector16~0_combout\ & ((\u_system|counter\(1)) # ((\u_system|Add1~2_combout\ & \u_system|Add1~3_combout\)))) # (!\u_system|Selector16~0_combout\ & (\u_system|Add1~2_combout\ & ((\u_system|Add1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|Selector16~0_combout\,
	datab => \u_system|Add1~2_combout\,
	datac => \u_system|counter\(1),
	datad => \u_system|Add1~3_combout\,
	combout => \u_system|Selector14~0_combout\);

-- Location: FF_X45_Y50_N1
\u_system|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_system|Selector14~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_system|counter\(1));

-- Location: LCCOMB_X45_Y50_N22
\u_system|Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Add1~5_combout\ = (\u_system|counter\(2) & (\u_system|Add1~4\ $ (GND))) # (!\u_system|counter\(2) & (!\u_system|Add1~4\ & VCC))
-- \u_system|Add1~6\ = CARRY((\u_system|counter\(2) & !\u_system|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|counter\(2),
	datad => VCC,
	cin => \u_system|Add1~4\,
	combout => \u_system|Add1~5_combout\,
	cout => \u_system|Add1~6\);

-- Location: LCCOMB_X45_Y50_N10
\u_system|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector13~0_combout\ = (\u_system|Selector16~0_combout\ & ((\u_system|counter\(2)) # ((\u_system|Add1~2_combout\ & \u_system|Add1~5_combout\)))) # (!\u_system|Selector16~0_combout\ & (\u_system|Add1~2_combout\ & ((\u_system|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|Selector16~0_combout\,
	datab => \u_system|Add1~2_combout\,
	datac => \u_system|counter\(2),
	datad => \u_system|Add1~5_combout\,
	combout => \u_system|Selector13~0_combout\);

-- Location: FF_X45_Y50_N11
\u_system|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_system|Selector13~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_system|counter\(2));

-- Location: LCCOMB_X45_Y50_N24
\u_system|Add1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Add1~7_combout\ = (\u_system|counter\(3) & (!\u_system|Add1~6\)) # (!\u_system|counter\(3) & ((\u_system|Add1~6\) # (GND)))
-- \u_system|Add1~8\ = CARRY((!\u_system|Add1~6\) # (!\u_system|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_system|counter\(3),
	datad => VCC,
	cin => \u_system|Add1~6\,
	combout => \u_system|Add1~7_combout\,
	cout => \u_system|Add1~8\);

-- Location: LCCOMB_X45_Y50_N2
\u_system|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector12~0_combout\ = (\u_system|Selector16~0_combout\ & ((\u_system|counter\(3)) # ((\u_system|Add1~2_combout\ & \u_system|Add1~7_combout\)))) # (!\u_system|Selector16~0_combout\ & (\u_system|Add1~2_combout\ & ((\u_system|Add1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|Selector16~0_combout\,
	datab => \u_system|Add1~2_combout\,
	datac => \u_system|counter\(3),
	datad => \u_system|Add1~7_combout\,
	combout => \u_system|Selector12~0_combout\);

-- Location: FF_X45_Y50_N3
\u_system|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_system|Selector12~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_system|counter\(3));

-- Location: LCCOMB_X45_Y50_N26
\u_system|Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Add1~9_combout\ = \u_system|Add1~8\ $ (!\u_system|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_system|counter\(4),
	cin => \u_system|Add1~8\,
	combout => \u_system|Add1~9_combout\);

-- Location: LCCOMB_X45_Y50_N12
\u_system|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector11~0_combout\ = (\u_system|Selector16~0_combout\ & ((\u_system|counter\(4)) # ((\u_system|Add1~2_combout\ & \u_system|Add1~9_combout\)))) # (!\u_system|Selector16~0_combout\ & (\u_system|Add1~2_combout\ & ((\u_system|Add1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|Selector16~0_combout\,
	datab => \u_system|Add1~2_combout\,
	datac => \u_system|counter\(4),
	datad => \u_system|Add1~9_combout\,
	combout => \u_system|Selector11~0_combout\);

-- Location: FF_X45_Y50_N13
\u_system|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_system|Selector11~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_system|counter\(4));

-- Location: LCCOMB_X45_Y50_N14
\u_system|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Equal0~0_combout\ = (\u_system|counter\(4) & (\u_system|counter\(3) & (\u_system|counter\(2) & \u_system|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|counter\(4),
	datab => \u_system|counter\(3),
	datac => \u_system|counter\(2),
	datad => \u_system|counter\(1),
	combout => \u_system|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y50_N4
\u_system|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector18~0_combout\ = (\u_system|Equal0~0_combout\ & (!\u_system|counter\(0) & (\u_system|state.SHOW_LED~q\ & \u_system|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|Equal0~0_combout\,
	datab => \u_system|counter\(0),
	datac => \u_system|state.SHOW_LED~q\,
	datad => \u_system|Decoder0~0_combout\,
	combout => \u_system|Selector18~0_combout\);

-- Location: FF_X45_Y50_N5
\u_system|state.CLEAR_ALL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_system|Selector18~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_system|state.CLEAR_ALL~q\);

-- Location: FF_X45_Y50_N9
\u_system|state.DONE_STATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_system|state.CLEAR_ALL~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_system|state.DONE_STATE~q\);

-- Location: LCCOMB_X46_Y50_N30
\u_system|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector7~0_combout\ = (!\u_system|index\(0) & (\u_system|state.SHOW_LED~q\ & !\u_system|index\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|index\(0),
	datab => \u_system|state.SHOW_LED~q\,
	datad => \u_system|index\(2),
	combout => \u_system|Selector7~0_combout\);

-- Location: LCCOMB_X46_Y50_N24
\u_system|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector7~1_combout\ = (\u_system|state.DONE_STATE~q\ & ((\u_system|led_sel\(0)) # ((!\u_system|index\(1) & \u_system|Selector7~0_combout\)))) # (!\u_system|state.DONE_STATE~q\ & (!\u_system|index\(1) & ((\u_system|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|state.DONE_STATE~q\,
	datab => \u_system|index\(1),
	datac => \u_system|led_sel\(0),
	datad => \u_system|Selector7~0_combout\,
	combout => \u_system|Selector7~1_combout\);

-- Location: FF_X46_Y50_N25
\u_system|led_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_system|Selector7~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_system|led_sel\(0));

-- Location: LCCOMB_X46_Y50_N18
\u_system|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector5~0_combout\ = (\u_system|state.DONE_STATE~q\ & ((\u_system|led_sel\(2)) # ((\u_system|index\(1) & \u_system|Selector7~0_combout\)))) # (!\u_system|state.DONE_STATE~q\ & (\u_system|index\(1) & ((\u_system|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|state.DONE_STATE~q\,
	datab => \u_system|index\(1),
	datac => \u_system|led_sel\(2),
	datad => \u_system|Selector7~0_combout\,
	combout => \u_system|Selector5~0_combout\);

-- Location: FF_X46_Y50_N19
\u_system|led_sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_system|Selector5~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_system|led_sel\(2));

-- Location: LCCOMB_X44_Y50_N4
\u_system|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector4~0_combout\ = (\u_system|led_sel\(3) & \u_system|state.DONE_STATE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_system|led_sel\(3),
	datac => \u_system|state.DONE_STATE~q\,
	combout => \u_system|Selector4~0_combout\);

-- Location: LCCOMB_X45_Y50_N28
\u_system|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector4~1_combout\ = (\u_system|Selector4~0_combout\) # ((!\u_system|index\(2) & (\u_system|state.SHOW_LED~q\ & \u_system|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|index\(2),
	datab => \u_system|state.SHOW_LED~q\,
	datac => \u_system|Selector4~0_combout\,
	datad => \u_system|Add0~0_combout\,
	combout => \u_system|Selector4~1_combout\);

-- Location: FF_X45_Y50_N29
\u_system|led_sel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_system|Selector4~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_system|led_sel\(3));

-- Location: LCCOMB_X47_Y50_N8
\u_system|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector3~0_combout\ = (\u_system|state.SHOW_LED~q\ & (!\u_system|index\(1) & (!\u_system|index\(0) & \u_system|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|state.SHOW_LED~q\,
	datab => \u_system|index\(1),
	datac => \u_system|index\(0),
	datad => \u_system|index\(2),
	combout => \u_system|Selector3~0_combout\);

-- Location: LCCOMB_X45_Y50_N16
\u_system|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_system|Selector3~1_combout\ = (\u_system|Selector3~0_combout\) # ((\u_system|state.DONE_STATE~q\ & \u_system|led_sel\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_system|state.DONE_STATE~q\,
	datac => \u_system|led_sel\(4),
	datad => \u_system|Selector3~0_combout\,
	combout => \u_system|Selector3~1_combout\);

-- Location: FF_X45_Y50_N17
\u_system|led_sel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_system|Selector3~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_system|led_sel\(4));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;
END structure;


