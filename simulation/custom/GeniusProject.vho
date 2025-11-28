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

-- DATE "11/24/2025 20:47:47"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Custom VHDL only
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
	SW : IN std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END TopLevel;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(6 DOWNTO 0);
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \u_controller|estado.AGUARDA_START~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \u_controller|estado.AGUARDA_START~q\ : std_logic;
SIGNAL \u_controller|Selector17~0_combout\ : std_logic;
SIGNAL \u_controller|inicia_Input_r~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][0]~243_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \u_input|sw_sync1[0]~feeder_combout\ : std_logic;
SIGNAL \u_input|sw_sync2[0]~feeder_combout\ : std_logic;
SIGNAL \u_input|process_0~5_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][6]~256\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][7]~257_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][7]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][7]~258\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][8]~259_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][8]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][8]~260\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][9]~261_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][9]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][9]~262\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][10]~263_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][10]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][10]~264\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][11]~265_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][11]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][11]~266\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][12]~267_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][12]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][12]~268\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][13]~272_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][13]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][13]~273\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][14]~274_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][14]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][14]~275\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][15]~276_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][15]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][15]~277\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][16]~278_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][16]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][16]~279\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][17]~280_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][17]~q\ : std_logic;
SIGNAL \u_input|Equal0~2_combout\ : std_logic;
SIGNAL \u_input|Equal0~1_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][4]~269_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][4]~270_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][4]~271_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][0]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][0]~244\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][1]~245_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][1]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][1]~246\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][2]~247_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][2]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][2]~248\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][3]~249_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][3]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][3]~250\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][4]~251_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][4]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][4]~252\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][5]~253_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][5]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][5]~254\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][6]~255_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[0][6]~q\ : std_logic;
SIGNAL \u_input|Equal0~3_combout\ : std_logic;
SIGNAL \u_input|Equal0~4_combout\ : std_logic;
SIGNAL \u_input|Equal0~5_combout\ : std_logic;
SIGNAL \u_input|Equal0~0_combout\ : std_logic;
SIGNAL \u_input|sw_clean[0]~3_combout\ : std_logic;
SIGNAL \u_input|sw_prev_clean[0]~feeder_combout\ : std_logic;
SIGNAL \u_input|process_0~1_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][0]~165_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \u_input|sw_sync1[2]~feeder_combout\ : std_logic;
SIGNAL \u_input|sw_sync2[2]~feeder_combout\ : std_logic;
SIGNAL \u_input|process_0~3_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][12]~190\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][13]~194_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][13]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][13]~195\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][14]~196_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][14]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][14]~197\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][15]~198_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][15]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][15]~199\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][16]~200_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][16]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][16]~201\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][17]~202_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][17]~q\ : std_logic;
SIGNAL \u_input|Equal2~2_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][15]~191_combout\ : std_logic;
SIGNAL \u_input|Equal2~1_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][15]~192_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][15]~193_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][0]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][0]~166\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][1]~167_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][1]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][1]~168\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][2]~169_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][2]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][2]~170\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][3]~171_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][3]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][3]~172\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][4]~173_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][4]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][4]~174\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][5]~175_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][5]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][5]~176\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][6]~177_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][6]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][6]~178\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][7]~179_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][7]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][7]~180\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][8]~181_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][8]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][8]~182\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][9]~183_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][9]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][9]~184\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][10]~185_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][10]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][10]~186\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][11]~187_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][11]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][11]~188\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][12]~189_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[2][12]~q\ : std_logic;
SIGNAL \u_input|Equal2~0_combout\ : std_logic;
SIGNAL \u_input|Equal2~4_combout\ : std_logic;
SIGNAL \u_input|Equal2~3_combout\ : std_logic;
SIGNAL \u_input|Equal2~5_combout\ : std_logic;
SIGNAL \u_input|sw_clean[2]~1_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][0]~126_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \u_input|sw_sync1[1]~feeder_combout\ : std_logic;
SIGNAL \u_input|process_0~2_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][13]~156\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][14]~157_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][14]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][14]~158\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][15]~159_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][15]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][15]~160\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][16]~161_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][16]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][16]~162\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][17]~163_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][17]~q\ : std_logic;
SIGNAL \u_input|Equal1~2_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][17]~152_combout\ : std_logic;
SIGNAL \u_input|Equal1~1_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][17]~153_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][17]~154_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][0]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][0]~127\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][1]~128_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][1]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][1]~129\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][2]~130_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][2]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][2]~131\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][3]~132_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][3]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][3]~133\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][4]~134_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][4]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][4]~135\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][5]~136_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][5]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][5]~137\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][6]~138_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][6]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][6]~139\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][7]~140_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][7]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][7]~141\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][8]~142_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][8]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][8]~143\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][9]~144_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][9]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][9]~145\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][10]~146_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][10]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][10]~147\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][11]~148_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][11]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][11]~149\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][12]~150_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][12]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][12]~151\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][13]~155_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[1][13]~q\ : std_logic;
SIGNAL \u_input|Equal1~0_combout\ : std_logic;
SIGNAL \u_input|Equal1~4_combout\ : std_logic;
SIGNAL \u_input|Equal1~3_combout\ : std_logic;
SIGNAL \u_input|Equal1~5_combout\ : std_logic;
SIGNAL \u_input|sw_clean[1]~0_combout\ : std_logic;
SIGNAL \u_input|process_0~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \u_input|sw_sync1[3]~feeder_combout\ : std_logic;
SIGNAL \u_input|sw_sync2[3]~feeder_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][0]~204_combout\ : std_logic;
SIGNAL \u_input|process_0~4_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][12]~229\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][13]~233_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][13]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][13]~234\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][14]~235_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][14]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][14]~236\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][15]~237_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][15]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][15]~238\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][16]~239_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][16]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][16]~240\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][17]~241_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][17]~q\ : std_logic;
SIGNAL \u_input|Equal3~2_combout\ : std_logic;
SIGNAL \u_input|Equal3~1_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][10]~230_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][10]~231_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][10]~232_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][0]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][0]~205\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][1]~206_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][1]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][1]~207\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][2]~208_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][2]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][2]~209\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][3]~210_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][3]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][3]~211\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][4]~212_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][4]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][4]~213\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][5]~214_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][5]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][5]~215\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][6]~216_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][6]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][6]~217\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][7]~218_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][7]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][7]~219\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][8]~220_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][8]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][8]~221\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][9]~222_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][9]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][9]~223\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][10]~224_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][10]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][10]~225\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][11]~226_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][11]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][11]~227\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][12]~228_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[3][12]~q\ : std_logic;
SIGNAL \u_input|Equal3~0_combout\ : std_logic;
SIGNAL \u_input|Equal3~4_combout\ : std_logic;
SIGNAL \u_input|Equal3~3_combout\ : std_logic;
SIGNAL \u_input|Equal3~5_combout\ : std_logic;
SIGNAL \u_input|sw_clean[3]~2_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][0]~360_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \u_input|sw_sync1[4]~feeder_combout\ : std_logic;
SIGNAL \u_input|sw_sync2[4]~feeder_combout\ : std_logic;
SIGNAL \u_input|process_0~8_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][6]~373\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][7]~374_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][7]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][7]~375\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][8]~376_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][8]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][8]~377\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][9]~378_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][9]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][9]~379\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][10]~380_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][10]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][10]~381\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][11]~382_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][11]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][11]~383\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][12]~384_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][12]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][12]~385\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][13]~389_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][13]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][13]~390\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][14]~391_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][14]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][14]~392\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][15]~393_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][15]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][15]~394\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][16]~395_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][16]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][16]~396\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][17]~397_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][17]~q\ : std_logic;
SIGNAL \u_input|Equal4~2_combout\ : std_logic;
SIGNAL \u_input|Equal4~1_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][7]~386_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][7]~387_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][7]~388_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][0]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][0]~361\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][1]~362_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][1]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][1]~363\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][2]~364_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][2]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][2]~365\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][3]~366_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][3]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][3]~367\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][4]~368_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][4]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][4]~369\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][5]~370_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][5]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][5]~371\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][6]~372_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[4][6]~q\ : std_logic;
SIGNAL \u_input|Equal4~3_combout\ : std_logic;
SIGNAL \u_input|Equal4~4_combout\ : std_logic;
SIGNAL \u_input|Equal4~5_combout\ : std_logic;
SIGNAL \u_input|Equal4~0_combout\ : std_logic;
SIGNAL \u_input|sw_clean[4]~6_combout\ : std_logic;
SIGNAL \u_input|ativado_r~7_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \u_input|sw_sync1[5]~feeder_combout\ : std_logic;
SIGNAL \u_input|sw_sync2[5]~feeder_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][0]~321_combout\ : std_logic;
SIGNAL \u_input|process_0~7_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][13]~351\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][14]~352_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][14]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][14]~353\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][15]~354_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][15]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][15]~355\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][16]~356_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][16]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][16]~357\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][17]~358_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][17]~q\ : std_logic;
SIGNAL \u_input|Equal5~2_combout\ : std_logic;
SIGNAL \u_input|Equal5~1_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][10]~347_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][10]~348_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][10]~349_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][0]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][0]~322\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][1]~323_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][1]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][1]~324\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][2]~325_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][2]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][2]~326\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][3]~327_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][3]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][3]~328\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][4]~329_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][4]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][4]~330\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][5]~331_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][5]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][5]~332\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][6]~333_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][6]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][6]~334\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][7]~335_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][7]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][7]~336\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][8]~337_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][8]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][8]~338\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][9]~339_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][9]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][9]~340\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][10]~341_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][10]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][10]~342\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][11]~343_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][11]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][11]~344\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][12]~345_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][12]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][12]~346\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][13]~350_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[5][13]~q\ : std_logic;
SIGNAL \u_input|Equal5~0_combout\ : std_logic;
SIGNAL \u_input|Equal5~4_combout\ : std_logic;
SIGNAL \u_input|Equal5~3_combout\ : std_logic;
SIGNAL \u_input|Equal5~5_combout\ : std_logic;
SIGNAL \u_input|sw_clean[5]~5_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \u_input|sw_sync1[6]~feeder_combout\ : std_logic;
SIGNAL \u_input|sw_sync2[6]~feeder_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][0]~282_combout\ : std_logic;
SIGNAL \u_input|process_0~6_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][12]~307\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][13]~311_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][13]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][13]~312\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][14]~313_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][14]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][14]~314\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][15]~315_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][15]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][15]~316\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][16]~317_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][16]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][16]~318\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][17]~319_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][17]~q\ : std_logic;
SIGNAL \u_input|Equal6~2_combout\ : std_logic;
SIGNAL \u_input|Equal6~1_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][7]~308_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][7]~309_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][7]~310_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][0]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][0]~283\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][1]~284_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][1]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][1]~285\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][2]~286_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][2]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][2]~287\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][3]~288_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][3]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][3]~289\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][4]~290_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][4]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][4]~291\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][5]~292_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][5]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][5]~293\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][6]~294_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][6]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][6]~295\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][7]~296_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][7]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][7]~297\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][8]~298_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][8]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][8]~299\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][9]~300_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][9]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][9]~301\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][10]~302_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][10]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][10]~303\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][11]~304_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][11]~q\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][11]~305\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][12]~306_combout\ : std_logic;
SIGNAL \u_input|debounce_cnt[6][12]~q\ : std_logic;
SIGNAL \u_input|Equal6~0_combout\ : std_logic;
SIGNAL \u_input|Equal6~4_combout\ : std_logic;
SIGNAL \u_input|Equal6~3_combout\ : std_logic;
SIGNAL \u_input|Equal6~5_combout\ : std_logic;
SIGNAL \u_input|sw_clean[6]~4_combout\ : std_logic;
SIGNAL \u_input|ativado_r~8_combout\ : std_logic;
SIGNAL \u_input|ativado_r~9_combout\ : std_logic;
SIGNAL \u_input|ativado_r~10_combout\ : std_logic;
SIGNAL \u_controller|ativado_prev[2]~feeder_combout\ : std_logic;
SIGNAL \u_input|ativado_r~13_combout\ : std_logic;
SIGNAL \u_input|ativado_r~2_combout\ : std_logic;
SIGNAL \u_input|ativado_r~11_combout\ : std_logic;
SIGNAL \u_input|ativado_r~12_combout\ : std_logic;
SIGNAL \u_input|ativado_r~5_combout\ : std_logic;
SIGNAL \u_input|ativado_r~3_combout\ : std_logic;
SIGNAL \u_input|ativado_r~4_combout\ : std_logic;
SIGNAL \u_input|ativado_r~6_combout\ : std_logic;
SIGNAL \u_controller|process_0~0_combout\ : std_logic;
SIGNAL \u_controller|process_0~1_combout\ : std_logic;
SIGNAL \u_controller|Selector20~0_combout\ : std_logic;
SIGNAL \u_controller|Selector20~1_combout\ : std_logic;
SIGNAL \u_controller|Selector19~0_combout\ : std_logic;
SIGNAL \u_controller|Selector19~1_combout\ : std_logic;
SIGNAL \u_controller|Decoder0~7_combout\ : std_logic;
SIGNAL \u_controller|Selector50~0_combout\ : std_logic;
SIGNAL \u_controller|estado.CAPTURANDO~q\ : std_logic;
SIGNAL \u_controller|estado.COMPLETO~0_combout\ : std_logic;
SIGNAL \u_controller|estado.COMPLETO~q\ : std_logic;
SIGNAL \u_controller|Selector18~0_combout\ : std_logic;
SIGNAL \u_controller|Selector18~1_combout\ : std_logic;
SIGNAL \u_controller|Equal2~0_combout\ : std_logic;
SIGNAL \u_controller|clear_leds_r~q\ : std_logic;
SIGNAL \u_comparator|LessThan1~0_combout\ : std_logic;
SIGNAL \u_comparator|Selector34~1_combout\ : std_logic;
SIGNAL \u_comparator|current_state.S_IDLE~q\ : std_logic;
SIGNAL \u_comparator|Selector35~0_combout\ : std_logic;
SIGNAL \u_comparator|current_state.S_CHECK~q\ : std_logic;
SIGNAL \u_controller|Decoder0~6_combout\ : std_logic;
SIGNAL \u_controller|Selector23~0_combout\ : std_logic;
SIGNAL \u_controller|Selector41~0_combout\ : std_logic;
SIGNAL \u_controller|Selector41~1_combout\ : std_logic;
SIGNAL \u_controller|Selector21~0_combout\ : std_logic;
SIGNAL \u_controller|Selector39~0_combout\ : std_logic;
SIGNAL \u_controller|Selector39~1_combout\ : std_logic;
SIGNAL \u_controller|Selector22~0_combout\ : std_logic;
SIGNAL \u_controller|Selector40~0_combout\ : std_logic;
SIGNAL \u_controller|Selector40~1_combout\ : std_logic;
SIGNAL \u_controller|Decoder0~5_combout\ : std_logic;
SIGNAL \u_controller|Selector38~0_combout\ : std_logic;
SIGNAL \u_controller|Selector38~1_combout\ : std_logic;
SIGNAL \u_controller|Selector37~0_combout\ : std_logic;
SIGNAL \u_controller|Selector37~1_combout\ : std_logic;
SIGNAL \u_comparator|Equal0~5_combout\ : std_logic;
SIGNAL \u_controller|Decoder0~1_combout\ : std_logic;
SIGNAL \u_controller|Selector25~3_combout\ : std_logic;
SIGNAL \u_controller|Selector25~2_combout\ : std_logic;
SIGNAL \u_controller|Decoder0~2_combout\ : std_logic;
SIGNAL \u_controller|Selector27~3_combout\ : std_logic;
SIGNAL \u_controller|Selector27~2_combout\ : std_logic;
SIGNAL \u_controller|Selector28~3_combout\ : std_logic;
SIGNAL \u_controller|Selector28~2_combout\ : std_logic;
SIGNAL \u_controller|Selector26~3_combout\ : std_logic;
SIGNAL \u_controller|Selector26~2_combout\ : std_logic;
SIGNAL \u_comparator|Equal0~1_combout\ : std_logic;
SIGNAL \u_controller|Selector36~0_combout\ : std_logic;
SIGNAL \u_controller|Selector36~1_combout\ : std_logic;
SIGNAL \u_controller|Decoder0~4_combout\ : std_logic;
SIGNAL \u_controller|Selector34~0_combout\ : std_logic;
SIGNAL \u_controller|Selector34~1_combout\ : std_logic;
SIGNAL \u_controller|Selector33~0_combout\ : std_logic;
SIGNAL \u_controller|Selector33~1_combout\ : std_logic;
SIGNAL \u_controller|Selector35~0_combout\ : std_logic;
SIGNAL \u_controller|Selector35~1_combout\ : std_logic;
SIGNAL \u_comparator|Equal0~3_combout\ : std_logic;
SIGNAL \u_controller|Decoder0~3_combout\ : std_logic;
SIGNAL \u_controller|Selector31~0_combout\ : std_logic;
SIGNAL \u_controller|Selector31~1_combout\ : std_logic;
SIGNAL \u_controller|Selector30~0_combout\ : std_logic;
SIGNAL \u_controller|Selector30~1_combout\ : std_logic;
SIGNAL \u_controller|Selector32~0_combout\ : std_logic;
SIGNAL \u_controller|Selector32~1_combout\ : std_logic;
SIGNAL \u_controller|Selector29~3_combout\ : std_logic;
SIGNAL \u_controller|Selector29~2_combout\ : std_logic;
SIGNAL \u_comparator|Equal0~2_combout\ : std_logic;
SIGNAL \u_controller|Decoder0~0_combout\ : std_logic;
SIGNAL \u_controller|Selector23~1_combout\ : std_logic;
SIGNAL \u_controller|Selector23~2_combout\ : std_logic;
SIGNAL \u_controller|Selector21~1_combout\ : std_logic;
SIGNAL \u_controller|Selector21~2_combout\ : std_logic;
SIGNAL \u_controller|Selector22~1_combout\ : std_logic;
SIGNAL \u_controller|Selector22~2_combout\ : std_logic;
SIGNAL \u_controller|Selector24~3_combout\ : std_logic;
SIGNAL \u_controller|Selector24~2_combout\ : std_logic;
SIGNAL \u_comparator|Equal0~0_combout\ : std_logic;
SIGNAL \u_comparator|Equal0~4_combout\ : std_logic;
SIGNAL \u_comparator|Equal0~6_combout\ : std_logic;
SIGNAL \u_comparator|Selector37~0_combout\ : std_logic;
SIGNAL \u_comparator|current_state.S_LOSE~q\ : std_logic;
SIGNAL \u_comparator|timer[7]~7_combout\ : std_logic;
SIGNAL \u_comparator|timer[0]~8_combout\ : std_logic;
SIGNAL \u_comparator|timer[1]~10_cout\ : std_logic;
SIGNAL \u_comparator|timer[1]~11_combout\ : std_logic;
SIGNAL \u_comparator|timer[1]~12\ : std_logic;
SIGNAL \u_comparator|timer[2]~13_combout\ : std_logic;
SIGNAL \u_comparator|timer[2]~14\ : std_logic;
SIGNAL \u_comparator|timer[3]~15_combout\ : std_logic;
SIGNAL \u_comparator|timer[3]~16\ : std_logic;
SIGNAL \u_comparator|timer[4]~17_combout\ : std_logic;
SIGNAL \u_comparator|timer[4]~18\ : std_logic;
SIGNAL \u_comparator|timer[5]~19_combout\ : std_logic;
SIGNAL \u_comparator|timer[5]~20\ : std_logic;
SIGNAL \u_comparator|timer[6]~21_combout\ : std_logic;
SIGNAL \u_comparator|timer[6]~22\ : std_logic;
SIGNAL \u_comparator|timer[7]~23_combout\ : std_logic;
SIGNAL \u_comparator|LessThan1~1_combout\ : std_logic;
SIGNAL \u_comparator|Selector34~0_combout\ : std_logic;
SIGNAL \u_comparator|comparison_done~q\ : std_logic;
SIGNAL \system_state~0_combout\ : std_logic;
SIGNAL \system_state~q\ : std_logic;
SIGNAL \u_controller|enable_led_r~0_combout\ : std_logic;
SIGNAL \u_controller|enable_led_r~q\ : std_logic;
SIGNAL \u_led_input|leds_reg~0_combout\ : std_logic;
SIGNAL \u_led_input|leds_reg~1_combout\ : std_logic;
SIGNAL \u_comparator|current_state.S_WIN~0_combout\ : std_logic;
SIGNAL \u_comparator|current_state.S_WIN~q\ : std_logic;
SIGNAL \u_comparator|blink_cnt~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~1_combout\ : std_logic;
SIGNAL \u_comparator|Selector32~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~2\ : std_logic;
SIGNAL \u_comparator|Add0~3_combout\ : std_logic;
SIGNAL \u_comparator|Selector31~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~4\ : std_logic;
SIGNAL \u_comparator|Add0~5_combout\ : std_logic;
SIGNAL \u_comparator|Selector30~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~6\ : std_logic;
SIGNAL \u_comparator|Add0~7_combout\ : std_logic;
SIGNAL \u_comparator|Selector29~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~8\ : std_logic;
SIGNAL \u_comparator|Add0~9_combout\ : std_logic;
SIGNAL \u_comparator|Selector28~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~10\ : std_logic;
SIGNAL \u_comparator|Add0~11_combout\ : std_logic;
SIGNAL \u_comparator|Selector27~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~12\ : std_logic;
SIGNAL \u_comparator|Add0~13_combout\ : std_logic;
SIGNAL \u_comparator|Selector26~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~14\ : std_logic;
SIGNAL \u_comparator|Add0~15_combout\ : std_logic;
SIGNAL \u_comparator|Selector25~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~16\ : std_logic;
SIGNAL \u_comparator|Add0~17_combout\ : std_logic;
SIGNAL \u_comparator|Selector24~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~18\ : std_logic;
SIGNAL \u_comparator|Add0~19_combout\ : std_logic;
SIGNAL \u_comparator|Selector23~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~20\ : std_logic;
SIGNAL \u_comparator|Add0~21_combout\ : std_logic;
SIGNAL \u_comparator|Selector22~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~22\ : std_logic;
SIGNAL \u_comparator|Add0~23_combout\ : std_logic;
SIGNAL \u_comparator|Selector21~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~24\ : std_logic;
SIGNAL \u_comparator|Add0~25_combout\ : std_logic;
SIGNAL \u_comparator|Selector20~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~26\ : std_logic;
SIGNAL \u_comparator|Add0~27_combout\ : std_logic;
SIGNAL \u_comparator|Selector19~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~28\ : std_logic;
SIGNAL \u_comparator|Add0~29_combout\ : std_logic;
SIGNAL \u_comparator|Selector18~0_combout\ : std_logic;
SIGNAL \u_comparator|LessThan0~4_combout\ : std_logic;
SIGNAL \u_comparator|LessThan0~5_combout\ : std_logic;
SIGNAL \u_comparator|Add0~36\ : std_logic;
SIGNAL \u_comparator|Add0~37_combout\ : std_logic;
SIGNAL \u_comparator|Selector14~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~38\ : std_logic;
SIGNAL \u_comparator|Add0~39_combout\ : std_logic;
SIGNAL \u_comparator|Selector13~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~40\ : std_logic;
SIGNAL \u_comparator|Add0~41_combout\ : std_logic;
SIGNAL \u_comparator|Selector12~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~42\ : std_logic;
SIGNAL \u_comparator|Add0~43_combout\ : std_logic;
SIGNAL \u_comparator|Selector11~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~44\ : std_logic;
SIGNAL \u_comparator|Add0~45_combout\ : std_logic;
SIGNAL \u_comparator|Selector10~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~46\ : std_logic;
SIGNAL \u_comparator|Add0~47_combout\ : std_logic;
SIGNAL \u_comparator|Selector9~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~48\ : std_logic;
SIGNAL \u_comparator|Add0~49_combout\ : std_logic;
SIGNAL \u_comparator|Selector8~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~50\ : std_logic;
SIGNAL \u_comparator|Add0~51_combout\ : std_logic;
SIGNAL \u_comparator|Selector7~0_combout\ : std_logic;
SIGNAL \u_comparator|LessThan0~1_combout\ : std_logic;
SIGNAL \u_comparator|LessThan0~6_combout\ : std_logic;
SIGNAL \u_comparator|LessThan0~0_combout\ : std_logic;
SIGNAL \u_comparator|LessThan0~2_combout\ : std_logic;
SIGNAL \u_comparator|Add0~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~30\ : std_logic;
SIGNAL \u_comparator|Add0~31_combout\ : std_logic;
SIGNAL \u_comparator|Selector17~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~32\ : std_logic;
SIGNAL \u_comparator|Add0~33_combout\ : std_logic;
SIGNAL \u_comparator|Selector16~0_combout\ : std_logic;
SIGNAL \u_comparator|Add0~34\ : std_logic;
SIGNAL \u_comparator|Add0~35_combout\ : std_logic;
SIGNAL \u_comparator|Selector15~0_combout\ : std_logic;
SIGNAL \u_comparator|LessThan0~3_combout\ : std_logic;
SIGNAL \u_comparator|LessThan0~7_combout\ : std_logic;
SIGNAL \u_comparator|Selector33~0_combout\ : std_logic;
SIGNAL \u_comparator|blink_led~q\ : std_logic;
SIGNAL \u_comparator|Selector6~0_combout\ : std_logic;
SIGNAL \u_comparator|Selector6~1_combout\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL \u_led_input|leds_reg~2_combout\ : std_logic;
SIGNAL \u_led_input|leds_reg~3_combout\ : std_logic;
SIGNAL \u_comparator|Selector5~0_combout\ : std_logic;
SIGNAL \LEDR~1_combout\ : std_logic;
SIGNAL \u_led_input|leds_reg~4_combout\ : std_logic;
SIGNAL \u_led_input|leds_reg~5_combout\ : std_logic;
SIGNAL \LEDR~2_combout\ : std_logic;
SIGNAL \u_led_input|leds_reg~6_combout\ : std_logic;
SIGNAL \u_led_input|leds_reg~7_combout\ : std_logic;
SIGNAL \LEDR~3_combout\ : std_logic;
SIGNAL \u_led_input|leds_reg~8_combout\ : std_logic;
SIGNAL \u_led_input|leds_reg~9_combout\ : std_logic;
SIGNAL \LEDR~4_combout\ : std_logic;
SIGNAL \u_led_input|leds_reg~10_combout\ : std_logic;
SIGNAL \LEDR~5_combout\ : std_logic;
SIGNAL \u_led_input|leds_reg~11_combout\ : std_logic;
SIGNAL \LEDR~6_combout\ : std_logic;
SIGNAL \u_comparator|timer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_comparator|leds_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_led_input|leds_reg\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_controller|resposta_packed\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \u_input|ativado_r\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_comparator|blink_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \u_input|sw_prev_clean\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_input|sw_clean\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_controller|contador_inputs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_controller|ativado_prev\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u_input|sw_sync2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_input|sw_sync1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_controller|ALT_INV_estado.COMPLETO~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\u_controller|ALT_INV_estado.COMPLETO~q\ <= NOT \u_controller|estado.COMPLETO~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y48_N20
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
	i => \LEDR~0_combout\,
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
	i => \LEDR~1_combout\,
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
	i => \LEDR~2_combout\,
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
	i => \LEDR~3_combout\,
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
	i => \LEDR~4_combout\,
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
	i => \LEDR~5_combout\,
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
	i => \LEDR~6_combout\,
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

-- Location: IOIBUF_X34_Y0_N29
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

-- Location: CLKCTRL_G19
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

-- Location: LCCOMB_X49_Y49_N8
\u_controller|estado.AGUARDA_START~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|estado.AGUARDA_START~0_combout\ = (\KEY[0]~input_o\) # ((\u_controller|estado.AGUARDA_START~q\) # ((\u_controller|Decoder0~7_combout\ & \u_controller|estado.CAPTURANDO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \u_controller|Decoder0~7_combout\,
	datac => \u_controller|estado.AGUARDA_START~q\,
	datad => \u_controller|estado.CAPTURANDO~q\,
	combout => \u_controller|estado.AGUARDA_START~0_combout\);

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

-- Location: FF_X49_Y49_N9
\u_controller|estado.AGUARDA_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|estado.AGUARDA_START~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|estado.AGUARDA_START~q\);

-- Location: LCCOMB_X49_Y49_N2
\u_controller|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector17~0_combout\ = (\KEY[0]~input_o\ & (((!\u_controller|Decoder0~7_combout\ & \u_controller|estado.CAPTURANDO~q\)) # (!\u_controller|estado.AGUARDA_START~q\))) # (!\KEY[0]~input_o\ & (((!\u_controller|Decoder0~7_combout\ & 
-- \u_controller|estado.CAPTURANDO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \u_controller|estado.AGUARDA_START~q\,
	datac => \u_controller|Decoder0~7_combout\,
	datad => \u_controller|estado.CAPTURANDO~q\,
	combout => \u_controller|Selector17~0_combout\);

-- Location: FF_X49_Y49_N3
\u_controller|inicia_Input_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector17~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|inicia_Input_r~q\);

-- Location: LCCOMB_X47_Y49_N14
\u_input|debounce_cnt[0][0]~243\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][0]~243_combout\ = \u_input|debounce_cnt[0][0]~q\ $ (VCC)
-- \u_input|debounce_cnt[0][0]~244\ = CARRY(\u_input|debounce_cnt[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[0][0]~q\,
	datad => VCC,
	combout => \u_input|debounce_cnt[0][0]~243_combout\,
	cout => \u_input|debounce_cnt[0][0]~244\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X47_Y51_N2
\u_input|sw_sync1[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_sync1[0]~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \u_input|sw_sync1[0]~feeder_combout\);

-- Location: FF_X47_Y51_N3
\u_input|sw_sync1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_sync1[0]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_sync1\(0));

-- Location: LCCOMB_X47_Y51_N4
\u_input|sw_sync2[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_sync2[0]~feeder_combout\ = \u_input|sw_sync1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_input|sw_sync1\(0),
	combout => \u_input|sw_sync2[0]~feeder_combout\);

-- Location: FF_X47_Y51_N5
\u_input|sw_sync2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_sync2[0]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_sync2\(0));

-- Location: LCCOMB_X47_Y49_N4
\u_input|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|process_0~5_combout\ = \u_input|sw_sync2\(0) $ (\u_input|sw_clean\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_input|sw_sync2\(0),
	datad => \u_input|sw_clean\(0),
	combout => \u_input|process_0~5_combout\);

-- Location: LCCOMB_X47_Y49_N26
\u_input|debounce_cnt[0][6]~255\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][6]~255_combout\ = (\u_input|debounce_cnt[0][6]~q\ & (\u_input|debounce_cnt[0][5]~254\ $ (GND))) # (!\u_input|debounce_cnt[0][6]~q\ & (!\u_input|debounce_cnt[0][5]~254\ & VCC))
-- \u_input|debounce_cnt[0][6]~256\ = CARRY((\u_input|debounce_cnt[0][6]~q\ & !\u_input|debounce_cnt[0][5]~254\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[0][6]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[0][5]~254\,
	combout => \u_input|debounce_cnt[0][6]~255_combout\,
	cout => \u_input|debounce_cnt[0][6]~256\);

-- Location: LCCOMB_X47_Y49_N28
\u_input|debounce_cnt[0][7]~257\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][7]~257_combout\ = (\u_input|debounce_cnt[0][7]~q\ & (!\u_input|debounce_cnt[0][6]~256\)) # (!\u_input|debounce_cnt[0][7]~q\ & ((\u_input|debounce_cnt[0][6]~256\) # (GND)))
-- \u_input|debounce_cnt[0][7]~258\ = CARRY((!\u_input|debounce_cnt[0][6]~256\) # (!\u_input|debounce_cnt[0][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[0][7]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[0][6]~256\,
	combout => \u_input|debounce_cnt[0][7]~257_combout\,
	cout => \u_input|debounce_cnt[0][7]~258\);

-- Location: FF_X47_Y49_N29
\u_input|debounce_cnt[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[0][7]~257_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~5_combout\,
	ena => \u_input|debounce_cnt[0][4]~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[0][7]~q\);

-- Location: LCCOMB_X47_Y49_N30
\u_input|debounce_cnt[0][8]~259\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][8]~259_combout\ = (\u_input|debounce_cnt[0][8]~q\ & (\u_input|debounce_cnt[0][7]~258\ $ (GND))) # (!\u_input|debounce_cnt[0][8]~q\ & (!\u_input|debounce_cnt[0][7]~258\ & VCC))
-- \u_input|debounce_cnt[0][8]~260\ = CARRY((\u_input|debounce_cnt[0][8]~q\ & !\u_input|debounce_cnt[0][7]~258\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[0][8]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[0][7]~258\,
	combout => \u_input|debounce_cnt[0][8]~259_combout\,
	cout => \u_input|debounce_cnt[0][8]~260\);

-- Location: FF_X47_Y49_N31
\u_input|debounce_cnt[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[0][8]~259_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~5_combout\,
	ena => \u_input|debounce_cnt[0][4]~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[0][8]~q\);

-- Location: LCCOMB_X47_Y48_N0
\u_input|debounce_cnt[0][9]~261\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][9]~261_combout\ = (\u_input|debounce_cnt[0][9]~q\ & (!\u_input|debounce_cnt[0][8]~260\)) # (!\u_input|debounce_cnt[0][9]~q\ & ((\u_input|debounce_cnt[0][8]~260\) # (GND)))
-- \u_input|debounce_cnt[0][9]~262\ = CARRY((!\u_input|debounce_cnt[0][8]~260\) # (!\u_input|debounce_cnt[0][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[0][9]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[0][8]~260\,
	combout => \u_input|debounce_cnt[0][9]~261_combout\,
	cout => \u_input|debounce_cnt[0][9]~262\);

-- Location: FF_X47_Y48_N1
\u_input|debounce_cnt[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[0][9]~261_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~5_combout\,
	ena => \u_input|debounce_cnt[0][4]~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[0][9]~q\);

-- Location: LCCOMB_X47_Y48_N2
\u_input|debounce_cnt[0][10]~263\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][10]~263_combout\ = (\u_input|debounce_cnt[0][10]~q\ & (\u_input|debounce_cnt[0][9]~262\ $ (GND))) # (!\u_input|debounce_cnt[0][10]~q\ & (!\u_input|debounce_cnt[0][9]~262\ & VCC))
-- \u_input|debounce_cnt[0][10]~264\ = CARRY((\u_input|debounce_cnt[0][10]~q\ & !\u_input|debounce_cnt[0][9]~262\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[0][10]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[0][9]~262\,
	combout => \u_input|debounce_cnt[0][10]~263_combout\,
	cout => \u_input|debounce_cnt[0][10]~264\);

-- Location: FF_X47_Y48_N3
\u_input|debounce_cnt[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[0][10]~263_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~5_combout\,
	ena => \u_input|debounce_cnt[0][4]~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[0][10]~q\);

-- Location: LCCOMB_X47_Y48_N4
\u_input|debounce_cnt[0][11]~265\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][11]~265_combout\ = (\u_input|debounce_cnt[0][11]~q\ & (!\u_input|debounce_cnt[0][10]~264\)) # (!\u_input|debounce_cnt[0][11]~q\ & ((\u_input|debounce_cnt[0][10]~264\) # (GND)))
-- \u_input|debounce_cnt[0][11]~266\ = CARRY((!\u_input|debounce_cnt[0][10]~264\) # (!\u_input|debounce_cnt[0][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[0][11]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[0][10]~264\,
	combout => \u_input|debounce_cnt[0][11]~265_combout\,
	cout => \u_input|debounce_cnt[0][11]~266\);

-- Location: FF_X47_Y48_N5
\u_input|debounce_cnt[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[0][11]~265_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~5_combout\,
	ena => \u_input|debounce_cnt[0][4]~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[0][11]~q\);

-- Location: LCCOMB_X47_Y48_N6
\u_input|debounce_cnt[0][12]~267\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][12]~267_combout\ = (\u_input|debounce_cnt[0][12]~q\ & (\u_input|debounce_cnt[0][11]~266\ $ (GND))) # (!\u_input|debounce_cnt[0][12]~q\ & (!\u_input|debounce_cnt[0][11]~266\ & VCC))
-- \u_input|debounce_cnt[0][12]~268\ = CARRY((\u_input|debounce_cnt[0][12]~q\ & !\u_input|debounce_cnt[0][11]~266\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[0][12]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[0][11]~266\,
	combout => \u_input|debounce_cnt[0][12]~267_combout\,
	cout => \u_input|debounce_cnt[0][12]~268\);

-- Location: FF_X47_Y48_N7
\u_input|debounce_cnt[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[0][12]~267_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~5_combout\,
	ena => \u_input|debounce_cnt[0][4]~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[0][12]~q\);

-- Location: LCCOMB_X47_Y48_N8
\u_input|debounce_cnt[0][13]~272\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][13]~272_combout\ = (\u_input|debounce_cnt[0][13]~q\ & (!\u_input|debounce_cnt[0][12]~268\)) # (!\u_input|debounce_cnt[0][13]~q\ & ((\u_input|debounce_cnt[0][12]~268\) # (GND)))
-- \u_input|debounce_cnt[0][13]~273\ = CARRY((!\u_input|debounce_cnt[0][12]~268\) # (!\u_input|debounce_cnt[0][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[0][13]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[0][12]~268\,
	combout => \u_input|debounce_cnt[0][13]~272_combout\,
	cout => \u_input|debounce_cnt[0][13]~273\);

-- Location: FF_X47_Y48_N9
\u_input|debounce_cnt[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[0][13]~272_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~5_combout\,
	ena => \u_input|debounce_cnt[0][4]~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[0][13]~q\);

-- Location: LCCOMB_X47_Y48_N10
\u_input|debounce_cnt[0][14]~274\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][14]~274_combout\ = (\u_input|debounce_cnt[0][14]~q\ & (\u_input|debounce_cnt[0][13]~273\ $ (GND))) # (!\u_input|debounce_cnt[0][14]~q\ & (!\u_input|debounce_cnt[0][13]~273\ & VCC))
-- \u_input|debounce_cnt[0][14]~275\ = CARRY((\u_input|debounce_cnt[0][14]~q\ & !\u_input|debounce_cnt[0][13]~273\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[0][14]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[0][13]~273\,
	combout => \u_input|debounce_cnt[0][14]~274_combout\,
	cout => \u_input|debounce_cnt[0][14]~275\);

-- Location: FF_X47_Y48_N11
\u_input|debounce_cnt[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[0][14]~274_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~5_combout\,
	ena => \u_input|debounce_cnt[0][4]~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[0][14]~q\);

-- Location: LCCOMB_X47_Y48_N12
\u_input|debounce_cnt[0][15]~276\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][15]~276_combout\ = (\u_input|debounce_cnt[0][15]~q\ & (!\u_input|debounce_cnt[0][14]~275\)) # (!\u_input|debounce_cnt[0][15]~q\ & ((\u_input|debounce_cnt[0][14]~275\) # (GND)))
-- \u_input|debounce_cnt[0][15]~277\ = CARRY((!\u_input|debounce_cnt[0][14]~275\) # (!\u_input|debounce_cnt[0][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[0][15]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[0][14]~275\,
	combout => \u_input|debounce_cnt[0][15]~276_combout\,
	cout => \u_input|debounce_cnt[0][15]~277\);

-- Location: FF_X47_Y48_N13
\u_input|debounce_cnt[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[0][15]~276_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~5_combout\,
	ena => \u_input|debounce_cnt[0][4]~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[0][15]~q\);

-- Location: LCCOMB_X47_Y48_N14
\u_input|debounce_cnt[0][16]~278\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][16]~278_combout\ = (\u_input|debounce_cnt[0][16]~q\ & (\u_input|debounce_cnt[0][15]~277\ $ (GND))) # (!\u_input|debounce_cnt[0][16]~q\ & (!\u_input|debounce_cnt[0][15]~277\ & VCC))
-- \u_input|debounce_cnt[0][16]~279\ = CARRY((\u_input|debounce_cnt[0][16]~q\ & !\u_input|debounce_cnt[0][15]~277\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[0][16]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[0][15]~277\,
	combout => \u_input|debounce_cnt[0][16]~278_combout\,
	cout => \u_input|debounce_cnt[0][16]~279\);

-- Location: FF_X47_Y48_N15
\u_input|debounce_cnt[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[0][16]~278_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~5_combout\,
	ena => \u_input|debounce_cnt[0][4]~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[0][16]~q\);

-- Location: LCCOMB_X47_Y48_N16
\u_input|debounce_cnt[0][17]~280\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][17]~280_combout\ = \u_input|debounce_cnt[0][16]~279\ $ (\u_input|debounce_cnt[0][17]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_input|debounce_cnt[0][17]~q\,
	cin => \u_input|debounce_cnt[0][16]~279\,
	combout => \u_input|debounce_cnt[0][17]~280_combout\);

-- Location: FF_X47_Y48_N17
\u_input|debounce_cnt[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[0][17]~280_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~5_combout\,
	ena => \u_input|debounce_cnt[0][4]~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[0][17]~q\);

-- Location: LCCOMB_X47_Y48_N20
\u_input|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal0~2_combout\ = (\u_input|debounce_cnt[0][15]~q\ & (\u_input|debounce_cnt[0][17]~q\ & (\u_input|debounce_cnt[0][16]~q\ & \u_input|debounce_cnt[0][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[0][15]~q\,
	datab => \u_input|debounce_cnt[0][17]~q\,
	datac => \u_input|debounce_cnt[0][16]~q\,
	datad => \u_input|debounce_cnt[0][14]~q\,
	combout => \u_input|Equal0~2_combout\);

-- Location: LCCOMB_X47_Y48_N18
\u_input|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal0~1_combout\ = (!\u_input|debounce_cnt[0][8]~q\ & (!\u_input|debounce_cnt[0][10]~q\ & (!\u_input|debounce_cnt[0][11]~q\ & !\u_input|debounce_cnt[0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[0][8]~q\,
	datab => \u_input|debounce_cnt[0][10]~q\,
	datac => \u_input|debounce_cnt[0][11]~q\,
	datad => \u_input|debounce_cnt[0][9]~q\,
	combout => \u_input|Equal0~1_combout\);

-- Location: LCCOMB_X47_Y49_N10
\u_input|debounce_cnt[0][4]~269\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][4]~269_combout\ = (\u_input|debounce_cnt[0][7]~q\ & ((\u_input|debounce_cnt[0][6]~q\) # ((\u_input|debounce_cnt[0][4]~q\) # (\u_input|debounce_cnt[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[0][6]~q\,
	datab => \u_input|debounce_cnt[0][7]~q\,
	datac => \u_input|debounce_cnt[0][4]~q\,
	datad => \u_input|debounce_cnt[0][5]~q\,
	combout => \u_input|debounce_cnt[0][4]~269_combout\);

-- Location: LCCOMB_X47_Y48_N24
\u_input|debounce_cnt[0][4]~270\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][4]~270_combout\ = (\u_input|debounce_cnt[0][13]~q\) # ((\u_input|debounce_cnt[0][12]~q\ & ((\u_input|debounce_cnt[0][4]~269_combout\) # (!\u_input|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[0][12]~q\,
	datab => \u_input|Equal0~1_combout\,
	datac => \u_input|debounce_cnt[0][13]~q\,
	datad => \u_input|debounce_cnt[0][4]~269_combout\,
	combout => \u_input|debounce_cnt[0][4]~270_combout\);

-- Location: LCCOMB_X47_Y48_N22
\u_input|debounce_cnt[0][4]~271\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][4]~271_combout\ = ((\u_input|sw_sync2\(0) $ (\u_input|sw_clean\(0))) # (!\u_input|debounce_cnt[0][4]~270_combout\)) # (!\u_input|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|sw_sync2\(0),
	datab => \u_input|Equal0~2_combout\,
	datac => \u_input|sw_clean\(0),
	datad => \u_input|debounce_cnt[0][4]~270_combout\,
	combout => \u_input|debounce_cnt[0][4]~271_combout\);

-- Location: FF_X47_Y49_N15
\u_input|debounce_cnt[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[0][0]~243_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~5_combout\,
	ena => \u_input|debounce_cnt[0][4]~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[0][0]~q\);

-- Location: LCCOMB_X47_Y49_N16
\u_input|debounce_cnt[0][1]~245\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][1]~245_combout\ = (\u_input|debounce_cnt[0][1]~q\ & (!\u_input|debounce_cnt[0][0]~244\)) # (!\u_input|debounce_cnt[0][1]~q\ & ((\u_input|debounce_cnt[0][0]~244\) # (GND)))
-- \u_input|debounce_cnt[0][1]~246\ = CARRY((!\u_input|debounce_cnt[0][0]~244\) # (!\u_input|debounce_cnt[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[0][1]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[0][0]~244\,
	combout => \u_input|debounce_cnt[0][1]~245_combout\,
	cout => \u_input|debounce_cnt[0][1]~246\);

-- Location: FF_X47_Y49_N17
\u_input|debounce_cnt[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[0][1]~245_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~5_combout\,
	ena => \u_input|debounce_cnt[0][4]~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[0][1]~q\);

-- Location: LCCOMB_X47_Y49_N18
\u_input|debounce_cnt[0][2]~247\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][2]~247_combout\ = (\u_input|debounce_cnt[0][2]~q\ & (\u_input|debounce_cnt[0][1]~246\ $ (GND))) # (!\u_input|debounce_cnt[0][2]~q\ & (!\u_input|debounce_cnt[0][1]~246\ & VCC))
-- \u_input|debounce_cnt[0][2]~248\ = CARRY((\u_input|debounce_cnt[0][2]~q\ & !\u_input|debounce_cnt[0][1]~246\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[0][2]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[0][1]~246\,
	combout => \u_input|debounce_cnt[0][2]~247_combout\,
	cout => \u_input|debounce_cnt[0][2]~248\);

-- Location: FF_X47_Y49_N19
\u_input|debounce_cnt[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[0][2]~247_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~5_combout\,
	ena => \u_input|debounce_cnt[0][4]~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[0][2]~q\);

-- Location: LCCOMB_X47_Y49_N20
\u_input|debounce_cnt[0][3]~249\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][3]~249_combout\ = (\u_input|debounce_cnt[0][3]~q\ & (!\u_input|debounce_cnt[0][2]~248\)) # (!\u_input|debounce_cnt[0][3]~q\ & ((\u_input|debounce_cnt[0][2]~248\) # (GND)))
-- \u_input|debounce_cnt[0][3]~250\ = CARRY((!\u_input|debounce_cnt[0][2]~248\) # (!\u_input|debounce_cnt[0][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[0][3]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[0][2]~248\,
	combout => \u_input|debounce_cnt[0][3]~249_combout\,
	cout => \u_input|debounce_cnt[0][3]~250\);

-- Location: FF_X47_Y49_N21
\u_input|debounce_cnt[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[0][3]~249_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~5_combout\,
	ena => \u_input|debounce_cnt[0][4]~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[0][3]~q\);

-- Location: LCCOMB_X47_Y49_N22
\u_input|debounce_cnt[0][4]~251\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][4]~251_combout\ = (\u_input|debounce_cnt[0][4]~q\ & (\u_input|debounce_cnt[0][3]~250\ $ (GND))) # (!\u_input|debounce_cnt[0][4]~q\ & (!\u_input|debounce_cnt[0][3]~250\ & VCC))
-- \u_input|debounce_cnt[0][4]~252\ = CARRY((\u_input|debounce_cnt[0][4]~q\ & !\u_input|debounce_cnt[0][3]~250\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[0][4]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[0][3]~250\,
	combout => \u_input|debounce_cnt[0][4]~251_combout\,
	cout => \u_input|debounce_cnt[0][4]~252\);

-- Location: FF_X47_Y49_N23
\u_input|debounce_cnt[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[0][4]~251_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~5_combout\,
	ena => \u_input|debounce_cnt[0][4]~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[0][4]~q\);

-- Location: LCCOMB_X47_Y49_N24
\u_input|debounce_cnt[0][5]~253\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[0][5]~253_combout\ = (\u_input|debounce_cnt[0][5]~q\ & (!\u_input|debounce_cnt[0][4]~252\)) # (!\u_input|debounce_cnt[0][5]~q\ & ((\u_input|debounce_cnt[0][4]~252\) # (GND)))
-- \u_input|debounce_cnt[0][5]~254\ = CARRY((!\u_input|debounce_cnt[0][4]~252\) # (!\u_input|debounce_cnt[0][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[0][5]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[0][4]~252\,
	combout => \u_input|debounce_cnt[0][5]~253_combout\,
	cout => \u_input|debounce_cnt[0][5]~254\);

-- Location: FF_X47_Y49_N25
\u_input|debounce_cnt[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[0][5]~253_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~5_combout\,
	ena => \u_input|debounce_cnt[0][4]~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[0][5]~q\);

-- Location: FF_X47_Y49_N27
\u_input|debounce_cnt[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[0][6]~255_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~5_combout\,
	ena => \u_input|debounce_cnt[0][4]~271_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[0][6]~q\);

-- Location: LCCOMB_X47_Y49_N0
\u_input|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal0~3_combout\ = (!\u_input|debounce_cnt[0][6]~q\ & (!\u_input|debounce_cnt[0][1]~q\ & (!\u_input|debounce_cnt[0][0]~q\ & !\u_input|debounce_cnt[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[0][6]~q\,
	datab => \u_input|debounce_cnt[0][1]~q\,
	datac => \u_input|debounce_cnt[0][0]~q\,
	datad => \u_input|debounce_cnt[0][5]~q\,
	combout => \u_input|Equal0~3_combout\);

-- Location: LCCOMB_X47_Y49_N6
\u_input|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal0~4_combout\ = (!\u_input|debounce_cnt[0][2]~q\ & (\u_input|debounce_cnt[0][7]~q\ & (\u_input|debounce_cnt[0][4]~q\ & !\u_input|debounce_cnt[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[0][2]~q\,
	datab => \u_input|debounce_cnt[0][7]~q\,
	datac => \u_input|debounce_cnt[0][4]~q\,
	datad => \u_input|debounce_cnt[0][3]~q\,
	combout => \u_input|Equal0~4_combout\);

-- Location: LCCOMB_X47_Y48_N26
\u_input|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal0~5_combout\ = (\u_input|Equal0~3_combout\ & (\u_input|Equal0~2_combout\ & (\u_input|Equal0~4_combout\ & \u_input|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|Equal0~3_combout\,
	datab => \u_input|Equal0~2_combout\,
	datac => \u_input|Equal0~4_combout\,
	datad => \u_input|Equal0~1_combout\,
	combout => \u_input|Equal0~5_combout\);

-- Location: LCCOMB_X47_Y48_N28
\u_input|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal0~0_combout\ = (!\u_input|debounce_cnt[0][13]~q\ & \u_input|debounce_cnt[0][12]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_input|debounce_cnt[0][13]~q\,
	datad => \u_input|debounce_cnt[0][12]~q\,
	combout => \u_input|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y48_N30
\u_input|sw_clean[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_clean[0]~3_combout\ = (\u_input|Equal0~5_combout\ & ((\u_input|Equal0~0_combout\ & ((\u_input|sw_sync2\(0)))) # (!\u_input|Equal0~0_combout\ & (\u_input|sw_clean\(0))))) # (!\u_input|Equal0~5_combout\ & (((\u_input|sw_clean\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|Equal0~5_combout\,
	datab => \u_input|Equal0~0_combout\,
	datac => \u_input|sw_clean\(0),
	datad => \u_input|sw_sync2\(0),
	combout => \u_input|sw_clean[0]~3_combout\);

-- Location: FF_X47_Y48_N31
\u_input|sw_clean[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_clean[0]~3_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_clean\(0));

-- Location: LCCOMB_X46_Y50_N10
\u_input|sw_prev_clean[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_prev_clean[0]~feeder_combout\ = \u_input|sw_clean\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_input|sw_clean\(0),
	combout => \u_input|sw_prev_clean[0]~feeder_combout\);

-- Location: FF_X46_Y50_N11
\u_input|sw_prev_clean[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_prev_clean[0]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_prev_clean\(0));

-- Location: LCCOMB_X46_Y50_N12
\u_input|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|process_0~1_combout\ = (!\u_input|sw_prev_clean\(0) & \u_input|sw_clean\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|sw_prev_clean\(0),
	datad => \u_input|sw_clean\(0),
	combout => \u_input|process_0~1_combout\);

-- Location: LCCOMB_X44_Y51_N14
\u_input|debounce_cnt[2][0]~165\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][0]~165_combout\ = \u_input|debounce_cnt[2][0]~q\ $ (VCC)
-- \u_input|debounce_cnt[2][0]~166\ = CARRY(\u_input|debounce_cnt[2][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[2][0]~q\,
	datad => VCC,
	combout => \u_input|debounce_cnt[2][0]~165_combout\,
	cout => \u_input|debounce_cnt[2][0]~166\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X47_Y53_N8
\u_input|sw_sync1[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_sync1[2]~feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \u_input|sw_sync1[2]~feeder_combout\);

-- Location: FF_X47_Y53_N9
\u_input|sw_sync1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_sync1[2]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_sync1\(2));

-- Location: LCCOMB_X46_Y50_N2
\u_input|sw_sync2[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_sync2[2]~feeder_combout\ = \u_input|sw_sync1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_input|sw_sync1\(2),
	combout => \u_input|sw_sync2[2]~feeder_combout\);

-- Location: FF_X46_Y50_N3
\u_input|sw_sync2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_sync2[2]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_sync2\(2));

-- Location: LCCOMB_X44_Y50_N18
\u_input|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|process_0~3_combout\ = \u_input|sw_clean\(2) $ (\u_input|sw_sync2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|sw_clean\(2),
	datac => \u_input|sw_sync2\(2),
	combout => \u_input|process_0~3_combout\);

-- Location: LCCOMB_X44_Y50_N6
\u_input|debounce_cnt[2][12]~189\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][12]~189_combout\ = (\u_input|debounce_cnt[2][12]~q\ & (\u_input|debounce_cnt[2][11]~188\ $ (GND))) # (!\u_input|debounce_cnt[2][12]~q\ & (!\u_input|debounce_cnt[2][11]~188\ & VCC))
-- \u_input|debounce_cnt[2][12]~190\ = CARRY((\u_input|debounce_cnt[2][12]~q\ & !\u_input|debounce_cnt[2][11]~188\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[2][12]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[2][11]~188\,
	combout => \u_input|debounce_cnt[2][12]~189_combout\,
	cout => \u_input|debounce_cnt[2][12]~190\);

-- Location: LCCOMB_X44_Y50_N8
\u_input|debounce_cnt[2][13]~194\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][13]~194_combout\ = (\u_input|debounce_cnt[2][13]~q\ & (!\u_input|debounce_cnt[2][12]~190\)) # (!\u_input|debounce_cnt[2][13]~q\ & ((\u_input|debounce_cnt[2][12]~190\) # (GND)))
-- \u_input|debounce_cnt[2][13]~195\ = CARRY((!\u_input|debounce_cnt[2][12]~190\) # (!\u_input|debounce_cnt[2][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[2][13]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[2][12]~190\,
	combout => \u_input|debounce_cnt[2][13]~194_combout\,
	cout => \u_input|debounce_cnt[2][13]~195\);

-- Location: FF_X44_Y50_N9
\u_input|debounce_cnt[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[2][13]~194_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~3_combout\,
	ena => \u_input|debounce_cnt[2][15]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[2][13]~q\);

-- Location: LCCOMB_X44_Y50_N10
\u_input|debounce_cnt[2][14]~196\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][14]~196_combout\ = (\u_input|debounce_cnt[2][14]~q\ & (\u_input|debounce_cnt[2][13]~195\ $ (GND))) # (!\u_input|debounce_cnt[2][14]~q\ & (!\u_input|debounce_cnt[2][13]~195\ & VCC))
-- \u_input|debounce_cnt[2][14]~197\ = CARRY((\u_input|debounce_cnt[2][14]~q\ & !\u_input|debounce_cnt[2][13]~195\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[2][14]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[2][13]~195\,
	combout => \u_input|debounce_cnt[2][14]~196_combout\,
	cout => \u_input|debounce_cnt[2][14]~197\);

-- Location: FF_X44_Y50_N11
\u_input|debounce_cnt[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[2][14]~196_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~3_combout\,
	ena => \u_input|debounce_cnt[2][15]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[2][14]~q\);

-- Location: LCCOMB_X44_Y50_N12
\u_input|debounce_cnt[2][15]~198\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][15]~198_combout\ = (\u_input|debounce_cnt[2][15]~q\ & (!\u_input|debounce_cnt[2][14]~197\)) # (!\u_input|debounce_cnt[2][15]~q\ & ((\u_input|debounce_cnt[2][14]~197\) # (GND)))
-- \u_input|debounce_cnt[2][15]~199\ = CARRY((!\u_input|debounce_cnt[2][14]~197\) # (!\u_input|debounce_cnt[2][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[2][15]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[2][14]~197\,
	combout => \u_input|debounce_cnt[2][15]~198_combout\,
	cout => \u_input|debounce_cnt[2][15]~199\);

-- Location: FF_X44_Y50_N13
\u_input|debounce_cnt[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[2][15]~198_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~3_combout\,
	ena => \u_input|debounce_cnt[2][15]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[2][15]~q\);

-- Location: LCCOMB_X44_Y50_N14
\u_input|debounce_cnt[2][16]~200\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][16]~200_combout\ = (\u_input|debounce_cnt[2][16]~q\ & (\u_input|debounce_cnt[2][15]~199\ $ (GND))) # (!\u_input|debounce_cnt[2][16]~q\ & (!\u_input|debounce_cnt[2][15]~199\ & VCC))
-- \u_input|debounce_cnt[2][16]~201\ = CARRY((\u_input|debounce_cnt[2][16]~q\ & !\u_input|debounce_cnt[2][15]~199\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[2][16]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[2][15]~199\,
	combout => \u_input|debounce_cnt[2][16]~200_combout\,
	cout => \u_input|debounce_cnt[2][16]~201\);

-- Location: FF_X44_Y50_N15
\u_input|debounce_cnt[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[2][16]~200_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~3_combout\,
	ena => \u_input|debounce_cnt[2][15]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[2][16]~q\);

-- Location: LCCOMB_X44_Y50_N16
\u_input|debounce_cnt[2][17]~202\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][17]~202_combout\ = \u_input|debounce_cnt[2][16]~201\ $ (\u_input|debounce_cnt[2][17]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_input|debounce_cnt[2][17]~q\,
	cin => \u_input|debounce_cnt[2][16]~201\,
	combout => \u_input|debounce_cnt[2][17]~202_combout\);

-- Location: FF_X44_Y50_N17
\u_input|debounce_cnt[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[2][17]~202_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~3_combout\,
	ena => \u_input|debounce_cnt[2][15]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[2][17]~q\);

-- Location: LCCOMB_X44_Y50_N30
\u_input|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal2~2_combout\ = (\u_input|debounce_cnt[2][14]~q\ & (\u_input|debounce_cnt[2][17]~q\ & (\u_input|debounce_cnt[2][16]~q\ & \u_input|debounce_cnt[2][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[2][14]~q\,
	datab => \u_input|debounce_cnt[2][17]~q\,
	datac => \u_input|debounce_cnt[2][16]~q\,
	datad => \u_input|debounce_cnt[2][15]~q\,
	combout => \u_input|Equal2~2_combout\);

-- Location: LCCOMB_X44_Y51_N8
\u_input|debounce_cnt[2][15]~191\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][15]~191_combout\ = (\u_input|debounce_cnt[2][7]~q\ & ((\u_input|debounce_cnt[2][6]~q\) # ((\u_input|debounce_cnt[2][4]~q\) # (\u_input|debounce_cnt[2][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[2][6]~q\,
	datab => \u_input|debounce_cnt[2][7]~q\,
	datac => \u_input|debounce_cnt[2][4]~q\,
	datad => \u_input|debounce_cnt[2][5]~q\,
	combout => \u_input|debounce_cnt[2][15]~191_combout\);

-- Location: LCCOMB_X44_Y50_N20
\u_input|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal2~1_combout\ = (!\u_input|debounce_cnt[2][8]~q\ & (!\u_input|debounce_cnt[2][10]~q\ & (!\u_input|debounce_cnt[2][11]~q\ & !\u_input|debounce_cnt[2][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[2][8]~q\,
	datab => \u_input|debounce_cnt[2][10]~q\,
	datac => \u_input|debounce_cnt[2][11]~q\,
	datad => \u_input|debounce_cnt[2][9]~q\,
	combout => \u_input|Equal2~1_combout\);

-- Location: LCCOMB_X44_Y50_N24
\u_input|debounce_cnt[2][15]~192\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][15]~192_combout\ = (\u_input|debounce_cnt[2][13]~q\) # ((\u_input|debounce_cnt[2][12]~q\ & ((\u_input|debounce_cnt[2][15]~191_combout\) # (!\u_input|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[2][12]~q\,
	datab => \u_input|debounce_cnt[2][13]~q\,
	datac => \u_input|debounce_cnt[2][15]~191_combout\,
	datad => \u_input|Equal2~1_combout\,
	combout => \u_input|debounce_cnt[2][15]~192_combout\);

-- Location: LCCOMB_X44_Y50_N26
\u_input|debounce_cnt[2][15]~193\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][15]~193_combout\ = ((\u_input|sw_clean\(2) $ (\u_input|sw_sync2\(2))) # (!\u_input|debounce_cnt[2][15]~192_combout\)) # (!\u_input|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|sw_clean\(2),
	datab => \u_input|sw_sync2\(2),
	datac => \u_input|Equal2~2_combout\,
	datad => \u_input|debounce_cnt[2][15]~192_combout\,
	combout => \u_input|debounce_cnt[2][15]~193_combout\);

-- Location: FF_X44_Y51_N15
\u_input|debounce_cnt[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[2][0]~165_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~3_combout\,
	ena => \u_input|debounce_cnt[2][15]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[2][0]~q\);

-- Location: LCCOMB_X44_Y51_N16
\u_input|debounce_cnt[2][1]~167\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][1]~167_combout\ = (\u_input|debounce_cnt[2][1]~q\ & (!\u_input|debounce_cnt[2][0]~166\)) # (!\u_input|debounce_cnt[2][1]~q\ & ((\u_input|debounce_cnt[2][0]~166\) # (GND)))
-- \u_input|debounce_cnt[2][1]~168\ = CARRY((!\u_input|debounce_cnt[2][0]~166\) # (!\u_input|debounce_cnt[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[2][1]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[2][0]~166\,
	combout => \u_input|debounce_cnt[2][1]~167_combout\,
	cout => \u_input|debounce_cnt[2][1]~168\);

-- Location: FF_X44_Y51_N17
\u_input|debounce_cnt[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[2][1]~167_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~3_combout\,
	ena => \u_input|debounce_cnt[2][15]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[2][1]~q\);

-- Location: LCCOMB_X44_Y51_N18
\u_input|debounce_cnt[2][2]~169\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][2]~169_combout\ = (\u_input|debounce_cnt[2][2]~q\ & (\u_input|debounce_cnt[2][1]~168\ $ (GND))) # (!\u_input|debounce_cnt[2][2]~q\ & (!\u_input|debounce_cnt[2][1]~168\ & VCC))
-- \u_input|debounce_cnt[2][2]~170\ = CARRY((\u_input|debounce_cnt[2][2]~q\ & !\u_input|debounce_cnt[2][1]~168\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[2][2]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[2][1]~168\,
	combout => \u_input|debounce_cnt[2][2]~169_combout\,
	cout => \u_input|debounce_cnt[2][2]~170\);

-- Location: FF_X44_Y51_N19
\u_input|debounce_cnt[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[2][2]~169_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~3_combout\,
	ena => \u_input|debounce_cnt[2][15]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[2][2]~q\);

-- Location: LCCOMB_X44_Y51_N20
\u_input|debounce_cnt[2][3]~171\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][3]~171_combout\ = (\u_input|debounce_cnt[2][3]~q\ & (!\u_input|debounce_cnt[2][2]~170\)) # (!\u_input|debounce_cnt[2][3]~q\ & ((\u_input|debounce_cnt[2][2]~170\) # (GND)))
-- \u_input|debounce_cnt[2][3]~172\ = CARRY((!\u_input|debounce_cnt[2][2]~170\) # (!\u_input|debounce_cnt[2][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[2][3]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[2][2]~170\,
	combout => \u_input|debounce_cnt[2][3]~171_combout\,
	cout => \u_input|debounce_cnt[2][3]~172\);

-- Location: FF_X44_Y51_N21
\u_input|debounce_cnt[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[2][3]~171_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~3_combout\,
	ena => \u_input|debounce_cnt[2][15]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[2][3]~q\);

-- Location: LCCOMB_X44_Y51_N22
\u_input|debounce_cnt[2][4]~173\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][4]~173_combout\ = (\u_input|debounce_cnt[2][4]~q\ & (\u_input|debounce_cnt[2][3]~172\ $ (GND))) # (!\u_input|debounce_cnt[2][4]~q\ & (!\u_input|debounce_cnt[2][3]~172\ & VCC))
-- \u_input|debounce_cnt[2][4]~174\ = CARRY((\u_input|debounce_cnt[2][4]~q\ & !\u_input|debounce_cnt[2][3]~172\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[2][4]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[2][3]~172\,
	combout => \u_input|debounce_cnt[2][4]~173_combout\,
	cout => \u_input|debounce_cnt[2][4]~174\);

-- Location: FF_X44_Y51_N23
\u_input|debounce_cnt[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[2][4]~173_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~3_combout\,
	ena => \u_input|debounce_cnt[2][15]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[2][4]~q\);

-- Location: LCCOMB_X44_Y51_N24
\u_input|debounce_cnt[2][5]~175\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][5]~175_combout\ = (\u_input|debounce_cnt[2][5]~q\ & (!\u_input|debounce_cnt[2][4]~174\)) # (!\u_input|debounce_cnt[2][5]~q\ & ((\u_input|debounce_cnt[2][4]~174\) # (GND)))
-- \u_input|debounce_cnt[2][5]~176\ = CARRY((!\u_input|debounce_cnt[2][4]~174\) # (!\u_input|debounce_cnt[2][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[2][5]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[2][4]~174\,
	combout => \u_input|debounce_cnt[2][5]~175_combout\,
	cout => \u_input|debounce_cnt[2][5]~176\);

-- Location: FF_X44_Y51_N25
\u_input|debounce_cnt[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[2][5]~175_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~3_combout\,
	ena => \u_input|debounce_cnt[2][15]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[2][5]~q\);

-- Location: LCCOMB_X44_Y51_N26
\u_input|debounce_cnt[2][6]~177\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][6]~177_combout\ = (\u_input|debounce_cnt[2][6]~q\ & (\u_input|debounce_cnt[2][5]~176\ $ (GND))) # (!\u_input|debounce_cnt[2][6]~q\ & (!\u_input|debounce_cnt[2][5]~176\ & VCC))
-- \u_input|debounce_cnt[2][6]~178\ = CARRY((\u_input|debounce_cnt[2][6]~q\ & !\u_input|debounce_cnt[2][5]~176\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[2][6]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[2][5]~176\,
	combout => \u_input|debounce_cnt[2][6]~177_combout\,
	cout => \u_input|debounce_cnt[2][6]~178\);

-- Location: FF_X44_Y51_N27
\u_input|debounce_cnt[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[2][6]~177_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~3_combout\,
	ena => \u_input|debounce_cnt[2][15]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[2][6]~q\);

-- Location: LCCOMB_X44_Y51_N28
\u_input|debounce_cnt[2][7]~179\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][7]~179_combout\ = (\u_input|debounce_cnt[2][7]~q\ & (!\u_input|debounce_cnt[2][6]~178\)) # (!\u_input|debounce_cnt[2][7]~q\ & ((\u_input|debounce_cnt[2][6]~178\) # (GND)))
-- \u_input|debounce_cnt[2][7]~180\ = CARRY((!\u_input|debounce_cnt[2][6]~178\) # (!\u_input|debounce_cnt[2][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[2][7]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[2][6]~178\,
	combout => \u_input|debounce_cnt[2][7]~179_combout\,
	cout => \u_input|debounce_cnt[2][7]~180\);

-- Location: FF_X44_Y51_N29
\u_input|debounce_cnt[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[2][7]~179_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~3_combout\,
	ena => \u_input|debounce_cnt[2][15]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[2][7]~q\);

-- Location: LCCOMB_X44_Y51_N30
\u_input|debounce_cnt[2][8]~181\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][8]~181_combout\ = (\u_input|debounce_cnt[2][8]~q\ & (\u_input|debounce_cnt[2][7]~180\ $ (GND))) # (!\u_input|debounce_cnt[2][8]~q\ & (!\u_input|debounce_cnt[2][7]~180\ & VCC))
-- \u_input|debounce_cnt[2][8]~182\ = CARRY((\u_input|debounce_cnt[2][8]~q\ & !\u_input|debounce_cnt[2][7]~180\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[2][8]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[2][7]~180\,
	combout => \u_input|debounce_cnt[2][8]~181_combout\,
	cout => \u_input|debounce_cnt[2][8]~182\);

-- Location: FF_X44_Y51_N31
\u_input|debounce_cnt[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[2][8]~181_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~3_combout\,
	ena => \u_input|debounce_cnt[2][15]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[2][8]~q\);

-- Location: LCCOMB_X44_Y50_N0
\u_input|debounce_cnt[2][9]~183\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][9]~183_combout\ = (\u_input|debounce_cnt[2][9]~q\ & (!\u_input|debounce_cnt[2][8]~182\)) # (!\u_input|debounce_cnt[2][9]~q\ & ((\u_input|debounce_cnt[2][8]~182\) # (GND)))
-- \u_input|debounce_cnt[2][9]~184\ = CARRY((!\u_input|debounce_cnt[2][8]~182\) # (!\u_input|debounce_cnt[2][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[2][9]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[2][8]~182\,
	combout => \u_input|debounce_cnt[2][9]~183_combout\,
	cout => \u_input|debounce_cnt[2][9]~184\);

-- Location: FF_X44_Y50_N1
\u_input|debounce_cnt[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[2][9]~183_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~3_combout\,
	ena => \u_input|debounce_cnt[2][15]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[2][9]~q\);

-- Location: LCCOMB_X44_Y50_N2
\u_input|debounce_cnt[2][10]~185\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][10]~185_combout\ = (\u_input|debounce_cnt[2][10]~q\ & (\u_input|debounce_cnt[2][9]~184\ $ (GND))) # (!\u_input|debounce_cnt[2][10]~q\ & (!\u_input|debounce_cnt[2][9]~184\ & VCC))
-- \u_input|debounce_cnt[2][10]~186\ = CARRY((\u_input|debounce_cnt[2][10]~q\ & !\u_input|debounce_cnt[2][9]~184\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[2][10]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[2][9]~184\,
	combout => \u_input|debounce_cnt[2][10]~185_combout\,
	cout => \u_input|debounce_cnt[2][10]~186\);

-- Location: FF_X44_Y50_N3
\u_input|debounce_cnt[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[2][10]~185_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~3_combout\,
	ena => \u_input|debounce_cnt[2][15]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[2][10]~q\);

-- Location: LCCOMB_X44_Y50_N4
\u_input|debounce_cnt[2][11]~187\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[2][11]~187_combout\ = (\u_input|debounce_cnt[2][11]~q\ & (!\u_input|debounce_cnt[2][10]~186\)) # (!\u_input|debounce_cnt[2][11]~q\ & ((\u_input|debounce_cnt[2][10]~186\) # (GND)))
-- \u_input|debounce_cnt[2][11]~188\ = CARRY((!\u_input|debounce_cnt[2][10]~186\) # (!\u_input|debounce_cnt[2][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[2][11]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[2][10]~186\,
	combout => \u_input|debounce_cnt[2][11]~187_combout\,
	cout => \u_input|debounce_cnt[2][11]~188\);

-- Location: FF_X44_Y50_N5
\u_input|debounce_cnt[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[2][11]~187_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~3_combout\,
	ena => \u_input|debounce_cnt[2][15]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[2][11]~q\);

-- Location: FF_X44_Y50_N7
\u_input|debounce_cnt[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[2][12]~189_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~3_combout\,
	ena => \u_input|debounce_cnt[2][15]~193_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[2][12]~q\);

-- Location: LCCOMB_X45_Y50_N28
\u_input|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal2~0_combout\ = (\u_input|debounce_cnt[2][12]~q\ & !\u_input|debounce_cnt[2][13]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_input|debounce_cnt[2][12]~q\,
	datad => \u_input|debounce_cnt[2][13]~q\,
	combout => \u_input|Equal2~0_combout\);

-- Location: LCCOMB_X44_Y51_N10
\u_input|Equal2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal2~4_combout\ = (\u_input|debounce_cnt[2][7]~q\ & (!\u_input|debounce_cnt[2][3]~q\ & (\u_input|debounce_cnt[2][4]~q\ & !\u_input|debounce_cnt[2][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[2][7]~q\,
	datab => \u_input|debounce_cnt[2][3]~q\,
	datac => \u_input|debounce_cnt[2][4]~q\,
	datad => \u_input|debounce_cnt[2][2]~q\,
	combout => \u_input|Equal2~4_combout\);

-- Location: LCCOMB_X44_Y51_N12
\u_input|Equal2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal2~3_combout\ = (!\u_input|debounce_cnt[2][6]~q\ & (!\u_input|debounce_cnt[2][5]~q\ & (!\u_input|debounce_cnt[2][0]~q\ & !\u_input|debounce_cnt[2][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[2][6]~q\,
	datab => \u_input|debounce_cnt[2][5]~q\,
	datac => \u_input|debounce_cnt[2][0]~q\,
	datad => \u_input|debounce_cnt[2][1]~q\,
	combout => \u_input|Equal2~3_combout\);

-- Location: LCCOMB_X44_Y50_N28
\u_input|Equal2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal2~5_combout\ = (\u_input|Equal2~2_combout\ & (\u_input|Equal2~1_combout\ & (\u_input|Equal2~4_combout\ & \u_input|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|Equal2~2_combout\,
	datab => \u_input|Equal2~1_combout\,
	datac => \u_input|Equal2~4_combout\,
	datad => \u_input|Equal2~3_combout\,
	combout => \u_input|Equal2~5_combout\);

-- Location: LCCOMB_X44_Y50_N22
\u_input|sw_clean[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_clean[2]~1_combout\ = (\u_input|Equal2~0_combout\ & ((\u_input|Equal2~5_combout\ & (\u_input|sw_sync2\(2))) # (!\u_input|Equal2~5_combout\ & ((\u_input|sw_clean\(2)))))) # (!\u_input|Equal2~0_combout\ & (((\u_input|sw_clean\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|Equal2~0_combout\,
	datab => \u_input|sw_sync2\(2),
	datac => \u_input|sw_clean\(2),
	datad => \u_input|Equal2~5_combout\,
	combout => \u_input|sw_clean[2]~1_combout\);

-- Location: FF_X44_Y50_N23
\u_input|sw_clean[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_clean[2]~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_clean\(2));

-- Location: LCCOMB_X45_Y51_N14
\u_input|debounce_cnt[1][0]~126\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][0]~126_combout\ = \u_input|debounce_cnt[1][0]~q\ $ (VCC)
-- \u_input|debounce_cnt[1][0]~127\ = CARRY(\u_input|debounce_cnt[1][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[1][0]~q\,
	datad => VCC,
	combout => \u_input|debounce_cnt[1][0]~126_combout\,
	cout => \u_input|debounce_cnt[1][0]~127\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X47_Y51_N0
\u_input|sw_sync1[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_sync1[1]~feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \u_input|sw_sync1[1]~feeder_combout\);

-- Location: FF_X47_Y51_N1
\u_input|sw_sync1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_sync1[1]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_sync1\(1));

-- Location: FF_X46_Y50_N5
\u_input|sw_sync2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_input|sw_sync1\(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_sync2\(1));

-- Location: LCCOMB_X45_Y50_N26
\u_input|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|process_0~2_combout\ = \u_input|sw_sync2\(1) $ (\u_input|sw_clean\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_input|sw_sync2\(1),
	datac => \u_input|sw_clean\(1),
	combout => \u_input|process_0~2_combout\);

-- Location: LCCOMB_X45_Y50_N8
\u_input|debounce_cnt[1][13]~155\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][13]~155_combout\ = (\u_input|debounce_cnt[1][13]~q\ & (!\u_input|debounce_cnt[1][12]~151\)) # (!\u_input|debounce_cnt[1][13]~q\ & ((\u_input|debounce_cnt[1][12]~151\) # (GND)))
-- \u_input|debounce_cnt[1][13]~156\ = CARRY((!\u_input|debounce_cnt[1][12]~151\) # (!\u_input|debounce_cnt[1][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[1][13]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[1][12]~151\,
	combout => \u_input|debounce_cnt[1][13]~155_combout\,
	cout => \u_input|debounce_cnt[1][13]~156\);

-- Location: LCCOMB_X45_Y50_N10
\u_input|debounce_cnt[1][14]~157\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][14]~157_combout\ = (\u_input|debounce_cnt[1][14]~q\ & (\u_input|debounce_cnt[1][13]~156\ $ (GND))) # (!\u_input|debounce_cnt[1][14]~q\ & (!\u_input|debounce_cnt[1][13]~156\ & VCC))
-- \u_input|debounce_cnt[1][14]~158\ = CARRY((\u_input|debounce_cnt[1][14]~q\ & !\u_input|debounce_cnt[1][13]~156\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[1][14]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[1][13]~156\,
	combout => \u_input|debounce_cnt[1][14]~157_combout\,
	cout => \u_input|debounce_cnt[1][14]~158\);

-- Location: FF_X45_Y50_N11
\u_input|debounce_cnt[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[1][14]~157_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~2_combout\,
	ena => \u_input|debounce_cnt[1][17]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[1][14]~q\);

-- Location: LCCOMB_X45_Y50_N12
\u_input|debounce_cnt[1][15]~159\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][15]~159_combout\ = (\u_input|debounce_cnt[1][15]~q\ & (!\u_input|debounce_cnt[1][14]~158\)) # (!\u_input|debounce_cnt[1][15]~q\ & ((\u_input|debounce_cnt[1][14]~158\) # (GND)))
-- \u_input|debounce_cnt[1][15]~160\ = CARRY((!\u_input|debounce_cnt[1][14]~158\) # (!\u_input|debounce_cnt[1][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[1][15]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[1][14]~158\,
	combout => \u_input|debounce_cnt[1][15]~159_combout\,
	cout => \u_input|debounce_cnt[1][15]~160\);

-- Location: FF_X45_Y50_N13
\u_input|debounce_cnt[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[1][15]~159_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~2_combout\,
	ena => \u_input|debounce_cnt[1][17]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[1][15]~q\);

-- Location: LCCOMB_X45_Y50_N14
\u_input|debounce_cnt[1][16]~161\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][16]~161_combout\ = (\u_input|debounce_cnt[1][16]~q\ & (\u_input|debounce_cnt[1][15]~160\ $ (GND))) # (!\u_input|debounce_cnt[1][16]~q\ & (!\u_input|debounce_cnt[1][15]~160\ & VCC))
-- \u_input|debounce_cnt[1][16]~162\ = CARRY((\u_input|debounce_cnt[1][16]~q\ & !\u_input|debounce_cnt[1][15]~160\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[1][16]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[1][15]~160\,
	combout => \u_input|debounce_cnt[1][16]~161_combout\,
	cout => \u_input|debounce_cnt[1][16]~162\);

-- Location: FF_X45_Y50_N15
\u_input|debounce_cnt[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[1][16]~161_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~2_combout\,
	ena => \u_input|debounce_cnt[1][17]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[1][16]~q\);

-- Location: LCCOMB_X45_Y50_N16
\u_input|debounce_cnt[1][17]~163\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][17]~163_combout\ = \u_input|debounce_cnt[1][16]~162\ $ (\u_input|debounce_cnt[1][17]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_input|debounce_cnt[1][17]~q\,
	cin => \u_input|debounce_cnt[1][16]~162\,
	combout => \u_input|debounce_cnt[1][17]~163_combout\);

-- Location: FF_X45_Y50_N17
\u_input|debounce_cnt[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[1][17]~163_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~2_combout\,
	ena => \u_input|debounce_cnt[1][17]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[1][17]~q\);

-- Location: LCCOMB_X45_Y50_N24
\u_input|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal1~2_combout\ = (\u_input|debounce_cnt[1][14]~q\ & (\u_input|debounce_cnt[1][17]~q\ & (\u_input|debounce_cnt[1][16]~q\ & \u_input|debounce_cnt[1][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[1][14]~q\,
	datab => \u_input|debounce_cnt[1][17]~q\,
	datac => \u_input|debounce_cnt[1][16]~q\,
	datad => \u_input|debounce_cnt[1][15]~q\,
	combout => \u_input|Equal1~2_combout\);

-- Location: LCCOMB_X45_Y51_N8
\u_input|debounce_cnt[1][17]~152\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][17]~152_combout\ = (\u_input|debounce_cnt[1][7]~q\ & ((\u_input|debounce_cnt[1][4]~q\) # ((\u_input|debounce_cnt[1][5]~q\) # (\u_input|debounce_cnt[1][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[1][4]~q\,
	datab => \u_input|debounce_cnt[1][5]~q\,
	datac => \u_input|debounce_cnt[1][6]~q\,
	datad => \u_input|debounce_cnt[1][7]~q\,
	combout => \u_input|debounce_cnt[1][17]~152_combout\);

-- Location: LCCOMB_X45_Y50_N22
\u_input|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal1~1_combout\ = (!\u_input|debounce_cnt[1][8]~q\ & (!\u_input|debounce_cnt[1][10]~q\ & (!\u_input|debounce_cnt[1][11]~q\ & !\u_input|debounce_cnt[1][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[1][8]~q\,
	datab => \u_input|debounce_cnt[1][10]~q\,
	datac => \u_input|debounce_cnt[1][11]~q\,
	datad => \u_input|debounce_cnt[1][9]~q\,
	combout => \u_input|Equal1~1_combout\);

-- Location: LCCOMB_X46_Y50_N24
\u_input|debounce_cnt[1][17]~153\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][17]~153_combout\ = (\u_input|debounce_cnt[1][13]~q\) # ((\u_input|debounce_cnt[1][12]~q\ & ((\u_input|debounce_cnt[1][17]~152_combout\) # (!\u_input|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[1][13]~q\,
	datab => \u_input|debounce_cnt[1][12]~q\,
	datac => \u_input|debounce_cnt[1][17]~152_combout\,
	datad => \u_input|Equal1~1_combout\,
	combout => \u_input|debounce_cnt[1][17]~153_combout\);

-- Location: LCCOMB_X46_Y50_N4
\u_input|debounce_cnt[1][17]~154\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][17]~154_combout\ = ((\u_input|sw_clean\(1) $ (\u_input|sw_sync2\(1))) # (!\u_input|debounce_cnt[1][17]~153_combout\)) # (!\u_input|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|Equal1~2_combout\,
	datab => \u_input|sw_clean\(1),
	datac => \u_input|sw_sync2\(1),
	datad => \u_input|debounce_cnt[1][17]~153_combout\,
	combout => \u_input|debounce_cnt[1][17]~154_combout\);

-- Location: FF_X45_Y51_N15
\u_input|debounce_cnt[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[1][0]~126_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~2_combout\,
	ena => \u_input|debounce_cnt[1][17]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[1][0]~q\);

-- Location: LCCOMB_X45_Y51_N16
\u_input|debounce_cnt[1][1]~128\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][1]~128_combout\ = (\u_input|debounce_cnt[1][1]~q\ & (!\u_input|debounce_cnt[1][0]~127\)) # (!\u_input|debounce_cnt[1][1]~q\ & ((\u_input|debounce_cnt[1][0]~127\) # (GND)))
-- \u_input|debounce_cnt[1][1]~129\ = CARRY((!\u_input|debounce_cnt[1][0]~127\) # (!\u_input|debounce_cnt[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[1][1]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[1][0]~127\,
	combout => \u_input|debounce_cnt[1][1]~128_combout\,
	cout => \u_input|debounce_cnt[1][1]~129\);

-- Location: FF_X45_Y51_N17
\u_input|debounce_cnt[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[1][1]~128_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~2_combout\,
	ena => \u_input|debounce_cnt[1][17]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[1][1]~q\);

-- Location: LCCOMB_X45_Y51_N18
\u_input|debounce_cnt[1][2]~130\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][2]~130_combout\ = (\u_input|debounce_cnt[1][2]~q\ & (\u_input|debounce_cnt[1][1]~129\ $ (GND))) # (!\u_input|debounce_cnt[1][2]~q\ & (!\u_input|debounce_cnt[1][1]~129\ & VCC))
-- \u_input|debounce_cnt[1][2]~131\ = CARRY((\u_input|debounce_cnt[1][2]~q\ & !\u_input|debounce_cnt[1][1]~129\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[1][2]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[1][1]~129\,
	combout => \u_input|debounce_cnt[1][2]~130_combout\,
	cout => \u_input|debounce_cnt[1][2]~131\);

-- Location: FF_X45_Y51_N19
\u_input|debounce_cnt[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[1][2]~130_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~2_combout\,
	ena => \u_input|debounce_cnt[1][17]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[1][2]~q\);

-- Location: LCCOMB_X45_Y51_N20
\u_input|debounce_cnt[1][3]~132\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][3]~132_combout\ = (\u_input|debounce_cnt[1][3]~q\ & (!\u_input|debounce_cnt[1][2]~131\)) # (!\u_input|debounce_cnt[1][3]~q\ & ((\u_input|debounce_cnt[1][2]~131\) # (GND)))
-- \u_input|debounce_cnt[1][3]~133\ = CARRY((!\u_input|debounce_cnt[1][2]~131\) # (!\u_input|debounce_cnt[1][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[1][3]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[1][2]~131\,
	combout => \u_input|debounce_cnt[1][3]~132_combout\,
	cout => \u_input|debounce_cnt[1][3]~133\);

-- Location: FF_X45_Y51_N21
\u_input|debounce_cnt[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[1][3]~132_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~2_combout\,
	ena => \u_input|debounce_cnt[1][17]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[1][3]~q\);

-- Location: LCCOMB_X45_Y51_N22
\u_input|debounce_cnt[1][4]~134\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][4]~134_combout\ = (\u_input|debounce_cnt[1][4]~q\ & (\u_input|debounce_cnt[1][3]~133\ $ (GND))) # (!\u_input|debounce_cnt[1][4]~q\ & (!\u_input|debounce_cnt[1][3]~133\ & VCC))
-- \u_input|debounce_cnt[1][4]~135\ = CARRY((\u_input|debounce_cnt[1][4]~q\ & !\u_input|debounce_cnt[1][3]~133\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[1][4]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[1][3]~133\,
	combout => \u_input|debounce_cnt[1][4]~134_combout\,
	cout => \u_input|debounce_cnt[1][4]~135\);

-- Location: FF_X45_Y51_N23
\u_input|debounce_cnt[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[1][4]~134_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~2_combout\,
	ena => \u_input|debounce_cnt[1][17]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[1][4]~q\);

-- Location: LCCOMB_X45_Y51_N24
\u_input|debounce_cnt[1][5]~136\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][5]~136_combout\ = (\u_input|debounce_cnt[1][5]~q\ & (!\u_input|debounce_cnt[1][4]~135\)) # (!\u_input|debounce_cnt[1][5]~q\ & ((\u_input|debounce_cnt[1][4]~135\) # (GND)))
-- \u_input|debounce_cnt[1][5]~137\ = CARRY((!\u_input|debounce_cnt[1][4]~135\) # (!\u_input|debounce_cnt[1][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[1][5]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[1][4]~135\,
	combout => \u_input|debounce_cnt[1][5]~136_combout\,
	cout => \u_input|debounce_cnt[1][5]~137\);

-- Location: FF_X45_Y51_N25
\u_input|debounce_cnt[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[1][5]~136_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~2_combout\,
	ena => \u_input|debounce_cnt[1][17]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[1][5]~q\);

-- Location: LCCOMB_X45_Y51_N26
\u_input|debounce_cnt[1][6]~138\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][6]~138_combout\ = (\u_input|debounce_cnt[1][6]~q\ & (\u_input|debounce_cnt[1][5]~137\ $ (GND))) # (!\u_input|debounce_cnt[1][6]~q\ & (!\u_input|debounce_cnt[1][5]~137\ & VCC))
-- \u_input|debounce_cnt[1][6]~139\ = CARRY((\u_input|debounce_cnt[1][6]~q\ & !\u_input|debounce_cnt[1][5]~137\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[1][6]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[1][5]~137\,
	combout => \u_input|debounce_cnt[1][6]~138_combout\,
	cout => \u_input|debounce_cnt[1][6]~139\);

-- Location: FF_X45_Y51_N27
\u_input|debounce_cnt[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[1][6]~138_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~2_combout\,
	ena => \u_input|debounce_cnt[1][17]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[1][6]~q\);

-- Location: LCCOMB_X45_Y51_N28
\u_input|debounce_cnt[1][7]~140\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][7]~140_combout\ = (\u_input|debounce_cnt[1][7]~q\ & (!\u_input|debounce_cnt[1][6]~139\)) # (!\u_input|debounce_cnt[1][7]~q\ & ((\u_input|debounce_cnt[1][6]~139\) # (GND)))
-- \u_input|debounce_cnt[1][7]~141\ = CARRY((!\u_input|debounce_cnt[1][6]~139\) # (!\u_input|debounce_cnt[1][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[1][7]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[1][6]~139\,
	combout => \u_input|debounce_cnt[1][7]~140_combout\,
	cout => \u_input|debounce_cnt[1][7]~141\);

-- Location: FF_X45_Y51_N29
\u_input|debounce_cnt[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[1][7]~140_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~2_combout\,
	ena => \u_input|debounce_cnt[1][17]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[1][7]~q\);

-- Location: LCCOMB_X45_Y51_N30
\u_input|debounce_cnt[1][8]~142\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][8]~142_combout\ = (\u_input|debounce_cnt[1][8]~q\ & (\u_input|debounce_cnt[1][7]~141\ $ (GND))) # (!\u_input|debounce_cnt[1][8]~q\ & (!\u_input|debounce_cnt[1][7]~141\ & VCC))
-- \u_input|debounce_cnt[1][8]~143\ = CARRY((\u_input|debounce_cnt[1][8]~q\ & !\u_input|debounce_cnt[1][7]~141\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[1][8]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[1][7]~141\,
	combout => \u_input|debounce_cnt[1][8]~142_combout\,
	cout => \u_input|debounce_cnt[1][8]~143\);

-- Location: FF_X45_Y51_N31
\u_input|debounce_cnt[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[1][8]~142_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~2_combout\,
	ena => \u_input|debounce_cnt[1][17]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[1][8]~q\);

-- Location: LCCOMB_X45_Y50_N0
\u_input|debounce_cnt[1][9]~144\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][9]~144_combout\ = (\u_input|debounce_cnt[1][9]~q\ & (!\u_input|debounce_cnt[1][8]~143\)) # (!\u_input|debounce_cnt[1][9]~q\ & ((\u_input|debounce_cnt[1][8]~143\) # (GND)))
-- \u_input|debounce_cnt[1][9]~145\ = CARRY((!\u_input|debounce_cnt[1][8]~143\) # (!\u_input|debounce_cnt[1][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[1][9]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[1][8]~143\,
	combout => \u_input|debounce_cnt[1][9]~144_combout\,
	cout => \u_input|debounce_cnt[1][9]~145\);

-- Location: FF_X45_Y50_N1
\u_input|debounce_cnt[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[1][9]~144_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~2_combout\,
	ena => \u_input|debounce_cnt[1][17]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[1][9]~q\);

-- Location: LCCOMB_X45_Y50_N2
\u_input|debounce_cnt[1][10]~146\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][10]~146_combout\ = (\u_input|debounce_cnt[1][10]~q\ & (\u_input|debounce_cnt[1][9]~145\ $ (GND))) # (!\u_input|debounce_cnt[1][10]~q\ & (!\u_input|debounce_cnt[1][9]~145\ & VCC))
-- \u_input|debounce_cnt[1][10]~147\ = CARRY((\u_input|debounce_cnt[1][10]~q\ & !\u_input|debounce_cnt[1][9]~145\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[1][10]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[1][9]~145\,
	combout => \u_input|debounce_cnt[1][10]~146_combout\,
	cout => \u_input|debounce_cnt[1][10]~147\);

-- Location: FF_X45_Y50_N3
\u_input|debounce_cnt[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[1][10]~146_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~2_combout\,
	ena => \u_input|debounce_cnt[1][17]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[1][10]~q\);

-- Location: LCCOMB_X45_Y50_N4
\u_input|debounce_cnt[1][11]~148\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][11]~148_combout\ = (\u_input|debounce_cnt[1][11]~q\ & (!\u_input|debounce_cnt[1][10]~147\)) # (!\u_input|debounce_cnt[1][11]~q\ & ((\u_input|debounce_cnt[1][10]~147\) # (GND)))
-- \u_input|debounce_cnt[1][11]~149\ = CARRY((!\u_input|debounce_cnt[1][10]~147\) # (!\u_input|debounce_cnt[1][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[1][11]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[1][10]~147\,
	combout => \u_input|debounce_cnt[1][11]~148_combout\,
	cout => \u_input|debounce_cnt[1][11]~149\);

-- Location: FF_X45_Y50_N5
\u_input|debounce_cnt[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[1][11]~148_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~2_combout\,
	ena => \u_input|debounce_cnt[1][17]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[1][11]~q\);

-- Location: LCCOMB_X45_Y50_N6
\u_input|debounce_cnt[1][12]~150\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[1][12]~150_combout\ = (\u_input|debounce_cnt[1][12]~q\ & (\u_input|debounce_cnt[1][11]~149\ $ (GND))) # (!\u_input|debounce_cnt[1][12]~q\ & (!\u_input|debounce_cnt[1][11]~149\ & VCC))
-- \u_input|debounce_cnt[1][12]~151\ = CARRY((\u_input|debounce_cnt[1][12]~q\ & !\u_input|debounce_cnt[1][11]~149\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[1][12]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[1][11]~149\,
	combout => \u_input|debounce_cnt[1][12]~150_combout\,
	cout => \u_input|debounce_cnt[1][12]~151\);

-- Location: FF_X45_Y50_N7
\u_input|debounce_cnt[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[1][12]~150_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~2_combout\,
	ena => \u_input|debounce_cnt[1][17]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[1][12]~q\);

-- Location: FF_X45_Y50_N9
\u_input|debounce_cnt[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[1][13]~155_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~2_combout\,
	ena => \u_input|debounce_cnt[1][17]~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[1][13]~q\);

-- Location: LCCOMB_X45_Y50_N20
\u_input|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal1~0_combout\ = (!\u_input|debounce_cnt[1][13]~q\ & \u_input|debounce_cnt[1][12]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_input|debounce_cnt[1][13]~q\,
	datad => \u_input|debounce_cnt[1][12]~q\,
	combout => \u_input|Equal1~0_combout\);

-- Location: LCCOMB_X45_Y51_N10
\u_input|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal1~4_combout\ = (!\u_input|debounce_cnt[1][3]~q\ & (\u_input|debounce_cnt[1][7]~q\ & (\u_input|debounce_cnt[1][4]~q\ & !\u_input|debounce_cnt[1][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[1][3]~q\,
	datab => \u_input|debounce_cnt[1][7]~q\,
	datac => \u_input|debounce_cnt[1][4]~q\,
	datad => \u_input|debounce_cnt[1][2]~q\,
	combout => \u_input|Equal1~4_combout\);

-- Location: LCCOMB_X45_Y51_N4
\u_input|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal1~3_combout\ = (!\u_input|debounce_cnt[1][6]~q\ & (!\u_input|debounce_cnt[1][5]~q\ & (!\u_input|debounce_cnt[1][0]~q\ & !\u_input|debounce_cnt[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[1][6]~q\,
	datab => \u_input|debounce_cnt[1][5]~q\,
	datac => \u_input|debounce_cnt[1][0]~q\,
	datad => \u_input|debounce_cnt[1][1]~q\,
	combout => \u_input|Equal1~3_combout\);

-- Location: LCCOMB_X45_Y50_N18
\u_input|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal1~5_combout\ = (\u_input|Equal1~1_combout\ & (\u_input|Equal1~2_combout\ & (\u_input|Equal1~4_combout\ & \u_input|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|Equal1~1_combout\,
	datab => \u_input|Equal1~2_combout\,
	datac => \u_input|Equal1~4_combout\,
	datad => \u_input|Equal1~3_combout\,
	combout => \u_input|Equal1~5_combout\);

-- Location: LCCOMB_X45_Y50_N30
\u_input|sw_clean[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_clean[1]~0_combout\ = (\u_input|Equal1~0_combout\ & ((\u_input|Equal1~5_combout\ & (\u_input|sw_sync2\(1))) # (!\u_input|Equal1~5_combout\ & ((\u_input|sw_clean\(1)))))) # (!\u_input|Equal1~0_combout\ & (((\u_input|sw_clean\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|Equal1~0_combout\,
	datab => \u_input|sw_sync2\(1),
	datac => \u_input|sw_clean\(1),
	datad => \u_input|Equal1~5_combout\,
	combout => \u_input|sw_clean[1]~0_combout\);

-- Location: FF_X45_Y50_N31
\u_input|sw_clean[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_clean[1]~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_clean\(1));

-- Location: FF_X46_Y50_N21
\u_input|sw_prev_clean[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_input|sw_clean\(2),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_prev_clean\(2));

-- Location: FF_X46_Y50_N7
\u_input|sw_prev_clean[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_input|sw_clean\(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_prev_clean\(1));

-- Location: LCCOMB_X46_Y50_N20
\u_input|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|process_0~0_combout\ = (\u_input|sw_clean\(2) & (\u_input|sw_prev_clean\(2) & ((\u_input|sw_prev_clean\(1)) # (!\u_input|sw_clean\(1))))) # (!\u_input|sw_clean\(2) & (((\u_input|sw_prev_clean\(1))) # (!\u_input|sw_clean\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|sw_clean\(2),
	datab => \u_input|sw_clean\(1),
	datac => \u_input|sw_prev_clean\(2),
	datad => \u_input|sw_prev_clean\(1),
	combout => \u_input|process_0~0_combout\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X47_Y53_N6
\u_input|sw_sync1[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_sync1[3]~feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \u_input|sw_sync1[3]~feeder_combout\);

-- Location: FF_X47_Y53_N7
\u_input|sw_sync1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_sync1[3]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_sync1\(3));

-- Location: LCCOMB_X46_Y50_N28
\u_input|sw_sync2[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_sync2[3]~feeder_combout\ = \u_input|sw_sync1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_input|sw_sync1\(3),
	combout => \u_input|sw_sync2[3]~feeder_combout\);

-- Location: FF_X46_Y50_N29
\u_input|sw_sync2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_sync2[3]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_sync2\(3));

-- Location: LCCOMB_X46_Y49_N14
\u_input|debounce_cnt[3][0]~204\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][0]~204_combout\ = \u_input|debounce_cnt[3][0]~q\ $ (VCC)
-- \u_input|debounce_cnt[3][0]~205\ = CARRY(\u_input|debounce_cnt[3][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[3][0]~q\,
	datad => VCC,
	combout => \u_input|debounce_cnt[3][0]~204_combout\,
	cout => \u_input|debounce_cnt[3][0]~205\);

-- Location: LCCOMB_X46_Y48_N26
\u_input|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|process_0~4_combout\ = \u_input|sw_clean\(3) $ (\u_input|sw_sync2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_input|sw_clean\(3),
	datac => \u_input|sw_sync2\(3),
	combout => \u_input|process_0~4_combout\);

-- Location: LCCOMB_X46_Y48_N6
\u_input|debounce_cnt[3][12]~228\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][12]~228_combout\ = (\u_input|debounce_cnt[3][12]~q\ & (\u_input|debounce_cnt[3][11]~227\ $ (GND))) # (!\u_input|debounce_cnt[3][12]~q\ & (!\u_input|debounce_cnt[3][11]~227\ & VCC))
-- \u_input|debounce_cnt[3][12]~229\ = CARRY((\u_input|debounce_cnt[3][12]~q\ & !\u_input|debounce_cnt[3][11]~227\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[3][12]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[3][11]~227\,
	combout => \u_input|debounce_cnt[3][12]~228_combout\,
	cout => \u_input|debounce_cnt[3][12]~229\);

-- Location: LCCOMB_X46_Y48_N8
\u_input|debounce_cnt[3][13]~233\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][13]~233_combout\ = (\u_input|debounce_cnt[3][13]~q\ & (!\u_input|debounce_cnt[3][12]~229\)) # (!\u_input|debounce_cnt[3][13]~q\ & ((\u_input|debounce_cnt[3][12]~229\) # (GND)))
-- \u_input|debounce_cnt[3][13]~234\ = CARRY((!\u_input|debounce_cnt[3][12]~229\) # (!\u_input|debounce_cnt[3][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[3][13]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[3][12]~229\,
	combout => \u_input|debounce_cnt[3][13]~233_combout\,
	cout => \u_input|debounce_cnt[3][13]~234\);

-- Location: FF_X46_Y48_N9
\u_input|debounce_cnt[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[3][13]~233_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~4_combout\,
	ena => \u_input|debounce_cnt[3][10]~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[3][13]~q\);

-- Location: LCCOMB_X46_Y48_N10
\u_input|debounce_cnt[3][14]~235\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][14]~235_combout\ = (\u_input|debounce_cnt[3][14]~q\ & (\u_input|debounce_cnt[3][13]~234\ $ (GND))) # (!\u_input|debounce_cnt[3][14]~q\ & (!\u_input|debounce_cnt[3][13]~234\ & VCC))
-- \u_input|debounce_cnt[3][14]~236\ = CARRY((\u_input|debounce_cnt[3][14]~q\ & !\u_input|debounce_cnt[3][13]~234\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[3][14]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[3][13]~234\,
	combout => \u_input|debounce_cnt[3][14]~235_combout\,
	cout => \u_input|debounce_cnt[3][14]~236\);

-- Location: FF_X46_Y48_N11
\u_input|debounce_cnt[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[3][14]~235_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~4_combout\,
	ena => \u_input|debounce_cnt[3][10]~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[3][14]~q\);

-- Location: LCCOMB_X46_Y48_N12
\u_input|debounce_cnt[3][15]~237\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][15]~237_combout\ = (\u_input|debounce_cnt[3][15]~q\ & (!\u_input|debounce_cnt[3][14]~236\)) # (!\u_input|debounce_cnt[3][15]~q\ & ((\u_input|debounce_cnt[3][14]~236\) # (GND)))
-- \u_input|debounce_cnt[3][15]~238\ = CARRY((!\u_input|debounce_cnt[3][14]~236\) # (!\u_input|debounce_cnt[3][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[3][15]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[3][14]~236\,
	combout => \u_input|debounce_cnt[3][15]~237_combout\,
	cout => \u_input|debounce_cnt[3][15]~238\);

-- Location: FF_X46_Y48_N13
\u_input|debounce_cnt[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[3][15]~237_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~4_combout\,
	ena => \u_input|debounce_cnt[3][10]~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[3][15]~q\);

-- Location: LCCOMB_X46_Y48_N14
\u_input|debounce_cnt[3][16]~239\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][16]~239_combout\ = (\u_input|debounce_cnt[3][16]~q\ & (\u_input|debounce_cnt[3][15]~238\ $ (GND))) # (!\u_input|debounce_cnt[3][16]~q\ & (!\u_input|debounce_cnt[3][15]~238\ & VCC))
-- \u_input|debounce_cnt[3][16]~240\ = CARRY((\u_input|debounce_cnt[3][16]~q\ & !\u_input|debounce_cnt[3][15]~238\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[3][16]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[3][15]~238\,
	combout => \u_input|debounce_cnt[3][16]~239_combout\,
	cout => \u_input|debounce_cnt[3][16]~240\);

-- Location: FF_X46_Y48_N15
\u_input|debounce_cnt[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[3][16]~239_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~4_combout\,
	ena => \u_input|debounce_cnt[3][10]~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[3][16]~q\);

-- Location: LCCOMB_X46_Y48_N16
\u_input|debounce_cnt[3][17]~241\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][17]~241_combout\ = \u_input|debounce_cnt[3][16]~240\ $ (\u_input|debounce_cnt[3][17]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_input|debounce_cnt[3][17]~q\,
	cin => \u_input|debounce_cnt[3][16]~240\,
	combout => \u_input|debounce_cnt[3][17]~241_combout\);

-- Location: FF_X46_Y48_N17
\u_input|debounce_cnt[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[3][17]~241_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~4_combout\,
	ena => \u_input|debounce_cnt[3][10]~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[3][17]~q\);

-- Location: LCCOMB_X46_Y48_N30
\u_input|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal3~2_combout\ = (\u_input|debounce_cnt[3][14]~q\ & (\u_input|debounce_cnt[3][17]~q\ & (\u_input|debounce_cnt[3][16]~q\ & \u_input|debounce_cnt[3][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[3][14]~q\,
	datab => \u_input|debounce_cnt[3][17]~q\,
	datac => \u_input|debounce_cnt[3][16]~q\,
	datad => \u_input|debounce_cnt[3][15]~q\,
	combout => \u_input|Equal3~2_combout\);

-- Location: LCCOMB_X46_Y48_N28
\u_input|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal3~1_combout\ = (!\u_input|debounce_cnt[3][8]~q\ & (!\u_input|debounce_cnt[3][10]~q\ & (!\u_input|debounce_cnt[3][11]~q\ & !\u_input|debounce_cnt[3][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[3][8]~q\,
	datab => \u_input|debounce_cnt[3][10]~q\,
	datac => \u_input|debounce_cnt[3][11]~q\,
	datad => \u_input|debounce_cnt[3][9]~q\,
	combout => \u_input|Equal3~1_combout\);

-- Location: LCCOMB_X46_Y49_N8
\u_input|debounce_cnt[3][10]~230\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][10]~230_combout\ = (\u_input|debounce_cnt[3][7]~q\ & ((\u_input|debounce_cnt[3][6]~q\) # ((\u_input|debounce_cnt[3][4]~q\) # (\u_input|debounce_cnt[3][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[3][6]~q\,
	datab => \u_input|debounce_cnt[3][7]~q\,
	datac => \u_input|debounce_cnt[3][4]~q\,
	datad => \u_input|debounce_cnt[3][5]~q\,
	combout => \u_input|debounce_cnt[3][10]~230_combout\);

-- Location: LCCOMB_X46_Y48_N24
\u_input|debounce_cnt[3][10]~231\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][10]~231_combout\ = (\u_input|debounce_cnt[3][13]~q\) # ((\u_input|debounce_cnt[3][12]~q\ & ((\u_input|debounce_cnt[3][10]~230_combout\) # (!\u_input|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[3][12]~q\,
	datab => \u_input|Equal3~1_combout\,
	datac => \u_input|debounce_cnt[3][13]~q\,
	datad => \u_input|debounce_cnt[3][10]~230_combout\,
	combout => \u_input|debounce_cnt[3][10]~231_combout\);

-- Location: LCCOMB_X46_Y48_N22
\u_input|debounce_cnt[3][10]~232\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][10]~232_combout\ = ((\u_input|sw_clean\(3) $ (\u_input|sw_sync2\(3))) # (!\u_input|debounce_cnt[3][10]~231_combout\)) # (!\u_input|Equal3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|Equal3~2_combout\,
	datab => \u_input|sw_clean\(3),
	datac => \u_input|sw_sync2\(3),
	datad => \u_input|debounce_cnt[3][10]~231_combout\,
	combout => \u_input|debounce_cnt[3][10]~232_combout\);

-- Location: FF_X46_Y49_N15
\u_input|debounce_cnt[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[3][0]~204_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~4_combout\,
	ena => \u_input|debounce_cnt[3][10]~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[3][0]~q\);

-- Location: LCCOMB_X46_Y49_N16
\u_input|debounce_cnt[3][1]~206\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][1]~206_combout\ = (\u_input|debounce_cnt[3][1]~q\ & (!\u_input|debounce_cnt[3][0]~205\)) # (!\u_input|debounce_cnt[3][1]~q\ & ((\u_input|debounce_cnt[3][0]~205\) # (GND)))
-- \u_input|debounce_cnt[3][1]~207\ = CARRY((!\u_input|debounce_cnt[3][0]~205\) # (!\u_input|debounce_cnt[3][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[3][1]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[3][0]~205\,
	combout => \u_input|debounce_cnt[3][1]~206_combout\,
	cout => \u_input|debounce_cnt[3][1]~207\);

-- Location: FF_X46_Y49_N17
\u_input|debounce_cnt[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[3][1]~206_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~4_combout\,
	ena => \u_input|debounce_cnt[3][10]~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[3][1]~q\);

-- Location: LCCOMB_X46_Y49_N18
\u_input|debounce_cnt[3][2]~208\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][2]~208_combout\ = (\u_input|debounce_cnt[3][2]~q\ & (\u_input|debounce_cnt[3][1]~207\ $ (GND))) # (!\u_input|debounce_cnt[3][2]~q\ & (!\u_input|debounce_cnt[3][1]~207\ & VCC))
-- \u_input|debounce_cnt[3][2]~209\ = CARRY((\u_input|debounce_cnt[3][2]~q\ & !\u_input|debounce_cnt[3][1]~207\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[3][2]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[3][1]~207\,
	combout => \u_input|debounce_cnt[3][2]~208_combout\,
	cout => \u_input|debounce_cnt[3][2]~209\);

-- Location: FF_X46_Y49_N19
\u_input|debounce_cnt[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[3][2]~208_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~4_combout\,
	ena => \u_input|debounce_cnt[3][10]~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[3][2]~q\);

-- Location: LCCOMB_X46_Y49_N20
\u_input|debounce_cnt[3][3]~210\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][3]~210_combout\ = (\u_input|debounce_cnt[3][3]~q\ & (!\u_input|debounce_cnt[3][2]~209\)) # (!\u_input|debounce_cnt[3][3]~q\ & ((\u_input|debounce_cnt[3][2]~209\) # (GND)))
-- \u_input|debounce_cnt[3][3]~211\ = CARRY((!\u_input|debounce_cnt[3][2]~209\) # (!\u_input|debounce_cnt[3][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[3][3]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[3][2]~209\,
	combout => \u_input|debounce_cnt[3][3]~210_combout\,
	cout => \u_input|debounce_cnt[3][3]~211\);

-- Location: FF_X46_Y49_N21
\u_input|debounce_cnt[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[3][3]~210_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~4_combout\,
	ena => \u_input|debounce_cnt[3][10]~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[3][3]~q\);

-- Location: LCCOMB_X46_Y49_N22
\u_input|debounce_cnt[3][4]~212\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][4]~212_combout\ = (\u_input|debounce_cnt[3][4]~q\ & (\u_input|debounce_cnt[3][3]~211\ $ (GND))) # (!\u_input|debounce_cnt[3][4]~q\ & (!\u_input|debounce_cnt[3][3]~211\ & VCC))
-- \u_input|debounce_cnt[3][4]~213\ = CARRY((\u_input|debounce_cnt[3][4]~q\ & !\u_input|debounce_cnt[3][3]~211\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[3][4]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[3][3]~211\,
	combout => \u_input|debounce_cnt[3][4]~212_combout\,
	cout => \u_input|debounce_cnt[3][4]~213\);

-- Location: FF_X46_Y49_N23
\u_input|debounce_cnt[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[3][4]~212_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~4_combout\,
	ena => \u_input|debounce_cnt[3][10]~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[3][4]~q\);

-- Location: LCCOMB_X46_Y49_N24
\u_input|debounce_cnt[3][5]~214\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][5]~214_combout\ = (\u_input|debounce_cnt[3][5]~q\ & (!\u_input|debounce_cnt[3][4]~213\)) # (!\u_input|debounce_cnt[3][5]~q\ & ((\u_input|debounce_cnt[3][4]~213\) # (GND)))
-- \u_input|debounce_cnt[3][5]~215\ = CARRY((!\u_input|debounce_cnt[3][4]~213\) # (!\u_input|debounce_cnt[3][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[3][5]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[3][4]~213\,
	combout => \u_input|debounce_cnt[3][5]~214_combout\,
	cout => \u_input|debounce_cnt[3][5]~215\);

-- Location: FF_X46_Y49_N25
\u_input|debounce_cnt[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[3][5]~214_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~4_combout\,
	ena => \u_input|debounce_cnt[3][10]~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[3][5]~q\);

-- Location: LCCOMB_X46_Y49_N26
\u_input|debounce_cnt[3][6]~216\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][6]~216_combout\ = (\u_input|debounce_cnt[3][6]~q\ & (\u_input|debounce_cnt[3][5]~215\ $ (GND))) # (!\u_input|debounce_cnt[3][6]~q\ & (!\u_input|debounce_cnt[3][5]~215\ & VCC))
-- \u_input|debounce_cnt[3][6]~217\ = CARRY((\u_input|debounce_cnt[3][6]~q\ & !\u_input|debounce_cnt[3][5]~215\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[3][6]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[3][5]~215\,
	combout => \u_input|debounce_cnt[3][6]~216_combout\,
	cout => \u_input|debounce_cnt[3][6]~217\);

-- Location: FF_X46_Y49_N27
\u_input|debounce_cnt[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[3][6]~216_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~4_combout\,
	ena => \u_input|debounce_cnt[3][10]~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[3][6]~q\);

-- Location: LCCOMB_X46_Y49_N28
\u_input|debounce_cnt[3][7]~218\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][7]~218_combout\ = (\u_input|debounce_cnt[3][7]~q\ & (!\u_input|debounce_cnt[3][6]~217\)) # (!\u_input|debounce_cnt[3][7]~q\ & ((\u_input|debounce_cnt[3][6]~217\) # (GND)))
-- \u_input|debounce_cnt[3][7]~219\ = CARRY((!\u_input|debounce_cnt[3][6]~217\) # (!\u_input|debounce_cnt[3][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[3][7]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[3][6]~217\,
	combout => \u_input|debounce_cnt[3][7]~218_combout\,
	cout => \u_input|debounce_cnt[3][7]~219\);

-- Location: FF_X46_Y49_N29
\u_input|debounce_cnt[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[3][7]~218_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~4_combout\,
	ena => \u_input|debounce_cnt[3][10]~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[3][7]~q\);

-- Location: LCCOMB_X46_Y49_N30
\u_input|debounce_cnt[3][8]~220\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][8]~220_combout\ = (\u_input|debounce_cnt[3][8]~q\ & (\u_input|debounce_cnt[3][7]~219\ $ (GND))) # (!\u_input|debounce_cnt[3][8]~q\ & (!\u_input|debounce_cnt[3][7]~219\ & VCC))
-- \u_input|debounce_cnt[3][8]~221\ = CARRY((\u_input|debounce_cnt[3][8]~q\ & !\u_input|debounce_cnt[3][7]~219\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[3][8]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[3][7]~219\,
	combout => \u_input|debounce_cnt[3][8]~220_combout\,
	cout => \u_input|debounce_cnt[3][8]~221\);

-- Location: FF_X46_Y49_N31
\u_input|debounce_cnt[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[3][8]~220_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~4_combout\,
	ena => \u_input|debounce_cnt[3][10]~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[3][8]~q\);

-- Location: LCCOMB_X46_Y48_N0
\u_input|debounce_cnt[3][9]~222\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][9]~222_combout\ = (\u_input|debounce_cnt[3][9]~q\ & (!\u_input|debounce_cnt[3][8]~221\)) # (!\u_input|debounce_cnt[3][9]~q\ & ((\u_input|debounce_cnt[3][8]~221\) # (GND)))
-- \u_input|debounce_cnt[3][9]~223\ = CARRY((!\u_input|debounce_cnt[3][8]~221\) # (!\u_input|debounce_cnt[3][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[3][9]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[3][8]~221\,
	combout => \u_input|debounce_cnt[3][9]~222_combout\,
	cout => \u_input|debounce_cnt[3][9]~223\);

-- Location: FF_X46_Y48_N1
\u_input|debounce_cnt[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[3][9]~222_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~4_combout\,
	ena => \u_input|debounce_cnt[3][10]~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[3][9]~q\);

-- Location: LCCOMB_X46_Y48_N2
\u_input|debounce_cnt[3][10]~224\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][10]~224_combout\ = (\u_input|debounce_cnt[3][10]~q\ & (\u_input|debounce_cnt[3][9]~223\ $ (GND))) # (!\u_input|debounce_cnt[3][10]~q\ & (!\u_input|debounce_cnt[3][9]~223\ & VCC))
-- \u_input|debounce_cnt[3][10]~225\ = CARRY((\u_input|debounce_cnt[3][10]~q\ & !\u_input|debounce_cnt[3][9]~223\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[3][10]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[3][9]~223\,
	combout => \u_input|debounce_cnt[3][10]~224_combout\,
	cout => \u_input|debounce_cnt[3][10]~225\);

-- Location: FF_X46_Y48_N3
\u_input|debounce_cnt[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[3][10]~224_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~4_combout\,
	ena => \u_input|debounce_cnt[3][10]~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[3][10]~q\);

-- Location: LCCOMB_X46_Y48_N4
\u_input|debounce_cnt[3][11]~226\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[3][11]~226_combout\ = (\u_input|debounce_cnt[3][11]~q\ & (!\u_input|debounce_cnt[3][10]~225\)) # (!\u_input|debounce_cnt[3][11]~q\ & ((\u_input|debounce_cnt[3][10]~225\) # (GND)))
-- \u_input|debounce_cnt[3][11]~227\ = CARRY((!\u_input|debounce_cnt[3][10]~225\) # (!\u_input|debounce_cnt[3][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[3][11]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[3][10]~225\,
	combout => \u_input|debounce_cnt[3][11]~226_combout\,
	cout => \u_input|debounce_cnt[3][11]~227\);

-- Location: FF_X46_Y48_N5
\u_input|debounce_cnt[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[3][11]~226_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~4_combout\,
	ena => \u_input|debounce_cnt[3][10]~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[3][11]~q\);

-- Location: FF_X46_Y48_N7
\u_input|debounce_cnt[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[3][12]~228_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~4_combout\,
	ena => \u_input|debounce_cnt[3][10]~232_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[3][12]~q\);

-- Location: LCCOMB_X46_Y47_N0
\u_input|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal3~0_combout\ = (\u_input|debounce_cnt[3][12]~q\ & !\u_input|debounce_cnt[3][13]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_input|debounce_cnt[3][12]~q\,
	datad => \u_input|debounce_cnt[3][13]~q\,
	combout => \u_input|Equal3~0_combout\);

-- Location: LCCOMB_X46_Y49_N10
\u_input|Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal3~4_combout\ = (!\u_input|debounce_cnt[3][3]~q\ & (\u_input|debounce_cnt[3][7]~q\ & (\u_input|debounce_cnt[3][4]~q\ & !\u_input|debounce_cnt[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[3][3]~q\,
	datab => \u_input|debounce_cnt[3][7]~q\,
	datac => \u_input|debounce_cnt[3][4]~q\,
	datad => \u_input|debounce_cnt[3][2]~q\,
	combout => \u_input|Equal3~4_combout\);

-- Location: LCCOMB_X46_Y49_N12
\u_input|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal3~3_combout\ = (!\u_input|debounce_cnt[3][6]~q\ & (!\u_input|debounce_cnt[3][5]~q\ & (!\u_input|debounce_cnt[3][0]~q\ & !\u_input|debounce_cnt[3][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[3][6]~q\,
	datab => \u_input|debounce_cnt[3][5]~q\,
	datac => \u_input|debounce_cnt[3][0]~q\,
	datad => \u_input|debounce_cnt[3][1]~q\,
	combout => \u_input|Equal3~3_combout\);

-- Location: LCCOMB_X46_Y48_N20
\u_input|Equal3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal3~5_combout\ = (\u_input|Equal3~2_combout\ & (\u_input|Equal3~1_combout\ & (\u_input|Equal3~4_combout\ & \u_input|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|Equal3~2_combout\,
	datab => \u_input|Equal3~1_combout\,
	datac => \u_input|Equal3~4_combout\,
	datad => \u_input|Equal3~3_combout\,
	combout => \u_input|Equal3~5_combout\);

-- Location: LCCOMB_X46_Y48_N18
\u_input|sw_clean[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_clean[3]~2_combout\ = (\u_input|Equal3~0_combout\ & ((\u_input|Equal3~5_combout\ & (\u_input|sw_sync2\(3))) # (!\u_input|Equal3~5_combout\ & ((\u_input|sw_clean\(3)))))) # (!\u_input|Equal3~0_combout\ & (((\u_input|sw_clean\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|sw_sync2\(3),
	datab => \u_input|Equal3~0_combout\,
	datac => \u_input|sw_clean\(3),
	datad => \u_input|Equal3~5_combout\,
	combout => \u_input|sw_clean[3]~2_combout\);

-- Location: FF_X46_Y48_N19
\u_input|sw_clean[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_clean[3]~2_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_clean\(3));

-- Location: LCCOMB_X45_Y53_N14
\u_input|debounce_cnt[4][0]~360\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][0]~360_combout\ = \u_input|debounce_cnt[4][0]~q\ $ (VCC)
-- \u_input|debounce_cnt[4][0]~361\ = CARRY(\u_input|debounce_cnt[4][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[4][0]~q\,
	datad => VCC,
	combout => \u_input|debounce_cnt[4][0]~360_combout\,
	cout => \u_input|debounce_cnt[4][0]~361\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X46_Y53_N16
\u_input|sw_sync1[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_sync1[4]~feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \u_input|sw_sync1[4]~feeder_combout\);

-- Location: FF_X46_Y53_N17
\u_input|sw_sync1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_sync1[4]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_sync1\(4));

-- Location: LCCOMB_X46_Y52_N6
\u_input|sw_sync2[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_sync2[4]~feeder_combout\ = \u_input|sw_sync1\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_input|sw_sync1\(4),
	combout => \u_input|sw_sync2[4]~feeder_combout\);

-- Location: FF_X46_Y52_N7
\u_input|sw_sync2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_sync2[4]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_sync2\(4));

-- Location: LCCOMB_X46_Y52_N24
\u_input|process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|process_0~8_combout\ = \u_input|sw_clean\(4) $ (\u_input|sw_sync2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_input|sw_clean\(4),
	datad => \u_input|sw_sync2\(4),
	combout => \u_input|process_0~8_combout\);

-- Location: LCCOMB_X45_Y53_N26
\u_input|debounce_cnt[4][6]~372\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][6]~372_combout\ = (\u_input|debounce_cnt[4][6]~q\ & (\u_input|debounce_cnt[4][5]~371\ $ (GND))) # (!\u_input|debounce_cnt[4][6]~q\ & (!\u_input|debounce_cnt[4][5]~371\ & VCC))
-- \u_input|debounce_cnt[4][6]~373\ = CARRY((\u_input|debounce_cnt[4][6]~q\ & !\u_input|debounce_cnt[4][5]~371\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[4][6]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[4][5]~371\,
	combout => \u_input|debounce_cnt[4][6]~372_combout\,
	cout => \u_input|debounce_cnt[4][6]~373\);

-- Location: LCCOMB_X45_Y53_N28
\u_input|debounce_cnt[4][7]~374\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][7]~374_combout\ = (\u_input|debounce_cnt[4][7]~q\ & (!\u_input|debounce_cnt[4][6]~373\)) # (!\u_input|debounce_cnt[4][7]~q\ & ((\u_input|debounce_cnt[4][6]~373\) # (GND)))
-- \u_input|debounce_cnt[4][7]~375\ = CARRY((!\u_input|debounce_cnt[4][6]~373\) # (!\u_input|debounce_cnt[4][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[4][7]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[4][6]~373\,
	combout => \u_input|debounce_cnt[4][7]~374_combout\,
	cout => \u_input|debounce_cnt[4][7]~375\);

-- Location: FF_X45_Y53_N29
\u_input|debounce_cnt[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[4][7]~374_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~8_combout\,
	ena => \u_input|debounce_cnt[4][7]~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[4][7]~q\);

-- Location: LCCOMB_X45_Y53_N30
\u_input|debounce_cnt[4][8]~376\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][8]~376_combout\ = (\u_input|debounce_cnt[4][8]~q\ & (\u_input|debounce_cnt[4][7]~375\ $ (GND))) # (!\u_input|debounce_cnt[4][8]~q\ & (!\u_input|debounce_cnt[4][7]~375\ & VCC))
-- \u_input|debounce_cnt[4][8]~377\ = CARRY((\u_input|debounce_cnt[4][8]~q\ & !\u_input|debounce_cnt[4][7]~375\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[4][8]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[4][7]~375\,
	combout => \u_input|debounce_cnt[4][8]~376_combout\,
	cout => \u_input|debounce_cnt[4][8]~377\);

-- Location: FF_X46_Y52_N5
\u_input|debounce_cnt[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_input|debounce_cnt[4][8]~376_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~8_combout\,
	sload => VCC,
	ena => \u_input|debounce_cnt[4][7]~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[4][8]~q\);

-- Location: LCCOMB_X45_Y52_N0
\u_input|debounce_cnt[4][9]~378\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][9]~378_combout\ = (\u_input|debounce_cnt[4][9]~q\ & (!\u_input|debounce_cnt[4][8]~377\)) # (!\u_input|debounce_cnt[4][9]~q\ & ((\u_input|debounce_cnt[4][8]~377\) # (GND)))
-- \u_input|debounce_cnt[4][9]~379\ = CARRY((!\u_input|debounce_cnt[4][8]~377\) # (!\u_input|debounce_cnt[4][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[4][9]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[4][8]~377\,
	combout => \u_input|debounce_cnt[4][9]~378_combout\,
	cout => \u_input|debounce_cnt[4][9]~379\);

-- Location: FF_X45_Y52_N1
\u_input|debounce_cnt[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[4][9]~378_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~8_combout\,
	ena => \u_input|debounce_cnt[4][7]~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[4][9]~q\);

-- Location: LCCOMB_X45_Y52_N2
\u_input|debounce_cnt[4][10]~380\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][10]~380_combout\ = (\u_input|debounce_cnt[4][10]~q\ & (\u_input|debounce_cnt[4][9]~379\ $ (GND))) # (!\u_input|debounce_cnt[4][10]~q\ & (!\u_input|debounce_cnt[4][9]~379\ & VCC))
-- \u_input|debounce_cnt[4][10]~381\ = CARRY((\u_input|debounce_cnt[4][10]~q\ & !\u_input|debounce_cnt[4][9]~379\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[4][10]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[4][9]~379\,
	combout => \u_input|debounce_cnt[4][10]~380_combout\,
	cout => \u_input|debounce_cnt[4][10]~381\);

-- Location: FF_X45_Y52_N3
\u_input|debounce_cnt[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[4][10]~380_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~8_combout\,
	ena => \u_input|debounce_cnt[4][7]~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[4][10]~q\);

-- Location: LCCOMB_X45_Y52_N4
\u_input|debounce_cnt[4][11]~382\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][11]~382_combout\ = (\u_input|debounce_cnt[4][11]~q\ & (!\u_input|debounce_cnt[4][10]~381\)) # (!\u_input|debounce_cnt[4][11]~q\ & ((\u_input|debounce_cnt[4][10]~381\) # (GND)))
-- \u_input|debounce_cnt[4][11]~383\ = CARRY((!\u_input|debounce_cnt[4][10]~381\) # (!\u_input|debounce_cnt[4][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[4][11]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[4][10]~381\,
	combout => \u_input|debounce_cnt[4][11]~382_combout\,
	cout => \u_input|debounce_cnt[4][11]~383\);

-- Location: FF_X45_Y52_N5
\u_input|debounce_cnt[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[4][11]~382_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~8_combout\,
	ena => \u_input|debounce_cnt[4][7]~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[4][11]~q\);

-- Location: LCCOMB_X45_Y52_N6
\u_input|debounce_cnt[4][12]~384\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][12]~384_combout\ = (\u_input|debounce_cnt[4][12]~q\ & (\u_input|debounce_cnt[4][11]~383\ $ (GND))) # (!\u_input|debounce_cnt[4][12]~q\ & (!\u_input|debounce_cnt[4][11]~383\ & VCC))
-- \u_input|debounce_cnt[4][12]~385\ = CARRY((\u_input|debounce_cnt[4][12]~q\ & !\u_input|debounce_cnt[4][11]~383\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[4][12]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[4][11]~383\,
	combout => \u_input|debounce_cnt[4][12]~384_combout\,
	cout => \u_input|debounce_cnt[4][12]~385\);

-- Location: FF_X45_Y52_N7
\u_input|debounce_cnt[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[4][12]~384_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~8_combout\,
	ena => \u_input|debounce_cnt[4][7]~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[4][12]~q\);

-- Location: LCCOMB_X45_Y52_N8
\u_input|debounce_cnt[4][13]~389\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][13]~389_combout\ = (\u_input|debounce_cnt[4][13]~q\ & (!\u_input|debounce_cnt[4][12]~385\)) # (!\u_input|debounce_cnt[4][13]~q\ & ((\u_input|debounce_cnt[4][12]~385\) # (GND)))
-- \u_input|debounce_cnt[4][13]~390\ = CARRY((!\u_input|debounce_cnt[4][12]~385\) # (!\u_input|debounce_cnt[4][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[4][13]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[4][12]~385\,
	combout => \u_input|debounce_cnt[4][13]~389_combout\,
	cout => \u_input|debounce_cnt[4][13]~390\);

-- Location: FF_X45_Y52_N9
\u_input|debounce_cnt[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[4][13]~389_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~8_combout\,
	ena => \u_input|debounce_cnt[4][7]~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[4][13]~q\);

-- Location: LCCOMB_X45_Y52_N10
\u_input|debounce_cnt[4][14]~391\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][14]~391_combout\ = (\u_input|debounce_cnt[4][14]~q\ & (\u_input|debounce_cnt[4][13]~390\ $ (GND))) # (!\u_input|debounce_cnt[4][14]~q\ & (!\u_input|debounce_cnt[4][13]~390\ & VCC))
-- \u_input|debounce_cnt[4][14]~392\ = CARRY((\u_input|debounce_cnt[4][14]~q\ & !\u_input|debounce_cnt[4][13]~390\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[4][14]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[4][13]~390\,
	combout => \u_input|debounce_cnt[4][14]~391_combout\,
	cout => \u_input|debounce_cnt[4][14]~392\);

-- Location: FF_X45_Y52_N11
\u_input|debounce_cnt[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[4][14]~391_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~8_combout\,
	ena => \u_input|debounce_cnt[4][7]~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[4][14]~q\);

-- Location: LCCOMB_X45_Y52_N12
\u_input|debounce_cnt[4][15]~393\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][15]~393_combout\ = (\u_input|debounce_cnt[4][15]~q\ & (!\u_input|debounce_cnt[4][14]~392\)) # (!\u_input|debounce_cnt[4][15]~q\ & ((\u_input|debounce_cnt[4][14]~392\) # (GND)))
-- \u_input|debounce_cnt[4][15]~394\ = CARRY((!\u_input|debounce_cnt[4][14]~392\) # (!\u_input|debounce_cnt[4][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[4][15]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[4][14]~392\,
	combout => \u_input|debounce_cnt[4][15]~393_combout\,
	cout => \u_input|debounce_cnt[4][15]~394\);

-- Location: FF_X45_Y52_N13
\u_input|debounce_cnt[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[4][15]~393_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~8_combout\,
	ena => \u_input|debounce_cnt[4][7]~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[4][15]~q\);

-- Location: LCCOMB_X45_Y52_N14
\u_input|debounce_cnt[4][16]~395\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][16]~395_combout\ = (\u_input|debounce_cnt[4][16]~q\ & (\u_input|debounce_cnt[4][15]~394\ $ (GND))) # (!\u_input|debounce_cnt[4][16]~q\ & (!\u_input|debounce_cnt[4][15]~394\ & VCC))
-- \u_input|debounce_cnt[4][16]~396\ = CARRY((\u_input|debounce_cnt[4][16]~q\ & !\u_input|debounce_cnt[4][15]~394\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[4][16]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[4][15]~394\,
	combout => \u_input|debounce_cnt[4][16]~395_combout\,
	cout => \u_input|debounce_cnt[4][16]~396\);

-- Location: FF_X45_Y52_N15
\u_input|debounce_cnt[4][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[4][16]~395_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~8_combout\,
	ena => \u_input|debounce_cnt[4][7]~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[4][16]~q\);

-- Location: LCCOMB_X45_Y52_N16
\u_input|debounce_cnt[4][17]~397\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][17]~397_combout\ = \u_input|debounce_cnt[4][16]~396\ $ (\u_input|debounce_cnt[4][17]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_input|debounce_cnt[4][17]~q\,
	cin => \u_input|debounce_cnt[4][16]~396\,
	combout => \u_input|debounce_cnt[4][17]~397_combout\);

-- Location: FF_X45_Y52_N17
\u_input|debounce_cnt[4][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[4][17]~397_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~8_combout\,
	ena => \u_input|debounce_cnt[4][7]~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[4][17]~q\);

-- Location: LCCOMB_X45_Y52_N28
\u_input|Equal4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal4~2_combout\ = (\u_input|debounce_cnt[4][14]~q\ & (\u_input|debounce_cnt[4][17]~q\ & (\u_input|debounce_cnt[4][16]~q\ & \u_input|debounce_cnt[4][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[4][14]~q\,
	datab => \u_input|debounce_cnt[4][17]~q\,
	datac => \u_input|debounce_cnt[4][16]~q\,
	datad => \u_input|debounce_cnt[4][15]~q\,
	combout => \u_input|Equal4~2_combout\);

-- Location: LCCOMB_X45_Y52_N18
\u_input|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal4~1_combout\ = (!\u_input|debounce_cnt[4][8]~q\ & (!\u_input|debounce_cnt[4][9]~q\ & (!\u_input|debounce_cnt[4][11]~q\ & !\u_input|debounce_cnt[4][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[4][8]~q\,
	datab => \u_input|debounce_cnt[4][9]~q\,
	datac => \u_input|debounce_cnt[4][11]~q\,
	datad => \u_input|debounce_cnt[4][10]~q\,
	combout => \u_input|Equal4~1_combout\);

-- Location: LCCOMB_X45_Y53_N12
\u_input|debounce_cnt[4][7]~386\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][7]~386_combout\ = (\u_input|debounce_cnt[4][7]~q\ & ((\u_input|debounce_cnt[4][6]~q\) # ((\u_input|debounce_cnt[4][4]~q\) # (\u_input|debounce_cnt[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[4][6]~q\,
	datab => \u_input|debounce_cnt[4][7]~q\,
	datac => \u_input|debounce_cnt[4][4]~q\,
	datad => \u_input|debounce_cnt[4][5]~q\,
	combout => \u_input|debounce_cnt[4][7]~386_combout\);

-- Location: LCCOMB_X45_Y52_N24
\u_input|debounce_cnt[4][7]~387\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][7]~387_combout\ = (\u_input|debounce_cnt[4][13]~q\) # ((\u_input|debounce_cnt[4][12]~q\ & ((\u_input|debounce_cnt[4][7]~386_combout\) # (!\u_input|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[4][12]~q\,
	datab => \u_input|Equal4~1_combout\,
	datac => \u_input|debounce_cnt[4][13]~q\,
	datad => \u_input|debounce_cnt[4][7]~386_combout\,
	combout => \u_input|debounce_cnt[4][7]~387_combout\);

-- Location: LCCOMB_X45_Y52_N26
\u_input|debounce_cnt[4][7]~388\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][7]~388_combout\ = ((\u_input|sw_sync2\(4) $ (\u_input|sw_clean\(4))) # (!\u_input|debounce_cnt[4][7]~387_combout\)) # (!\u_input|Equal4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|sw_sync2\(4),
	datab => \u_input|Equal4~2_combout\,
	datac => \u_input|sw_clean\(4),
	datad => \u_input|debounce_cnt[4][7]~387_combout\,
	combout => \u_input|debounce_cnt[4][7]~388_combout\);

-- Location: FF_X45_Y53_N15
\u_input|debounce_cnt[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[4][0]~360_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~8_combout\,
	ena => \u_input|debounce_cnt[4][7]~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[4][0]~q\);

-- Location: LCCOMB_X45_Y53_N16
\u_input|debounce_cnt[4][1]~362\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][1]~362_combout\ = (\u_input|debounce_cnt[4][1]~q\ & (!\u_input|debounce_cnt[4][0]~361\)) # (!\u_input|debounce_cnt[4][1]~q\ & ((\u_input|debounce_cnt[4][0]~361\) # (GND)))
-- \u_input|debounce_cnt[4][1]~363\ = CARRY((!\u_input|debounce_cnt[4][0]~361\) # (!\u_input|debounce_cnt[4][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[4][1]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[4][0]~361\,
	combout => \u_input|debounce_cnt[4][1]~362_combout\,
	cout => \u_input|debounce_cnt[4][1]~363\);

-- Location: FF_X45_Y53_N17
\u_input|debounce_cnt[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[4][1]~362_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~8_combout\,
	ena => \u_input|debounce_cnt[4][7]~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[4][1]~q\);

-- Location: LCCOMB_X45_Y53_N18
\u_input|debounce_cnt[4][2]~364\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][2]~364_combout\ = (\u_input|debounce_cnt[4][2]~q\ & (\u_input|debounce_cnt[4][1]~363\ $ (GND))) # (!\u_input|debounce_cnt[4][2]~q\ & (!\u_input|debounce_cnt[4][1]~363\ & VCC))
-- \u_input|debounce_cnt[4][2]~365\ = CARRY((\u_input|debounce_cnt[4][2]~q\ & !\u_input|debounce_cnt[4][1]~363\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[4][2]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[4][1]~363\,
	combout => \u_input|debounce_cnt[4][2]~364_combout\,
	cout => \u_input|debounce_cnt[4][2]~365\);

-- Location: FF_X45_Y53_N19
\u_input|debounce_cnt[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[4][2]~364_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~8_combout\,
	ena => \u_input|debounce_cnt[4][7]~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[4][2]~q\);

-- Location: LCCOMB_X45_Y53_N20
\u_input|debounce_cnt[4][3]~366\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][3]~366_combout\ = (\u_input|debounce_cnt[4][3]~q\ & (!\u_input|debounce_cnt[4][2]~365\)) # (!\u_input|debounce_cnt[4][3]~q\ & ((\u_input|debounce_cnt[4][2]~365\) # (GND)))
-- \u_input|debounce_cnt[4][3]~367\ = CARRY((!\u_input|debounce_cnt[4][2]~365\) # (!\u_input|debounce_cnt[4][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[4][3]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[4][2]~365\,
	combout => \u_input|debounce_cnt[4][3]~366_combout\,
	cout => \u_input|debounce_cnt[4][3]~367\);

-- Location: FF_X45_Y53_N21
\u_input|debounce_cnt[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[4][3]~366_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~8_combout\,
	ena => \u_input|debounce_cnt[4][7]~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[4][3]~q\);

-- Location: LCCOMB_X45_Y53_N22
\u_input|debounce_cnt[4][4]~368\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][4]~368_combout\ = (\u_input|debounce_cnt[4][4]~q\ & (\u_input|debounce_cnt[4][3]~367\ $ (GND))) # (!\u_input|debounce_cnt[4][4]~q\ & (!\u_input|debounce_cnt[4][3]~367\ & VCC))
-- \u_input|debounce_cnt[4][4]~369\ = CARRY((\u_input|debounce_cnt[4][4]~q\ & !\u_input|debounce_cnt[4][3]~367\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[4][4]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[4][3]~367\,
	combout => \u_input|debounce_cnt[4][4]~368_combout\,
	cout => \u_input|debounce_cnt[4][4]~369\);

-- Location: FF_X45_Y53_N23
\u_input|debounce_cnt[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[4][4]~368_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~8_combout\,
	ena => \u_input|debounce_cnt[4][7]~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[4][4]~q\);

-- Location: LCCOMB_X45_Y53_N24
\u_input|debounce_cnt[4][5]~370\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[4][5]~370_combout\ = (\u_input|debounce_cnt[4][5]~q\ & (!\u_input|debounce_cnt[4][4]~369\)) # (!\u_input|debounce_cnt[4][5]~q\ & ((\u_input|debounce_cnt[4][4]~369\) # (GND)))
-- \u_input|debounce_cnt[4][5]~371\ = CARRY((!\u_input|debounce_cnt[4][4]~369\) # (!\u_input|debounce_cnt[4][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[4][5]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[4][4]~369\,
	combout => \u_input|debounce_cnt[4][5]~370_combout\,
	cout => \u_input|debounce_cnt[4][5]~371\);

-- Location: FF_X45_Y53_N25
\u_input|debounce_cnt[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[4][5]~370_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~8_combout\,
	ena => \u_input|debounce_cnt[4][7]~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[4][5]~q\);

-- Location: FF_X45_Y53_N27
\u_input|debounce_cnt[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[4][6]~372_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~8_combout\,
	ena => \u_input|debounce_cnt[4][7]~388_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[4][6]~q\);

-- Location: LCCOMB_X45_Y53_N4
\u_input|Equal4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal4~3_combout\ = (!\u_input|debounce_cnt[4][6]~q\ & (!\u_input|debounce_cnt[4][5]~q\ & (!\u_input|debounce_cnt[4][0]~q\ & !\u_input|debounce_cnt[4][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[4][6]~q\,
	datab => \u_input|debounce_cnt[4][5]~q\,
	datac => \u_input|debounce_cnt[4][0]~q\,
	datad => \u_input|debounce_cnt[4][1]~q\,
	combout => \u_input|Equal4~3_combout\);

-- Location: LCCOMB_X45_Y53_N10
\u_input|Equal4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal4~4_combout\ = (!\u_input|debounce_cnt[4][3]~q\ & (\u_input|debounce_cnt[4][7]~q\ & (\u_input|debounce_cnt[4][4]~q\ & !\u_input|debounce_cnt[4][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[4][3]~q\,
	datab => \u_input|debounce_cnt[4][7]~q\,
	datac => \u_input|debounce_cnt[4][4]~q\,
	datad => \u_input|debounce_cnt[4][2]~q\,
	combout => \u_input|Equal4~4_combout\);

-- Location: LCCOMB_X45_Y52_N22
\u_input|Equal4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal4~5_combout\ = (\u_input|Equal4~3_combout\ & (\u_input|Equal4~1_combout\ & (\u_input|Equal4~4_combout\ & \u_input|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|Equal4~3_combout\,
	datab => \u_input|Equal4~1_combout\,
	datac => \u_input|Equal4~4_combout\,
	datad => \u_input|Equal4~2_combout\,
	combout => \u_input|Equal4~5_combout\);

-- Location: LCCOMB_X45_Y52_N20
\u_input|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal4~0_combout\ = (!\u_input|debounce_cnt[4][13]~q\ & \u_input|debounce_cnt[4][12]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_input|debounce_cnt[4][13]~q\,
	datad => \u_input|debounce_cnt[4][12]~q\,
	combout => \u_input|Equal4~0_combout\);

-- Location: LCCOMB_X45_Y52_N30
\u_input|sw_clean[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_clean[4]~6_combout\ = (\u_input|Equal4~5_combout\ & ((\u_input|Equal4~0_combout\ & ((\u_input|sw_sync2\(4)))) # (!\u_input|Equal4~0_combout\ & (\u_input|sw_clean\(4))))) # (!\u_input|Equal4~5_combout\ & (((\u_input|sw_clean\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|Equal4~5_combout\,
	datab => \u_input|Equal4~0_combout\,
	datac => \u_input|sw_clean\(4),
	datad => \u_input|sw_sync2\(4),
	combout => \u_input|sw_clean[4]~6_combout\);

-- Location: FF_X45_Y52_N31
\u_input|sw_clean[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_clean[4]~6_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_clean\(4));

-- Location: FF_X46_Y50_N13
\u_input|sw_prev_clean[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_input|sw_clean\(4),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_prev_clean\(4));

-- Location: FF_X46_Y50_N1
\u_input|sw_prev_clean[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_input|sw_clean\(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_prev_clean\(3));

-- Location: LCCOMB_X46_Y50_N8
\u_input|ativado_r~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|ativado_r~7_combout\ = (\u_input|sw_clean\(3) & (((\u_input|sw_clean\(4) & !\u_input|sw_prev_clean\(4))) # (!\u_input|sw_prev_clean\(3)))) # (!\u_input|sw_clean\(3) & (\u_input|sw_clean\(4) & (!\u_input|sw_prev_clean\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|sw_clean\(3),
	datab => \u_input|sw_clean\(4),
	datac => \u_input|sw_prev_clean\(4),
	datad => \u_input|sw_prev_clean\(3),
	combout => \u_input|ativado_r~7_combout\);

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X49_Y50_N18
\u_input|sw_sync1[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_sync1[5]~feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \u_input|sw_sync1[5]~feeder_combout\);

-- Location: FF_X49_Y50_N19
\u_input|sw_sync1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_sync1[5]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_sync1\(5));

-- Location: LCCOMB_X49_Y50_N28
\u_input|sw_sync2[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_sync2[5]~feeder_combout\ = \u_input|sw_sync1\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_input|sw_sync1\(5),
	combout => \u_input|sw_sync2[5]~feeder_combout\);

-- Location: FF_X49_Y50_N29
\u_input|sw_sync2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_sync2[5]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_sync2\(5));

-- Location: LCCOMB_X47_Y51_N14
\u_input|debounce_cnt[5][0]~321\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][0]~321_combout\ = \u_input|debounce_cnt[5][0]~q\ $ (VCC)
-- \u_input|debounce_cnt[5][0]~322\ = CARRY(\u_input|debounce_cnt[5][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[5][0]~q\,
	datad => VCC,
	combout => \u_input|debounce_cnt[5][0]~321_combout\,
	cout => \u_input|debounce_cnt[5][0]~322\);

-- Location: LCCOMB_X47_Y50_N26
\u_input|process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|process_0~7_combout\ = \u_input|sw_clean\(5) $ (\u_input|sw_sync2\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|sw_clean\(5),
	datac => \u_input|sw_sync2\(5),
	combout => \u_input|process_0~7_combout\);

-- Location: LCCOMB_X47_Y50_N8
\u_input|debounce_cnt[5][13]~350\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][13]~350_combout\ = (\u_input|debounce_cnt[5][13]~q\ & (!\u_input|debounce_cnt[5][12]~346\)) # (!\u_input|debounce_cnt[5][13]~q\ & ((\u_input|debounce_cnt[5][12]~346\) # (GND)))
-- \u_input|debounce_cnt[5][13]~351\ = CARRY((!\u_input|debounce_cnt[5][12]~346\) # (!\u_input|debounce_cnt[5][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[5][13]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[5][12]~346\,
	combout => \u_input|debounce_cnt[5][13]~350_combout\,
	cout => \u_input|debounce_cnt[5][13]~351\);

-- Location: LCCOMB_X47_Y50_N10
\u_input|debounce_cnt[5][14]~352\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][14]~352_combout\ = (\u_input|debounce_cnt[5][14]~q\ & (\u_input|debounce_cnt[5][13]~351\ $ (GND))) # (!\u_input|debounce_cnt[5][14]~q\ & (!\u_input|debounce_cnt[5][13]~351\ & VCC))
-- \u_input|debounce_cnt[5][14]~353\ = CARRY((\u_input|debounce_cnt[5][14]~q\ & !\u_input|debounce_cnt[5][13]~351\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[5][14]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[5][13]~351\,
	combout => \u_input|debounce_cnt[5][14]~352_combout\,
	cout => \u_input|debounce_cnt[5][14]~353\);

-- Location: FF_X47_Y50_N11
\u_input|debounce_cnt[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[5][14]~352_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~7_combout\,
	ena => \u_input|debounce_cnt[5][10]~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[5][14]~q\);

-- Location: LCCOMB_X47_Y50_N12
\u_input|debounce_cnt[5][15]~354\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][15]~354_combout\ = (\u_input|debounce_cnt[5][15]~q\ & (!\u_input|debounce_cnt[5][14]~353\)) # (!\u_input|debounce_cnt[5][15]~q\ & ((\u_input|debounce_cnt[5][14]~353\) # (GND)))
-- \u_input|debounce_cnt[5][15]~355\ = CARRY((!\u_input|debounce_cnt[5][14]~353\) # (!\u_input|debounce_cnt[5][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[5][15]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[5][14]~353\,
	combout => \u_input|debounce_cnt[5][15]~354_combout\,
	cout => \u_input|debounce_cnt[5][15]~355\);

-- Location: FF_X47_Y50_N13
\u_input|debounce_cnt[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[5][15]~354_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~7_combout\,
	ena => \u_input|debounce_cnt[5][10]~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[5][15]~q\);

-- Location: LCCOMB_X47_Y50_N14
\u_input|debounce_cnt[5][16]~356\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][16]~356_combout\ = (\u_input|debounce_cnt[5][16]~q\ & (\u_input|debounce_cnt[5][15]~355\ $ (GND))) # (!\u_input|debounce_cnt[5][16]~q\ & (!\u_input|debounce_cnt[5][15]~355\ & VCC))
-- \u_input|debounce_cnt[5][16]~357\ = CARRY((\u_input|debounce_cnt[5][16]~q\ & !\u_input|debounce_cnt[5][15]~355\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[5][16]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[5][15]~355\,
	combout => \u_input|debounce_cnt[5][16]~356_combout\,
	cout => \u_input|debounce_cnt[5][16]~357\);

-- Location: FF_X47_Y50_N15
\u_input|debounce_cnt[5][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[5][16]~356_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~7_combout\,
	ena => \u_input|debounce_cnt[5][10]~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[5][16]~q\);

-- Location: LCCOMB_X47_Y50_N16
\u_input|debounce_cnt[5][17]~358\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][17]~358_combout\ = \u_input|debounce_cnt[5][16]~357\ $ (\u_input|debounce_cnt[5][17]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_input|debounce_cnt[5][17]~q\,
	cin => \u_input|debounce_cnt[5][16]~357\,
	combout => \u_input|debounce_cnt[5][17]~358_combout\);

-- Location: FF_X47_Y50_N17
\u_input|debounce_cnt[5][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[5][17]~358_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~7_combout\,
	ena => \u_input|debounce_cnt[5][10]~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[5][17]~q\);

-- Location: LCCOMB_X47_Y50_N24
\u_input|Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal5~2_combout\ = (\u_input|debounce_cnt[5][15]~q\ & (\u_input|debounce_cnt[5][17]~q\ & (\u_input|debounce_cnt[5][16]~q\ & \u_input|debounce_cnt[5][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[5][15]~q\,
	datab => \u_input|debounce_cnt[5][17]~q\,
	datac => \u_input|debounce_cnt[5][16]~q\,
	datad => \u_input|debounce_cnt[5][14]~q\,
	combout => \u_input|Equal5~2_combout\);

-- Location: LCCOMB_X47_Y50_N18
\u_input|Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal5~1_combout\ = (!\u_input|debounce_cnt[5][8]~q\ & (!\u_input|debounce_cnt[5][10]~q\ & (!\u_input|debounce_cnt[5][11]~q\ & !\u_input|debounce_cnt[5][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[5][8]~q\,
	datab => \u_input|debounce_cnt[5][10]~q\,
	datac => \u_input|debounce_cnt[5][11]~q\,
	datad => \u_input|debounce_cnt[5][9]~q\,
	combout => \u_input|Equal5~1_combout\);

-- Location: LCCOMB_X47_Y51_N8
\u_input|debounce_cnt[5][10]~347\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][10]~347_combout\ = (\u_input|debounce_cnt[5][7]~q\ & ((\u_input|debounce_cnt[5][4]~q\) # ((\u_input|debounce_cnt[5][6]~q\) # (\u_input|debounce_cnt[5][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[5][4]~q\,
	datab => \u_input|debounce_cnt[5][7]~q\,
	datac => \u_input|debounce_cnt[5][6]~q\,
	datad => \u_input|debounce_cnt[5][5]~q\,
	combout => \u_input|debounce_cnt[5][10]~347_combout\);

-- Location: LCCOMB_X47_Y50_N20
\u_input|debounce_cnt[5][10]~348\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][10]~348_combout\ = (\u_input|debounce_cnt[5][13]~q\) # ((\u_input|debounce_cnt[5][12]~q\ & ((\u_input|debounce_cnt[5][10]~347_combout\) # (!\u_input|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[5][12]~q\,
	datab => \u_input|Equal5~1_combout\,
	datac => \u_input|debounce_cnt[5][13]~q\,
	datad => \u_input|debounce_cnt[5][10]~347_combout\,
	combout => \u_input|debounce_cnt[5][10]~348_combout\);

-- Location: LCCOMB_X47_Y50_N22
\u_input|debounce_cnt[5][10]~349\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][10]~349_combout\ = ((\u_input|sw_clean\(5) $ (\u_input|sw_sync2\(5))) # (!\u_input|debounce_cnt[5][10]~348_combout\)) # (!\u_input|Equal5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|sw_clean\(5),
	datab => \u_input|Equal5~2_combout\,
	datac => \u_input|sw_sync2\(5),
	datad => \u_input|debounce_cnt[5][10]~348_combout\,
	combout => \u_input|debounce_cnt[5][10]~349_combout\);

-- Location: FF_X47_Y51_N15
\u_input|debounce_cnt[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[5][0]~321_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~7_combout\,
	ena => \u_input|debounce_cnt[5][10]~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[5][0]~q\);

-- Location: LCCOMB_X47_Y51_N16
\u_input|debounce_cnt[5][1]~323\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][1]~323_combout\ = (\u_input|debounce_cnt[5][1]~q\ & (!\u_input|debounce_cnt[5][0]~322\)) # (!\u_input|debounce_cnt[5][1]~q\ & ((\u_input|debounce_cnt[5][0]~322\) # (GND)))
-- \u_input|debounce_cnt[5][1]~324\ = CARRY((!\u_input|debounce_cnt[5][0]~322\) # (!\u_input|debounce_cnt[5][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[5][1]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[5][0]~322\,
	combout => \u_input|debounce_cnt[5][1]~323_combout\,
	cout => \u_input|debounce_cnt[5][1]~324\);

-- Location: FF_X47_Y51_N17
\u_input|debounce_cnt[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[5][1]~323_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~7_combout\,
	ena => \u_input|debounce_cnt[5][10]~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[5][1]~q\);

-- Location: LCCOMB_X47_Y51_N18
\u_input|debounce_cnt[5][2]~325\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][2]~325_combout\ = (\u_input|debounce_cnt[5][2]~q\ & (\u_input|debounce_cnt[5][1]~324\ $ (GND))) # (!\u_input|debounce_cnt[5][2]~q\ & (!\u_input|debounce_cnt[5][1]~324\ & VCC))
-- \u_input|debounce_cnt[5][2]~326\ = CARRY((\u_input|debounce_cnt[5][2]~q\ & !\u_input|debounce_cnt[5][1]~324\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[5][2]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[5][1]~324\,
	combout => \u_input|debounce_cnt[5][2]~325_combout\,
	cout => \u_input|debounce_cnt[5][2]~326\);

-- Location: FF_X47_Y51_N19
\u_input|debounce_cnt[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[5][2]~325_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~7_combout\,
	ena => \u_input|debounce_cnt[5][10]~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[5][2]~q\);

-- Location: LCCOMB_X47_Y51_N20
\u_input|debounce_cnt[5][3]~327\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][3]~327_combout\ = (\u_input|debounce_cnt[5][3]~q\ & (!\u_input|debounce_cnt[5][2]~326\)) # (!\u_input|debounce_cnt[5][3]~q\ & ((\u_input|debounce_cnt[5][2]~326\) # (GND)))
-- \u_input|debounce_cnt[5][3]~328\ = CARRY((!\u_input|debounce_cnt[5][2]~326\) # (!\u_input|debounce_cnt[5][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[5][3]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[5][2]~326\,
	combout => \u_input|debounce_cnt[5][3]~327_combout\,
	cout => \u_input|debounce_cnt[5][3]~328\);

-- Location: FF_X47_Y51_N21
\u_input|debounce_cnt[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[5][3]~327_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~7_combout\,
	ena => \u_input|debounce_cnt[5][10]~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[5][3]~q\);

-- Location: LCCOMB_X47_Y51_N22
\u_input|debounce_cnt[5][4]~329\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][4]~329_combout\ = (\u_input|debounce_cnt[5][4]~q\ & (\u_input|debounce_cnt[5][3]~328\ $ (GND))) # (!\u_input|debounce_cnt[5][4]~q\ & (!\u_input|debounce_cnt[5][3]~328\ & VCC))
-- \u_input|debounce_cnt[5][4]~330\ = CARRY((\u_input|debounce_cnt[5][4]~q\ & !\u_input|debounce_cnt[5][3]~328\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[5][4]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[5][3]~328\,
	combout => \u_input|debounce_cnt[5][4]~329_combout\,
	cout => \u_input|debounce_cnt[5][4]~330\);

-- Location: FF_X47_Y51_N23
\u_input|debounce_cnt[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[5][4]~329_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~7_combout\,
	ena => \u_input|debounce_cnt[5][10]~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[5][4]~q\);

-- Location: LCCOMB_X47_Y51_N24
\u_input|debounce_cnt[5][5]~331\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][5]~331_combout\ = (\u_input|debounce_cnt[5][5]~q\ & (!\u_input|debounce_cnt[5][4]~330\)) # (!\u_input|debounce_cnt[5][5]~q\ & ((\u_input|debounce_cnt[5][4]~330\) # (GND)))
-- \u_input|debounce_cnt[5][5]~332\ = CARRY((!\u_input|debounce_cnt[5][4]~330\) # (!\u_input|debounce_cnt[5][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[5][5]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[5][4]~330\,
	combout => \u_input|debounce_cnt[5][5]~331_combout\,
	cout => \u_input|debounce_cnt[5][5]~332\);

-- Location: FF_X47_Y51_N25
\u_input|debounce_cnt[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[5][5]~331_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~7_combout\,
	ena => \u_input|debounce_cnt[5][10]~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[5][5]~q\);

-- Location: LCCOMB_X47_Y51_N26
\u_input|debounce_cnt[5][6]~333\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][6]~333_combout\ = (\u_input|debounce_cnt[5][6]~q\ & (\u_input|debounce_cnt[5][5]~332\ $ (GND))) # (!\u_input|debounce_cnt[5][6]~q\ & (!\u_input|debounce_cnt[5][5]~332\ & VCC))
-- \u_input|debounce_cnt[5][6]~334\ = CARRY((\u_input|debounce_cnt[5][6]~q\ & !\u_input|debounce_cnt[5][5]~332\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[5][6]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[5][5]~332\,
	combout => \u_input|debounce_cnt[5][6]~333_combout\,
	cout => \u_input|debounce_cnt[5][6]~334\);

-- Location: FF_X47_Y51_N27
\u_input|debounce_cnt[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[5][6]~333_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~7_combout\,
	ena => \u_input|debounce_cnt[5][10]~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[5][6]~q\);

-- Location: LCCOMB_X47_Y51_N28
\u_input|debounce_cnt[5][7]~335\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][7]~335_combout\ = (\u_input|debounce_cnt[5][7]~q\ & (!\u_input|debounce_cnt[5][6]~334\)) # (!\u_input|debounce_cnt[5][7]~q\ & ((\u_input|debounce_cnt[5][6]~334\) # (GND)))
-- \u_input|debounce_cnt[5][7]~336\ = CARRY((!\u_input|debounce_cnt[5][6]~334\) # (!\u_input|debounce_cnt[5][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[5][7]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[5][6]~334\,
	combout => \u_input|debounce_cnt[5][7]~335_combout\,
	cout => \u_input|debounce_cnt[5][7]~336\);

-- Location: FF_X47_Y51_N29
\u_input|debounce_cnt[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[5][7]~335_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~7_combout\,
	ena => \u_input|debounce_cnt[5][10]~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[5][7]~q\);

-- Location: LCCOMB_X47_Y51_N30
\u_input|debounce_cnt[5][8]~337\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][8]~337_combout\ = (\u_input|debounce_cnt[5][8]~q\ & (\u_input|debounce_cnt[5][7]~336\ $ (GND))) # (!\u_input|debounce_cnt[5][8]~q\ & (!\u_input|debounce_cnt[5][7]~336\ & VCC))
-- \u_input|debounce_cnt[5][8]~338\ = CARRY((\u_input|debounce_cnt[5][8]~q\ & !\u_input|debounce_cnt[5][7]~336\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[5][8]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[5][7]~336\,
	combout => \u_input|debounce_cnt[5][8]~337_combout\,
	cout => \u_input|debounce_cnt[5][8]~338\);

-- Location: FF_X47_Y51_N31
\u_input|debounce_cnt[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[5][8]~337_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~7_combout\,
	ena => \u_input|debounce_cnt[5][10]~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[5][8]~q\);

-- Location: LCCOMB_X47_Y50_N0
\u_input|debounce_cnt[5][9]~339\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][9]~339_combout\ = (\u_input|debounce_cnt[5][9]~q\ & (!\u_input|debounce_cnt[5][8]~338\)) # (!\u_input|debounce_cnt[5][9]~q\ & ((\u_input|debounce_cnt[5][8]~338\) # (GND)))
-- \u_input|debounce_cnt[5][9]~340\ = CARRY((!\u_input|debounce_cnt[5][8]~338\) # (!\u_input|debounce_cnt[5][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[5][9]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[5][8]~338\,
	combout => \u_input|debounce_cnt[5][9]~339_combout\,
	cout => \u_input|debounce_cnt[5][9]~340\);

-- Location: FF_X47_Y50_N1
\u_input|debounce_cnt[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[5][9]~339_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~7_combout\,
	ena => \u_input|debounce_cnt[5][10]~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[5][9]~q\);

-- Location: LCCOMB_X47_Y50_N2
\u_input|debounce_cnt[5][10]~341\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][10]~341_combout\ = (\u_input|debounce_cnt[5][10]~q\ & (\u_input|debounce_cnt[5][9]~340\ $ (GND))) # (!\u_input|debounce_cnt[5][10]~q\ & (!\u_input|debounce_cnt[5][9]~340\ & VCC))
-- \u_input|debounce_cnt[5][10]~342\ = CARRY((\u_input|debounce_cnt[5][10]~q\ & !\u_input|debounce_cnt[5][9]~340\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[5][10]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[5][9]~340\,
	combout => \u_input|debounce_cnt[5][10]~341_combout\,
	cout => \u_input|debounce_cnt[5][10]~342\);

-- Location: FF_X47_Y50_N3
\u_input|debounce_cnt[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[5][10]~341_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~7_combout\,
	ena => \u_input|debounce_cnt[5][10]~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[5][10]~q\);

-- Location: LCCOMB_X47_Y50_N4
\u_input|debounce_cnt[5][11]~343\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][11]~343_combout\ = (\u_input|debounce_cnt[5][11]~q\ & (!\u_input|debounce_cnt[5][10]~342\)) # (!\u_input|debounce_cnt[5][11]~q\ & ((\u_input|debounce_cnt[5][10]~342\) # (GND)))
-- \u_input|debounce_cnt[5][11]~344\ = CARRY((!\u_input|debounce_cnt[5][10]~342\) # (!\u_input|debounce_cnt[5][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[5][11]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[5][10]~342\,
	combout => \u_input|debounce_cnt[5][11]~343_combout\,
	cout => \u_input|debounce_cnt[5][11]~344\);

-- Location: FF_X47_Y50_N5
\u_input|debounce_cnt[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[5][11]~343_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~7_combout\,
	ena => \u_input|debounce_cnt[5][10]~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[5][11]~q\);

-- Location: LCCOMB_X47_Y50_N6
\u_input|debounce_cnt[5][12]~345\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[5][12]~345_combout\ = (\u_input|debounce_cnt[5][12]~q\ & (\u_input|debounce_cnt[5][11]~344\ $ (GND))) # (!\u_input|debounce_cnt[5][12]~q\ & (!\u_input|debounce_cnt[5][11]~344\ & VCC))
-- \u_input|debounce_cnt[5][12]~346\ = CARRY((\u_input|debounce_cnt[5][12]~q\ & !\u_input|debounce_cnt[5][11]~344\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[5][12]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[5][11]~344\,
	combout => \u_input|debounce_cnt[5][12]~345_combout\,
	cout => \u_input|debounce_cnt[5][12]~346\);

-- Location: FF_X47_Y50_N7
\u_input|debounce_cnt[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[5][12]~345_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~7_combout\,
	ena => \u_input|debounce_cnt[5][10]~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[5][12]~q\);

-- Location: FF_X47_Y50_N9
\u_input|debounce_cnt[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[5][13]~350_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~7_combout\,
	ena => \u_input|debounce_cnt[5][10]~349_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[5][13]~q\);

-- Location: LCCOMB_X47_Y50_N28
\u_input|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal5~0_combout\ = (!\u_input|debounce_cnt[5][13]~q\ & \u_input|debounce_cnt[5][12]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_input|debounce_cnt[5][13]~q\,
	datad => \u_input|debounce_cnt[5][12]~q\,
	combout => \u_input|Equal5~0_combout\);

-- Location: LCCOMB_X47_Y51_N6
\u_input|Equal5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal5~4_combout\ = (!\u_input|debounce_cnt[5][2]~q\ & (!\u_input|debounce_cnt[5][3]~q\ & (\u_input|debounce_cnt[5][4]~q\ & \u_input|debounce_cnt[5][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[5][2]~q\,
	datab => \u_input|debounce_cnt[5][3]~q\,
	datac => \u_input|debounce_cnt[5][4]~q\,
	datad => \u_input|debounce_cnt[5][7]~q\,
	combout => \u_input|Equal5~4_combout\);

-- Location: LCCOMB_X47_Y51_N12
\u_input|Equal5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal5~3_combout\ = (!\u_input|debounce_cnt[5][6]~q\ & (!\u_input|debounce_cnt[5][5]~q\ & (!\u_input|debounce_cnt[5][0]~q\ & !\u_input|debounce_cnt[5][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[5][6]~q\,
	datab => \u_input|debounce_cnt[5][5]~q\,
	datac => \u_input|debounce_cnt[5][0]~q\,
	datad => \u_input|debounce_cnt[5][1]~q\,
	combout => \u_input|Equal5~3_combout\);

-- Location: LCCOMB_X46_Y50_N14
\u_input|Equal5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal5~5_combout\ = (\u_input|Equal5~1_combout\ & (\u_input|Equal5~4_combout\ & (\u_input|Equal5~3_combout\ & \u_input|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|Equal5~1_combout\,
	datab => \u_input|Equal5~4_combout\,
	datac => \u_input|Equal5~3_combout\,
	datad => \u_input|Equal5~2_combout\,
	combout => \u_input|Equal5~5_combout\);

-- Location: LCCOMB_X47_Y50_N30
\u_input|sw_clean[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_clean[5]~5_combout\ = (\u_input|Equal5~0_combout\ & ((\u_input|Equal5~5_combout\ & (\u_input|sw_sync2\(5))) # (!\u_input|Equal5~5_combout\ & ((\u_input|sw_clean\(5)))))) # (!\u_input|Equal5~0_combout\ & (((\u_input|sw_clean\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|sw_sync2\(5),
	datab => \u_input|Equal5~0_combout\,
	datac => \u_input|sw_clean\(5),
	datad => \u_input|Equal5~5_combout\,
	combout => \u_input|sw_clean[5]~5_combout\);

-- Location: FF_X47_Y50_N31
\u_input|sw_clean[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_clean[5]~5_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_clean\(5));

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X46_Y53_N18
\u_input|sw_sync1[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_sync1[6]~feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \u_input|sw_sync1[6]~feeder_combout\);

-- Location: FF_X46_Y53_N19
\u_input|sw_sync1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_sync1[6]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_sync1\(6));

-- Location: LCCOMB_X46_Y53_N4
\u_input|sw_sync2[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_sync2[6]~feeder_combout\ = \u_input|sw_sync1\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_input|sw_sync1\(6),
	combout => \u_input|sw_sync2[6]~feeder_combout\);

-- Location: FF_X46_Y53_N5
\u_input|sw_sync2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_sync2[6]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_sync2\(6));

-- Location: LCCOMB_X47_Y53_N14
\u_input|debounce_cnt[6][0]~282\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][0]~282_combout\ = \u_input|debounce_cnt[6][0]~q\ $ (VCC)
-- \u_input|debounce_cnt[6][0]~283\ = CARRY(\u_input|debounce_cnt[6][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[6][0]~q\,
	datad => VCC,
	combout => \u_input|debounce_cnt[6][0]~282_combout\,
	cout => \u_input|debounce_cnt[6][0]~283\);

-- Location: LCCOMB_X47_Y52_N30
\u_input|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|process_0~6_combout\ = \u_input|sw_clean\(6) $ (\u_input|sw_sync2\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|sw_clean\(6),
	datac => \u_input|sw_sync2\(6),
	combout => \u_input|process_0~6_combout\);

-- Location: LCCOMB_X47_Y52_N6
\u_input|debounce_cnt[6][12]~306\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][12]~306_combout\ = (\u_input|debounce_cnt[6][12]~q\ & (\u_input|debounce_cnt[6][11]~305\ $ (GND))) # (!\u_input|debounce_cnt[6][12]~q\ & (!\u_input|debounce_cnt[6][11]~305\ & VCC))
-- \u_input|debounce_cnt[6][12]~307\ = CARRY((\u_input|debounce_cnt[6][12]~q\ & !\u_input|debounce_cnt[6][11]~305\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[6][12]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[6][11]~305\,
	combout => \u_input|debounce_cnt[6][12]~306_combout\,
	cout => \u_input|debounce_cnt[6][12]~307\);

-- Location: LCCOMB_X47_Y52_N8
\u_input|debounce_cnt[6][13]~311\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][13]~311_combout\ = (\u_input|debounce_cnt[6][13]~q\ & (!\u_input|debounce_cnt[6][12]~307\)) # (!\u_input|debounce_cnt[6][13]~q\ & ((\u_input|debounce_cnt[6][12]~307\) # (GND)))
-- \u_input|debounce_cnt[6][13]~312\ = CARRY((!\u_input|debounce_cnt[6][12]~307\) # (!\u_input|debounce_cnt[6][13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[6][13]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[6][12]~307\,
	combout => \u_input|debounce_cnt[6][13]~311_combout\,
	cout => \u_input|debounce_cnt[6][13]~312\);

-- Location: FF_X47_Y52_N9
\u_input|debounce_cnt[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[6][13]~311_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~6_combout\,
	ena => \u_input|debounce_cnt[6][7]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[6][13]~q\);

-- Location: LCCOMB_X47_Y52_N10
\u_input|debounce_cnt[6][14]~313\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][14]~313_combout\ = (\u_input|debounce_cnt[6][14]~q\ & (\u_input|debounce_cnt[6][13]~312\ $ (GND))) # (!\u_input|debounce_cnt[6][14]~q\ & (!\u_input|debounce_cnt[6][13]~312\ & VCC))
-- \u_input|debounce_cnt[6][14]~314\ = CARRY((\u_input|debounce_cnt[6][14]~q\ & !\u_input|debounce_cnt[6][13]~312\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[6][14]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[6][13]~312\,
	combout => \u_input|debounce_cnt[6][14]~313_combout\,
	cout => \u_input|debounce_cnt[6][14]~314\);

-- Location: FF_X47_Y52_N11
\u_input|debounce_cnt[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[6][14]~313_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~6_combout\,
	ena => \u_input|debounce_cnt[6][7]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[6][14]~q\);

-- Location: LCCOMB_X47_Y52_N12
\u_input|debounce_cnt[6][15]~315\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][15]~315_combout\ = (\u_input|debounce_cnt[6][15]~q\ & (!\u_input|debounce_cnt[6][14]~314\)) # (!\u_input|debounce_cnt[6][15]~q\ & ((\u_input|debounce_cnt[6][14]~314\) # (GND)))
-- \u_input|debounce_cnt[6][15]~316\ = CARRY((!\u_input|debounce_cnt[6][14]~314\) # (!\u_input|debounce_cnt[6][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[6][15]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[6][14]~314\,
	combout => \u_input|debounce_cnt[6][15]~315_combout\,
	cout => \u_input|debounce_cnt[6][15]~316\);

-- Location: FF_X47_Y52_N13
\u_input|debounce_cnt[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[6][15]~315_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~6_combout\,
	ena => \u_input|debounce_cnt[6][7]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[6][15]~q\);

-- Location: LCCOMB_X47_Y52_N14
\u_input|debounce_cnt[6][16]~317\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][16]~317_combout\ = (\u_input|debounce_cnt[6][16]~q\ & (\u_input|debounce_cnt[6][15]~316\ $ (GND))) # (!\u_input|debounce_cnt[6][16]~q\ & (!\u_input|debounce_cnt[6][15]~316\ & VCC))
-- \u_input|debounce_cnt[6][16]~318\ = CARRY((\u_input|debounce_cnt[6][16]~q\ & !\u_input|debounce_cnt[6][15]~316\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[6][16]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[6][15]~316\,
	combout => \u_input|debounce_cnt[6][16]~317_combout\,
	cout => \u_input|debounce_cnt[6][16]~318\);

-- Location: FF_X47_Y52_N15
\u_input|debounce_cnt[6][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[6][16]~317_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~6_combout\,
	ena => \u_input|debounce_cnt[6][7]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[6][16]~q\);

-- Location: LCCOMB_X47_Y52_N16
\u_input|debounce_cnt[6][17]~319\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][17]~319_combout\ = \u_input|debounce_cnt[6][16]~318\ $ (\u_input|debounce_cnt[6][17]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_input|debounce_cnt[6][17]~q\,
	cin => \u_input|debounce_cnt[6][16]~318\,
	combout => \u_input|debounce_cnt[6][17]~319_combout\);

-- Location: FF_X47_Y52_N17
\u_input|debounce_cnt[6][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[6][17]~319_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~6_combout\,
	ena => \u_input|debounce_cnt[6][7]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[6][17]~q\);

-- Location: LCCOMB_X47_Y52_N18
\u_input|Equal6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal6~2_combout\ = (\u_input|debounce_cnt[6][15]~q\ & (\u_input|debounce_cnt[6][17]~q\ & (\u_input|debounce_cnt[6][16]~q\ & \u_input|debounce_cnt[6][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[6][15]~q\,
	datab => \u_input|debounce_cnt[6][17]~q\,
	datac => \u_input|debounce_cnt[6][16]~q\,
	datad => \u_input|debounce_cnt[6][14]~q\,
	combout => \u_input|Equal6~2_combout\);

-- Location: LCCOMB_X47_Y52_N28
\u_input|Equal6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal6~1_combout\ = (!\u_input|debounce_cnt[6][8]~q\ & (!\u_input|debounce_cnt[6][10]~q\ & (!\u_input|debounce_cnt[6][11]~q\ & !\u_input|debounce_cnt[6][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[6][8]~q\,
	datab => \u_input|debounce_cnt[6][10]~q\,
	datac => \u_input|debounce_cnt[6][11]~q\,
	datad => \u_input|debounce_cnt[6][9]~q\,
	combout => \u_input|Equal6~1_combout\);

-- Location: LCCOMB_X47_Y53_N12
\u_input|debounce_cnt[6][7]~308\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][7]~308_combout\ = (\u_input|debounce_cnt[6][7]~q\ & ((\u_input|debounce_cnt[6][6]~q\) # ((\u_input|debounce_cnt[6][4]~q\) # (\u_input|debounce_cnt[6][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[6][6]~q\,
	datab => \u_input|debounce_cnt[6][7]~q\,
	datac => \u_input|debounce_cnt[6][4]~q\,
	datad => \u_input|debounce_cnt[6][5]~q\,
	combout => \u_input|debounce_cnt[6][7]~308_combout\);

-- Location: LCCOMB_X47_Y52_N24
\u_input|debounce_cnt[6][7]~309\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][7]~309_combout\ = (\u_input|debounce_cnt[6][13]~q\) # ((\u_input|debounce_cnt[6][12]~q\ & ((\u_input|debounce_cnt[6][7]~308_combout\) # (!\u_input|Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[6][12]~q\,
	datab => \u_input|Equal6~1_combout\,
	datac => \u_input|debounce_cnt[6][13]~q\,
	datad => \u_input|debounce_cnt[6][7]~308_combout\,
	combout => \u_input|debounce_cnt[6][7]~309_combout\);

-- Location: LCCOMB_X47_Y52_N22
\u_input|debounce_cnt[6][7]~310\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][7]~310_combout\ = ((\u_input|sw_clean\(6) $ (\u_input|sw_sync2\(6))) # (!\u_input|debounce_cnt[6][7]~309_combout\)) # (!\u_input|Equal6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|sw_clean\(6),
	datab => \u_input|Equal6~2_combout\,
	datac => \u_input|sw_sync2\(6),
	datad => \u_input|debounce_cnt[6][7]~309_combout\,
	combout => \u_input|debounce_cnt[6][7]~310_combout\);

-- Location: FF_X47_Y53_N15
\u_input|debounce_cnt[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[6][0]~282_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~6_combout\,
	ena => \u_input|debounce_cnt[6][7]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[6][0]~q\);

-- Location: LCCOMB_X47_Y53_N16
\u_input|debounce_cnt[6][1]~284\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][1]~284_combout\ = (\u_input|debounce_cnt[6][1]~q\ & (!\u_input|debounce_cnt[6][0]~283\)) # (!\u_input|debounce_cnt[6][1]~q\ & ((\u_input|debounce_cnt[6][0]~283\) # (GND)))
-- \u_input|debounce_cnt[6][1]~285\ = CARRY((!\u_input|debounce_cnt[6][0]~283\) # (!\u_input|debounce_cnt[6][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[6][1]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[6][0]~283\,
	combout => \u_input|debounce_cnt[6][1]~284_combout\,
	cout => \u_input|debounce_cnt[6][1]~285\);

-- Location: FF_X47_Y53_N17
\u_input|debounce_cnt[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[6][1]~284_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~6_combout\,
	ena => \u_input|debounce_cnt[6][7]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[6][1]~q\);

-- Location: LCCOMB_X47_Y53_N18
\u_input|debounce_cnt[6][2]~286\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][2]~286_combout\ = (\u_input|debounce_cnt[6][2]~q\ & (\u_input|debounce_cnt[6][1]~285\ $ (GND))) # (!\u_input|debounce_cnt[6][2]~q\ & (!\u_input|debounce_cnt[6][1]~285\ & VCC))
-- \u_input|debounce_cnt[6][2]~287\ = CARRY((\u_input|debounce_cnt[6][2]~q\ & !\u_input|debounce_cnt[6][1]~285\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[6][2]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[6][1]~285\,
	combout => \u_input|debounce_cnt[6][2]~286_combout\,
	cout => \u_input|debounce_cnt[6][2]~287\);

-- Location: FF_X47_Y53_N19
\u_input|debounce_cnt[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[6][2]~286_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~6_combout\,
	ena => \u_input|debounce_cnt[6][7]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[6][2]~q\);

-- Location: LCCOMB_X47_Y53_N20
\u_input|debounce_cnt[6][3]~288\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][3]~288_combout\ = (\u_input|debounce_cnt[6][3]~q\ & (!\u_input|debounce_cnt[6][2]~287\)) # (!\u_input|debounce_cnt[6][3]~q\ & ((\u_input|debounce_cnt[6][2]~287\) # (GND)))
-- \u_input|debounce_cnt[6][3]~289\ = CARRY((!\u_input|debounce_cnt[6][2]~287\) # (!\u_input|debounce_cnt[6][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[6][3]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[6][2]~287\,
	combout => \u_input|debounce_cnt[6][3]~288_combout\,
	cout => \u_input|debounce_cnt[6][3]~289\);

-- Location: FF_X47_Y53_N21
\u_input|debounce_cnt[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[6][3]~288_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~6_combout\,
	ena => \u_input|debounce_cnt[6][7]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[6][3]~q\);

-- Location: LCCOMB_X47_Y53_N22
\u_input|debounce_cnt[6][4]~290\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][4]~290_combout\ = (\u_input|debounce_cnt[6][4]~q\ & (\u_input|debounce_cnt[6][3]~289\ $ (GND))) # (!\u_input|debounce_cnt[6][4]~q\ & (!\u_input|debounce_cnt[6][3]~289\ & VCC))
-- \u_input|debounce_cnt[6][4]~291\ = CARRY((\u_input|debounce_cnt[6][4]~q\ & !\u_input|debounce_cnt[6][3]~289\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[6][4]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[6][3]~289\,
	combout => \u_input|debounce_cnt[6][4]~290_combout\,
	cout => \u_input|debounce_cnt[6][4]~291\);

-- Location: FF_X47_Y53_N23
\u_input|debounce_cnt[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[6][4]~290_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~6_combout\,
	ena => \u_input|debounce_cnt[6][7]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[6][4]~q\);

-- Location: LCCOMB_X47_Y53_N24
\u_input|debounce_cnt[6][5]~292\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][5]~292_combout\ = (\u_input|debounce_cnt[6][5]~q\ & (!\u_input|debounce_cnt[6][4]~291\)) # (!\u_input|debounce_cnt[6][5]~q\ & ((\u_input|debounce_cnt[6][4]~291\) # (GND)))
-- \u_input|debounce_cnt[6][5]~293\ = CARRY((!\u_input|debounce_cnt[6][4]~291\) # (!\u_input|debounce_cnt[6][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[6][5]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[6][4]~291\,
	combout => \u_input|debounce_cnt[6][5]~292_combout\,
	cout => \u_input|debounce_cnt[6][5]~293\);

-- Location: FF_X47_Y53_N25
\u_input|debounce_cnt[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[6][5]~292_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~6_combout\,
	ena => \u_input|debounce_cnt[6][7]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[6][5]~q\);

-- Location: LCCOMB_X47_Y53_N26
\u_input|debounce_cnt[6][6]~294\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][6]~294_combout\ = (\u_input|debounce_cnt[6][6]~q\ & (\u_input|debounce_cnt[6][5]~293\ $ (GND))) # (!\u_input|debounce_cnt[6][6]~q\ & (!\u_input|debounce_cnt[6][5]~293\ & VCC))
-- \u_input|debounce_cnt[6][6]~295\ = CARRY((\u_input|debounce_cnt[6][6]~q\ & !\u_input|debounce_cnt[6][5]~293\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[6][6]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[6][5]~293\,
	combout => \u_input|debounce_cnt[6][6]~294_combout\,
	cout => \u_input|debounce_cnt[6][6]~295\);

-- Location: FF_X47_Y53_N27
\u_input|debounce_cnt[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[6][6]~294_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~6_combout\,
	ena => \u_input|debounce_cnt[6][7]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[6][6]~q\);

-- Location: LCCOMB_X47_Y53_N28
\u_input|debounce_cnt[6][7]~296\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][7]~296_combout\ = (\u_input|debounce_cnt[6][7]~q\ & (!\u_input|debounce_cnt[6][6]~295\)) # (!\u_input|debounce_cnt[6][7]~q\ & ((\u_input|debounce_cnt[6][6]~295\) # (GND)))
-- \u_input|debounce_cnt[6][7]~297\ = CARRY((!\u_input|debounce_cnt[6][6]~295\) # (!\u_input|debounce_cnt[6][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[6][7]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[6][6]~295\,
	combout => \u_input|debounce_cnt[6][7]~296_combout\,
	cout => \u_input|debounce_cnt[6][7]~297\);

-- Location: FF_X47_Y53_N29
\u_input|debounce_cnt[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[6][7]~296_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~6_combout\,
	ena => \u_input|debounce_cnt[6][7]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[6][7]~q\);

-- Location: LCCOMB_X47_Y53_N30
\u_input|debounce_cnt[6][8]~298\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][8]~298_combout\ = (\u_input|debounce_cnt[6][8]~q\ & (\u_input|debounce_cnt[6][7]~297\ $ (GND))) # (!\u_input|debounce_cnt[6][8]~q\ & (!\u_input|debounce_cnt[6][7]~297\ & VCC))
-- \u_input|debounce_cnt[6][8]~299\ = CARRY((\u_input|debounce_cnt[6][8]~q\ & !\u_input|debounce_cnt[6][7]~297\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[6][8]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[6][7]~297\,
	combout => \u_input|debounce_cnt[6][8]~298_combout\,
	cout => \u_input|debounce_cnt[6][8]~299\);

-- Location: FF_X47_Y53_N31
\u_input|debounce_cnt[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[6][8]~298_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~6_combout\,
	ena => \u_input|debounce_cnt[6][7]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[6][8]~q\);

-- Location: LCCOMB_X47_Y52_N0
\u_input|debounce_cnt[6][9]~300\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][9]~300_combout\ = (\u_input|debounce_cnt[6][9]~q\ & (!\u_input|debounce_cnt[6][8]~299\)) # (!\u_input|debounce_cnt[6][9]~q\ & ((\u_input|debounce_cnt[6][8]~299\) # (GND)))
-- \u_input|debounce_cnt[6][9]~301\ = CARRY((!\u_input|debounce_cnt[6][8]~299\) # (!\u_input|debounce_cnt[6][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[6][9]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[6][8]~299\,
	combout => \u_input|debounce_cnt[6][9]~300_combout\,
	cout => \u_input|debounce_cnt[6][9]~301\);

-- Location: FF_X47_Y52_N1
\u_input|debounce_cnt[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[6][9]~300_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~6_combout\,
	ena => \u_input|debounce_cnt[6][7]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[6][9]~q\);

-- Location: LCCOMB_X47_Y52_N2
\u_input|debounce_cnt[6][10]~302\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][10]~302_combout\ = (\u_input|debounce_cnt[6][10]~q\ & (\u_input|debounce_cnt[6][9]~301\ $ (GND))) # (!\u_input|debounce_cnt[6][10]~q\ & (!\u_input|debounce_cnt[6][9]~301\ & VCC))
-- \u_input|debounce_cnt[6][10]~303\ = CARRY((\u_input|debounce_cnt[6][10]~q\ & !\u_input|debounce_cnt[6][9]~301\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[6][10]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[6][9]~301\,
	combout => \u_input|debounce_cnt[6][10]~302_combout\,
	cout => \u_input|debounce_cnt[6][10]~303\);

-- Location: FF_X47_Y52_N3
\u_input|debounce_cnt[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[6][10]~302_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~6_combout\,
	ena => \u_input|debounce_cnt[6][7]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[6][10]~q\);

-- Location: LCCOMB_X47_Y52_N4
\u_input|debounce_cnt[6][11]~304\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|debounce_cnt[6][11]~304_combout\ = (\u_input|debounce_cnt[6][11]~q\ & (!\u_input|debounce_cnt[6][10]~303\)) # (!\u_input|debounce_cnt[6][11]~q\ & ((\u_input|debounce_cnt[6][10]~303\) # (GND)))
-- \u_input|debounce_cnt[6][11]~305\ = CARRY((!\u_input|debounce_cnt[6][10]~303\) # (!\u_input|debounce_cnt[6][11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_input|debounce_cnt[6][11]~q\,
	datad => VCC,
	cin => \u_input|debounce_cnt[6][10]~303\,
	combout => \u_input|debounce_cnt[6][11]~304_combout\,
	cout => \u_input|debounce_cnt[6][11]~305\);

-- Location: FF_X47_Y52_N5
\u_input|debounce_cnt[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[6][11]~304_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~6_combout\,
	ena => \u_input|debounce_cnt[6][7]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[6][11]~q\);

-- Location: FF_X47_Y52_N7
\u_input|debounce_cnt[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|debounce_cnt[6][12]~306_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_input|process_0~6_combout\,
	ena => \u_input|debounce_cnt[6][7]~310_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|debounce_cnt[6][12]~q\);

-- Location: LCCOMB_X47_Y51_N10
\u_input|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal6~0_combout\ = (\u_input|debounce_cnt[6][12]~q\ & !\u_input|debounce_cnt[6][13]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_input|debounce_cnt[6][12]~q\,
	datad => \u_input|debounce_cnt[6][13]~q\,
	combout => \u_input|Equal6~0_combout\);

-- Location: LCCOMB_X47_Y53_N10
\u_input|Equal6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal6~4_combout\ = (!\u_input|debounce_cnt[6][3]~q\ & (\u_input|debounce_cnt[6][7]~q\ & (\u_input|debounce_cnt[6][4]~q\ & !\u_input|debounce_cnt[6][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[6][3]~q\,
	datab => \u_input|debounce_cnt[6][7]~q\,
	datac => \u_input|debounce_cnt[6][4]~q\,
	datad => \u_input|debounce_cnt[6][2]~q\,
	combout => \u_input|Equal6~4_combout\);

-- Location: LCCOMB_X47_Y53_N4
\u_input|Equal6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal6~3_combout\ = (!\u_input|debounce_cnt[6][6]~q\ & (!\u_input|debounce_cnt[6][5]~q\ & (!\u_input|debounce_cnt[6][0]~q\ & !\u_input|debounce_cnt[6][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|debounce_cnt[6][6]~q\,
	datab => \u_input|debounce_cnt[6][5]~q\,
	datac => \u_input|debounce_cnt[6][0]~q\,
	datad => \u_input|debounce_cnt[6][1]~q\,
	combout => \u_input|Equal6~3_combout\);

-- Location: LCCOMB_X47_Y52_N20
\u_input|Equal6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|Equal6~5_combout\ = (\u_input|Equal6~4_combout\ & (\u_input|Equal6~2_combout\ & (\u_input|Equal6~3_combout\ & \u_input|Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|Equal6~4_combout\,
	datab => \u_input|Equal6~2_combout\,
	datac => \u_input|Equal6~3_combout\,
	datad => \u_input|Equal6~1_combout\,
	combout => \u_input|Equal6~5_combout\);

-- Location: LCCOMB_X47_Y52_N26
\u_input|sw_clean[6]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|sw_clean[6]~4_combout\ = (\u_input|Equal6~0_combout\ & ((\u_input|Equal6~5_combout\ & (\u_input|sw_sync2\(6))) # (!\u_input|Equal6~5_combout\ & ((\u_input|sw_clean\(6)))))) # (!\u_input|Equal6~0_combout\ & (((\u_input|sw_clean\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|sw_sync2\(6),
	datab => \u_input|Equal6~0_combout\,
	datac => \u_input|sw_clean\(6),
	datad => \u_input|Equal6~5_combout\,
	combout => \u_input|sw_clean[6]~4_combout\);

-- Location: FF_X47_Y52_N27
\u_input|sw_clean[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|sw_clean[6]~4_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_clean\(6));

-- Location: FF_X46_Y50_N17
\u_input|sw_prev_clean[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_input|sw_clean\(6),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_prev_clean\(6));

-- Location: FF_X46_Y50_N19
\u_input|sw_prev_clean[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_input|sw_clean\(5),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|sw_prev_clean\(5));

-- Location: LCCOMB_X46_Y50_N18
\u_input|ativado_r~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|ativado_r~8_combout\ = (\u_input|sw_clean\(5) & (\u_input|sw_prev_clean\(5) & ((\u_input|sw_prev_clean\(6)) # (!\u_input|sw_clean\(6))))) # (!\u_input|sw_clean\(5) & ((\u_input|sw_prev_clean\(6)) # ((!\u_input|sw_clean\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|sw_clean\(5),
	datab => \u_input|sw_prev_clean\(6),
	datac => \u_input|sw_prev_clean\(5),
	datad => \u_input|sw_clean\(6),
	combout => \u_input|ativado_r~8_combout\);

-- Location: LCCOMB_X46_Y50_N26
\u_input|ativado_r~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|ativado_r~9_combout\ = (!\u_input|process_0~1_combout\ & (\u_input|process_0~0_combout\ & ((\u_input|ativado_r~7_combout\) # (!\u_input|ativado_r~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|process_0~1_combout\,
	datab => \u_input|process_0~0_combout\,
	datac => \u_input|ativado_r~7_combout\,
	datad => \u_input|ativado_r~8_combout\,
	combout => \u_input|ativado_r~9_combout\);

-- Location: LCCOMB_X46_Y49_N6
\u_input|ativado_r~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|ativado_r~10_combout\ = (\u_controller|inicia_Input_r~q\ & \u_input|ativado_r~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_controller|inicia_Input_r~q\,
	datac => \u_input|ativado_r~9_combout\,
	combout => \u_input|ativado_r~10_combout\);

-- Location: FF_X46_Y49_N7
\u_input|ativado_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|ativado_r~10_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|ativado_r\(2));

-- Location: LCCOMB_X50_Y49_N12
\u_controller|ativado_prev[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|ativado_prev[2]~feeder_combout\ = \u_input|ativado_r\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_input|ativado_r\(2),
	combout => \u_controller|ativado_prev[2]~feeder_combout\);

-- Location: FF_X50_Y49_N13
\u_controller|ativado_prev[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|ativado_prev[2]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|ativado_prev\(2));

-- Location: LCCOMB_X46_Y50_N22
\u_input|ativado_r~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|ativado_r~13_combout\ = (!\u_input|process_0~0_combout\ & ((\u_input|sw_prev_clean\(0)) # (!\u_input|sw_clean\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|sw_clean\(0),
	datab => \u_input|process_0~0_combout\,
	datad => \u_input|sw_prev_clean\(0),
	combout => \u_input|ativado_r~13_combout\);

-- Location: LCCOMB_X46_Y50_N0
\u_input|ativado_r~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|ativado_r~2_combout\ = (!\u_input|process_0~1_combout\ & (\u_input|process_0~0_combout\ & ((\u_input|sw_prev_clean\(3)) # (!\u_input|sw_clean\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|process_0~1_combout\,
	datab => \u_input|sw_clean\(3),
	datac => \u_input|sw_prev_clean\(3),
	datad => \u_input|process_0~0_combout\,
	combout => \u_input|ativado_r~2_combout\);

-- Location: LCCOMB_X46_Y49_N2
\u_input|ativado_r~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|ativado_r~11_combout\ = (!\u_input|ativado_r~8_combout\ & (\u_input|ativado_r~2_combout\ & ((\u_input|sw_prev_clean\(4)) # (!\u_input|sw_clean\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|ativado_r~8_combout\,
	datab => \u_input|sw_clean\(4),
	datac => \u_input|sw_prev_clean\(4),
	datad => \u_input|ativado_r~2_combout\,
	combout => \u_input|ativado_r~11_combout\);

-- Location: LCCOMB_X46_Y49_N4
\u_input|ativado_r~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|ativado_r~12_combout\ = (\u_controller|inicia_Input_r~q\ & ((\u_input|ativado_r~13_combout\) # (\u_input|ativado_r~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_controller|inicia_Input_r~q\,
	datac => \u_input|ativado_r~13_combout\,
	datad => \u_input|ativado_r~11_combout\,
	combout => \u_input|ativado_r~12_combout\);

-- Location: FF_X46_Y49_N5
\u_input|ativado_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|ativado_r~12_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|ativado_r\(1));

-- Location: FF_X50_Y49_N31
\u_controller|ativado_prev[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_input|ativado_r\(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|ativado_prev\(1));

-- Location: LCCOMB_X46_Y50_N6
\u_input|ativado_r~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|ativado_r~5_combout\ = (\u_input|process_0~1_combout\) # ((!\u_input|process_0~0_combout\ & ((\u_input|sw_prev_clean\(1)) # (!\u_input|sw_clean\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|process_0~1_combout\,
	datab => \u_input|sw_clean\(1),
	datac => \u_input|sw_prev_clean\(1),
	datad => \u_input|process_0~0_combout\,
	combout => \u_input|ativado_r~5_combout\);

-- Location: LCCOMB_X46_Y50_N16
\u_input|ativado_r~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|ativado_r~3_combout\ = (\u_input|sw_clean\(6) & (!\u_input|sw_prev_clean\(6) & ((\u_input|sw_prev_clean\(5)) # (!\u_input|sw_clean\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|sw_clean\(6),
	datab => \u_input|sw_clean\(5),
	datac => \u_input|sw_prev_clean\(6),
	datad => \u_input|sw_prev_clean\(5),
	combout => \u_input|ativado_r~3_combout\);

-- Location: LCCOMB_X46_Y50_N30
\u_input|ativado_r~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|ativado_r~4_combout\ = (\u_input|ativado_r~2_combout\ & ((\u_input|ativado_r~3_combout\) # ((\u_input|sw_clean\(4) & !\u_input|sw_prev_clean\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|sw_clean\(4),
	datab => \u_input|ativado_r~3_combout\,
	datac => \u_input|sw_prev_clean\(4),
	datad => \u_input|ativado_r~2_combout\,
	combout => \u_input|ativado_r~4_combout\);

-- Location: LCCOMB_X46_Y49_N0
\u_input|ativado_r~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_input|ativado_r~6_combout\ = (\u_controller|inicia_Input_r~q\ & ((\u_input|ativado_r~5_combout\) # (\u_input|ativado_r~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_controller|inicia_Input_r~q\,
	datac => \u_input|ativado_r~5_combout\,
	datad => \u_input|ativado_r~4_combout\,
	combout => \u_input|ativado_r~6_combout\);

-- Location: FF_X46_Y49_N1
\u_input|ativado_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_input|ativado_r~6_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_input|ativado_r\(0));

-- Location: FF_X50_Y49_N3
\u_controller|ativado_prev[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_input|ativado_r\(0),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|ativado_prev\(0));

-- Location: LCCOMB_X50_Y49_N2
\u_controller|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|process_0~0_combout\ = (!\u_controller|ativado_prev\(0) & ((\u_input|ativado_r\(2)) # ((\u_input|ativado_r\(0)) # (\u_input|ativado_r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|ativado_r\(2),
	datab => \u_input|ativado_r\(0),
	datac => \u_controller|ativado_prev\(0),
	datad => \u_input|ativado_r\(1),
	combout => \u_controller|process_0~0_combout\);

-- Location: LCCOMB_X50_Y49_N30
\u_controller|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|process_0~1_combout\ = (!\u_controller|ativado_prev\(2) & (!\u_controller|ativado_prev\(1) & \u_controller|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|ativado_prev\(2),
	datac => \u_controller|ativado_prev\(1),
	datad => \u_controller|process_0~0_combout\,
	combout => \u_controller|process_0~1_combout\);

-- Location: LCCOMB_X50_Y49_N26
\u_controller|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector20~0_combout\ = (\u_controller|estado.COMPLETO~q\) # ((\u_controller|contador_inputs\(1) & (\u_controller|estado.CAPTURANDO~q\ & \u_controller|contador_inputs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.COMPLETO~q\,
	datab => \u_controller|contador_inputs\(1),
	datac => \u_controller|estado.CAPTURANDO~q\,
	datad => \u_controller|contador_inputs\(2),
	combout => \u_controller|Selector20~0_combout\);

-- Location: LCCOMB_X50_Y49_N4
\u_controller|Selector20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector20~1_combout\ = (\u_controller|contador_inputs\(0) & ((\u_controller|Selector20~0_combout\) # ((\u_controller|estado.CAPTURANDO~q\ & !\u_controller|process_0~1_combout\)))) # (!\u_controller|contador_inputs\(0) & 
-- (\u_controller|estado.CAPTURANDO~q\ & ((\u_controller|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.CAPTURANDO~q\,
	datab => \u_controller|Selector20~0_combout\,
	datac => \u_controller|contador_inputs\(0),
	datad => \u_controller|process_0~1_combout\,
	combout => \u_controller|Selector20~1_combout\);

-- Location: FF_X50_Y49_N5
\u_controller|contador_inputs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector20~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|contador_inputs\(0));

-- Location: LCCOMB_X50_Y49_N6
\u_controller|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector19~0_combout\ = (\u_controller|process_0~1_combout\ & (\u_controller|contador_inputs\(0) & ((!\u_controller|contador_inputs\(2)) # (!\u_controller|contador_inputs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|process_0~1_combout\,
	datab => \u_controller|contador_inputs\(1),
	datac => \u_controller|contador_inputs\(0),
	datad => \u_controller|contador_inputs\(2),
	combout => \u_controller|Selector19~0_combout\);

-- Location: LCCOMB_X50_Y49_N28
\u_controller|Selector19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector19~1_combout\ = (\u_controller|contador_inputs\(1) & ((\u_controller|estado.COMPLETO~q\) # ((\u_controller|estado.CAPTURANDO~q\ & !\u_controller|Selector19~0_combout\)))) # (!\u_controller|contador_inputs\(1) & 
-- (((\u_controller|estado.CAPTURANDO~q\ & \u_controller|Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.COMPLETO~q\,
	datab => \u_controller|estado.CAPTURANDO~q\,
	datac => \u_controller|contador_inputs\(1),
	datad => \u_controller|Selector19~0_combout\,
	combout => \u_controller|Selector19~1_combout\);

-- Location: FF_X50_Y49_N29
\u_controller|contador_inputs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector19~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|contador_inputs\(1));

-- Location: LCCOMB_X50_Y49_N0
\u_controller|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Decoder0~7_combout\ = (\u_controller|contador_inputs\(2) & (\u_controller|process_0~1_combout\ & \u_controller|contador_inputs\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|contador_inputs\(2),
	datac => \u_controller|process_0~1_combout\,
	datad => \u_controller|contador_inputs\(1),
	combout => \u_controller|Decoder0~7_combout\);

-- Location: LCCOMB_X49_Y49_N26
\u_controller|Selector50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector50~0_combout\ = (\u_controller|estado.CAPTURANDO~q\ & (((!\u_controller|Decoder0~7_combout\)))) # (!\u_controller|estado.CAPTURANDO~q\ & (\KEY[0]~input_o\ & ((!\u_controller|estado.AGUARDA_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \u_controller|Decoder0~7_combout\,
	datac => \u_controller|estado.CAPTURANDO~q\,
	datad => \u_controller|estado.AGUARDA_START~q\,
	combout => \u_controller|Selector50~0_combout\);

-- Location: FF_X49_Y49_N27
\u_controller|estado.CAPTURANDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector50~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|estado.CAPTURANDO~q\);

-- Location: LCCOMB_X50_Y51_N24
\u_controller|estado.COMPLETO~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|estado.COMPLETO~0_combout\ = (\u_controller|estado.COMPLETO~q\) # ((\u_controller|estado.CAPTURANDO~q\ & \u_controller|Decoder0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_controller|estado.CAPTURANDO~q\,
	datac => \u_controller|estado.COMPLETO~q\,
	datad => \u_controller|Decoder0~7_combout\,
	combout => \u_controller|estado.COMPLETO~0_combout\);

-- Location: FF_X50_Y51_N25
\u_controller|estado.COMPLETO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|estado.COMPLETO~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|estado.COMPLETO~q\);

-- Location: LCCOMB_X50_Y49_N20
\u_controller|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector18~0_combout\ = (\u_controller|estado.CAPTURANDO~q\ & (\u_controller|contador_inputs\(1) & (\u_controller|contador_inputs\(0) & \u_controller|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.CAPTURANDO~q\,
	datab => \u_controller|contador_inputs\(1),
	datac => \u_controller|contador_inputs\(0),
	datad => \u_controller|process_0~1_combout\,
	combout => \u_controller|Selector18~0_combout\);

-- Location: LCCOMB_X50_Y49_N22
\u_controller|Selector18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector18~1_combout\ = (\u_controller|Selector18~0_combout\) # ((\u_controller|contador_inputs\(2) & ((\u_controller|estado.COMPLETO~q\) # (\u_controller|estado.CAPTURANDO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.COMPLETO~q\,
	datab => \u_controller|estado.CAPTURANDO~q\,
	datac => \u_controller|contador_inputs\(2),
	datad => \u_controller|Selector18~0_combout\,
	combout => \u_controller|Selector18~1_combout\);

-- Location: FF_X50_Y49_N23
\u_controller|contador_inputs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector18~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|contador_inputs\(2));

-- Location: LCCOMB_X50_Y51_N12
\u_controller|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Equal2~0_combout\ = (\u_controller|contador_inputs\(2) & (\u_controller|contador_inputs\(1) & \u_controller|contador_inputs\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|contador_inputs\(2),
	datac => \u_controller|contador_inputs\(1),
	datad => \u_controller|contador_inputs\(0),
	combout => \u_controller|Equal2~0_combout\);

-- Location: FF_X50_Y51_N13
\u_controller|clear_leds_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Equal2~0_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \u_controller|ALT_INV_estado.COMPLETO~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|clear_leds_r~q\);

-- Location: LCCOMB_X51_Y52_N30
\u_comparator|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|LessThan1~0_combout\ = (\u_comparator|timer\(2)) # ((\u_comparator|timer\(0)) # ((\u_comparator|timer\(3)) # (\u_comparator|timer\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|timer\(2),
	datab => \u_comparator|timer\(0),
	datac => \u_comparator|timer\(3),
	datad => \u_comparator|timer\(1),
	combout => \u_comparator|LessThan1~0_combout\);

-- Location: LCCOMB_X54_Y52_N6
\u_comparator|Selector34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector34~1_combout\ = (!\u_comparator|Selector34~0_combout\ & ((\KEY[0]~input_o\) # (\u_comparator|current_state.S_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \u_comparator|current_state.S_IDLE~q\,
	datad => \u_comparator|Selector34~0_combout\,
	combout => \u_comparator|Selector34~1_combout\);

-- Location: FF_X54_Y52_N7
\u_comparator|current_state.S_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector34~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|current_state.S_IDLE~q\);

-- Location: LCCOMB_X54_Y52_N4
\u_comparator|Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector35~0_combout\ = (!\u_comparator|current_state.S_IDLE~q\ & (\KEY[0]~input_o\ & (!\u_comparator|current_state.S_CHECK~q\ & !\u_comparator|Selector34~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|current_state.S_IDLE~q\,
	datab => \KEY[0]~input_o\,
	datac => \u_comparator|current_state.S_CHECK~q\,
	datad => \u_comparator|Selector34~0_combout\,
	combout => \u_comparator|Selector35~0_combout\);

-- Location: FF_X54_Y52_N5
\u_comparator|current_state.S_CHECK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector35~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|current_state.S_CHECK~q\);

-- Location: LCCOMB_X50_Y49_N18
\u_controller|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Decoder0~6_combout\ = (!\u_controller|contador_inputs\(2) & (!\u_controller|contador_inputs\(0) & (\u_controller|process_0~1_combout\ & !\u_controller|contador_inputs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|contador_inputs\(2),
	datab => \u_controller|contador_inputs\(0),
	datac => \u_controller|process_0~1_combout\,
	datad => \u_controller|contador_inputs\(1),
	combout => \u_controller|Decoder0~6_combout\);

-- Location: LCCOMB_X50_Y51_N22
\u_controller|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector23~0_combout\ = (\u_input|ativado_r\(0) & \u_controller|estado.CAPTURANDO~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_input|ativado_r\(0),
	datad => \u_controller|estado.CAPTURANDO~q\,
	combout => \u_controller|Selector23~0_combout\);

-- Location: LCCOMB_X49_Y49_N10
\u_controller|Selector41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector41~0_combout\ = (\u_controller|estado.COMPLETO~q\ & ((\u_controller|resposta_packed\(0)) # ((\u_controller|Selector23~0_combout\ & \u_controller|Decoder0~6_combout\)))) # (!\u_controller|estado.COMPLETO~q\ & 
-- (\u_controller|Selector23~0_combout\ & ((\u_controller|Decoder0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.COMPLETO~q\,
	datab => \u_controller|Selector23~0_combout\,
	datac => \u_controller|resposta_packed\(0),
	datad => \u_controller|Decoder0~6_combout\,
	combout => \u_controller|Selector41~0_combout\);

-- Location: LCCOMB_X49_Y49_N16
\u_controller|Selector41~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector41~1_combout\ = (\u_controller|Selector41~0_combout\) # ((\u_controller|estado.CAPTURANDO~q\ & (!\u_controller|Decoder0~6_combout\ & \u_controller|resposta_packed\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.CAPTURANDO~q\,
	datab => \u_controller|Decoder0~6_combout\,
	datac => \u_controller|resposta_packed\(0),
	datad => \u_controller|Selector41~0_combout\,
	combout => \u_controller|Selector41~1_combout\);

-- Location: FF_X49_Y49_N17
\u_controller|resposta_packed[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector41~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(0));

-- Location: LCCOMB_X50_Y51_N28
\u_controller|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector21~0_combout\ = (\u_controller|estado.CAPTURANDO~q\ & \u_input|ativado_r\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_controller|estado.CAPTURANDO~q\,
	datad => \u_input|ativado_r\(2),
	combout => \u_controller|Selector21~0_combout\);

-- Location: LCCOMB_X49_Y49_N6
\u_controller|Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector39~0_combout\ = (\u_controller|estado.COMPLETO~q\ & ((\u_controller|resposta_packed\(2)) # ((\u_controller|Selector21~0_combout\ & \u_controller|Decoder0~6_combout\)))) # (!\u_controller|estado.COMPLETO~q\ & 
-- (((\u_controller|Selector21~0_combout\ & \u_controller|Decoder0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.COMPLETO~q\,
	datab => \u_controller|resposta_packed\(2),
	datac => \u_controller|Selector21~0_combout\,
	datad => \u_controller|Decoder0~6_combout\,
	combout => \u_controller|Selector39~0_combout\);

-- Location: LCCOMB_X49_Y49_N22
\u_controller|Selector39~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector39~1_combout\ = (\u_controller|Selector39~0_combout\) # ((\u_controller|estado.CAPTURANDO~q\ & (!\u_controller|Decoder0~6_combout\ & \u_controller|resposta_packed\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.CAPTURANDO~q\,
	datab => \u_controller|Decoder0~6_combout\,
	datac => \u_controller|resposta_packed\(2),
	datad => \u_controller|Selector39~0_combout\,
	combout => \u_controller|Selector39~1_combout\);

-- Location: FF_X49_Y49_N23
\u_controller|resposta_packed[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector39~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(2));

-- Location: LCCOMB_X49_Y49_N4
\u_controller|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector22~0_combout\ = (\u_controller|estado.CAPTURANDO~q\ & \u_input|ativado_r\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_controller|estado.CAPTURANDO~q\,
	datad => \u_input|ativado_r\(1),
	combout => \u_controller|Selector22~0_combout\);

-- Location: LCCOMB_X49_Y49_N24
\u_controller|Selector40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector40~0_combout\ = (\u_controller|estado.COMPLETO~q\ & ((\u_controller|resposta_packed\(1)) # ((\u_controller|Selector22~0_combout\ & \u_controller|Decoder0~6_combout\)))) # (!\u_controller|estado.COMPLETO~q\ & 
-- (((\u_controller|Selector22~0_combout\ & \u_controller|Decoder0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.COMPLETO~q\,
	datab => \u_controller|resposta_packed\(1),
	datac => \u_controller|Selector22~0_combout\,
	datad => \u_controller|Decoder0~6_combout\,
	combout => \u_controller|Selector40~0_combout\);

-- Location: LCCOMB_X49_Y49_N20
\u_controller|Selector40~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector40~1_combout\ = (\u_controller|Selector40~0_combout\) # ((\u_controller|estado.CAPTURANDO~q\ & (!\u_controller|Decoder0~6_combout\ & \u_controller|resposta_packed\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.CAPTURANDO~q\,
	datab => \u_controller|Decoder0~6_combout\,
	datac => \u_controller|resposta_packed\(1),
	datad => \u_controller|Selector40~0_combout\,
	combout => \u_controller|Selector40~1_combout\);

-- Location: FF_X49_Y49_N21
\u_controller|resposta_packed[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector40~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(1));

-- Location: LCCOMB_X50_Y49_N8
\u_controller|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Decoder0~5_combout\ = (!\u_controller|contador_inputs\(2) & (\u_controller|contador_inputs\(0) & (\u_controller|process_0~1_combout\ & !\u_controller|contador_inputs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|contador_inputs\(2),
	datab => \u_controller|contador_inputs\(0),
	datac => \u_controller|process_0~1_combout\,
	datad => \u_controller|contador_inputs\(1),
	combout => \u_controller|Decoder0~5_combout\);

-- Location: LCCOMB_X49_Y49_N18
\u_controller|Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector38~0_combout\ = (\u_controller|estado.COMPLETO~q\ & ((\u_controller|resposta_packed\(3)) # ((\u_controller|Decoder0~5_combout\ & \u_controller|Selector23~0_combout\)))) # (!\u_controller|estado.COMPLETO~q\ & 
-- (((\u_controller|Decoder0~5_combout\ & \u_controller|Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.COMPLETO~q\,
	datab => \u_controller|resposta_packed\(3),
	datac => \u_controller|Decoder0~5_combout\,
	datad => \u_controller|Selector23~0_combout\,
	combout => \u_controller|Selector38~0_combout\);

-- Location: LCCOMB_X49_Y49_N14
\u_controller|Selector38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector38~1_combout\ = (\u_controller|Selector38~0_combout\) # ((\u_controller|estado.CAPTURANDO~q\ & (!\u_controller|Decoder0~5_combout\ & \u_controller|resposta_packed\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.CAPTURANDO~q\,
	datab => \u_controller|Decoder0~5_combout\,
	datac => \u_controller|resposta_packed\(3),
	datad => \u_controller|Selector38~0_combout\,
	combout => \u_controller|Selector38~1_combout\);

-- Location: FF_X49_Y49_N15
\u_controller|resposta_packed[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector38~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(3));

-- Location: LCCOMB_X49_Y49_N12
\u_controller|Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector37~0_combout\ = (\u_controller|estado.COMPLETO~q\ & ((\u_controller|resposta_packed\(4)) # ((\u_controller|Selector22~0_combout\ & \u_controller|Decoder0~5_combout\)))) # (!\u_controller|estado.COMPLETO~q\ & 
-- (\u_controller|Selector22~0_combout\ & (\u_controller|Decoder0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.COMPLETO~q\,
	datab => \u_controller|Selector22~0_combout\,
	datac => \u_controller|Decoder0~5_combout\,
	datad => \u_controller|resposta_packed\(4),
	combout => \u_controller|Selector37~0_combout\);

-- Location: LCCOMB_X49_Y49_N28
\u_controller|Selector37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector37~1_combout\ = (\u_controller|Selector37~0_combout\) # ((\u_controller|estado.CAPTURANDO~q\ & (!\u_controller|Decoder0~5_combout\ & \u_controller|resposta_packed\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.CAPTURANDO~q\,
	datab => \u_controller|Decoder0~5_combout\,
	datac => \u_controller|resposta_packed\(4),
	datad => \u_controller|Selector37~0_combout\,
	combout => \u_controller|Selector37~1_combout\);

-- Location: FF_X49_Y49_N29
\u_controller|resposta_packed[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector37~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(4));

-- Location: LCCOMB_X49_Y49_N30
\u_comparator|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Equal0~5_combout\ = (((\u_controller|resposta_packed\(3)) # (!\u_controller|resposta_packed\(4))) # (!\u_controller|resposta_packed\(1))) # (!\u_controller|resposta_packed\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|resposta_packed\(2),
	datab => \u_controller|resposta_packed\(1),
	datac => \u_controller|resposta_packed\(3),
	datad => \u_controller|resposta_packed\(4),
	combout => \u_comparator|Equal0~5_combout\);

-- Location: LCCOMB_X51_Y49_N2
\u_controller|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Decoder0~1_combout\ = (!\u_controller|contador_inputs\(1) & (\u_controller|contador_inputs\(2) & (\u_controller|contador_inputs\(0) & \u_controller|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|contador_inputs\(1),
	datab => \u_controller|contador_inputs\(2),
	datac => \u_controller|contador_inputs\(0),
	datad => \u_controller|process_0~1_combout\,
	combout => \u_controller|Decoder0~1_combout\);

-- Location: LCCOMB_X52_Y49_N16
\u_controller|Selector25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector25~3_combout\ = (\u_controller|estado.CAPTURANDO~q\ & ((\u_controller|Decoder0~1_combout\ & (\u_input|ativado_r\(1))) # (!\u_controller|Decoder0~1_combout\ & ((\u_controller|resposta_packed\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.CAPTURANDO~q\,
	datab => \u_input|ativado_r\(1),
	datac => \u_controller|resposta_packed\(16),
	datad => \u_controller|Decoder0~1_combout\,
	combout => \u_controller|Selector25~3_combout\);

-- Location: LCCOMB_X52_Y49_N30
\u_controller|Selector25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector25~2_combout\ = (\u_controller|Selector25~3_combout\) # ((\u_controller|estado.COMPLETO~q\ & \u_controller|resposta_packed\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_controller|estado.COMPLETO~q\,
	datac => \u_controller|resposta_packed\(16),
	datad => \u_controller|Selector25~3_combout\,
	combout => \u_controller|Selector25~2_combout\);

-- Location: FF_X52_Y49_N31
\u_controller|resposta_packed[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector25~2_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(16));

-- Location: LCCOMB_X50_Y49_N16
\u_controller|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Decoder0~2_combout\ = (\u_controller|contador_inputs\(2) & (!\u_controller|contador_inputs\(0) & (\u_controller|process_0~1_combout\ & !\u_controller|contador_inputs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|contador_inputs\(2),
	datab => \u_controller|contador_inputs\(0),
	datac => \u_controller|process_0~1_combout\,
	datad => \u_controller|contador_inputs\(1),
	combout => \u_controller|Decoder0~2_combout\);

-- Location: LCCOMB_X52_Y49_N2
\u_controller|Selector27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector27~3_combout\ = (\u_controller|estado.CAPTURANDO~q\ & ((\u_controller|Decoder0~2_combout\ & ((\u_input|ativado_r\(2)))) # (!\u_controller|Decoder0~2_combout\ & (\u_controller|resposta_packed\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.CAPTURANDO~q\,
	datab => \u_controller|resposta_packed\(14),
	datac => \u_input|ativado_r\(2),
	datad => \u_controller|Decoder0~2_combout\,
	combout => \u_controller|Selector27~3_combout\);

-- Location: LCCOMB_X52_Y49_N28
\u_controller|Selector27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector27~2_combout\ = (\u_controller|Selector27~3_combout\) # ((\u_controller|estado.COMPLETO~q\ & \u_controller|resposta_packed\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_controller|estado.COMPLETO~q\,
	datac => \u_controller|resposta_packed\(14),
	datad => \u_controller|Selector27~3_combout\,
	combout => \u_controller|Selector27~2_combout\);

-- Location: FF_X52_Y49_N29
\u_controller|resposta_packed[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector27~2_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(14));

-- Location: LCCOMB_X52_Y49_N10
\u_controller|Selector28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector28~3_combout\ = (\u_controller|estado.CAPTURANDO~q\ & ((\u_controller|Decoder0~2_combout\ & ((\u_input|ativado_r\(1)))) # (!\u_controller|Decoder0~2_combout\ & (\u_controller|resposta_packed\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.CAPTURANDO~q\,
	datab => \u_controller|resposta_packed\(13),
	datac => \u_input|ativado_r\(1),
	datad => \u_controller|Decoder0~2_combout\,
	combout => \u_controller|Selector28~3_combout\);

-- Location: LCCOMB_X52_Y49_N4
\u_controller|Selector28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector28~2_combout\ = (\u_controller|Selector28~3_combout\) # ((\u_controller|estado.COMPLETO~q\ & \u_controller|resposta_packed\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_controller|estado.COMPLETO~q\,
	datac => \u_controller|resposta_packed\(13),
	datad => \u_controller|Selector28~3_combout\,
	combout => \u_controller|Selector28~2_combout\);

-- Location: FF_X52_Y49_N5
\u_controller|resposta_packed[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector28~2_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(13));

-- Location: LCCOMB_X52_Y49_N12
\u_controller|Selector26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector26~3_combout\ = (\u_controller|estado.CAPTURANDO~q\ & ((\u_controller|Decoder0~1_combout\ & ((\u_input|ativado_r\(0)))) # (!\u_controller|Decoder0~1_combout\ & (\u_controller|resposta_packed\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.CAPTURANDO~q\,
	datab => \u_controller|resposta_packed\(15),
	datac => \u_input|ativado_r\(0),
	datad => \u_controller|Decoder0~1_combout\,
	combout => \u_controller|Selector26~3_combout\);

-- Location: LCCOMB_X52_Y49_N18
\u_controller|Selector26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector26~2_combout\ = (\u_controller|Selector26~3_combout\) # ((\u_controller|estado.COMPLETO~q\ & \u_controller|resposta_packed\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_controller|estado.COMPLETO~q\,
	datac => \u_controller|resposta_packed\(15),
	datad => \u_controller|Selector26~3_combout\,
	combout => \u_controller|Selector26~2_combout\);

-- Location: FF_X52_Y49_N19
\u_controller|resposta_packed[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector26~2_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(15));

-- Location: LCCOMB_X52_Y49_N26
\u_comparator|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Equal0~1_combout\ = ((\u_controller|resposta_packed\(14)) # ((\u_controller|resposta_packed\(15)) # (!\u_controller|resposta_packed\(13)))) # (!\u_controller|resposta_packed\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|resposta_packed\(16),
	datab => \u_controller|resposta_packed\(14),
	datac => \u_controller|resposta_packed\(13),
	datad => \u_controller|resposta_packed\(15),
	combout => \u_comparator|Equal0~1_combout\);

-- Location: LCCOMB_X51_Y49_N10
\u_controller|Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector36~0_combout\ = (\u_controller|resposta_packed\(5) & ((\u_controller|estado.COMPLETO~q\) # ((\u_controller|Selector21~0_combout\ & \u_controller|Decoder0~5_combout\)))) # (!\u_controller|resposta_packed\(5) & 
-- (((\u_controller|Selector21~0_combout\ & \u_controller|Decoder0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|resposta_packed\(5),
	datab => \u_controller|estado.COMPLETO~q\,
	datac => \u_controller|Selector21~0_combout\,
	datad => \u_controller|Decoder0~5_combout\,
	combout => \u_controller|Selector36~0_combout\);

-- Location: LCCOMB_X51_Y49_N26
\u_controller|Selector36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector36~1_combout\ = (\u_controller|Selector36~0_combout\) # ((!\u_controller|Decoder0~5_combout\ & (\u_controller|estado.CAPTURANDO~q\ & \u_controller|resposta_packed\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|Decoder0~5_combout\,
	datab => \u_controller|estado.CAPTURANDO~q\,
	datac => \u_controller|resposta_packed\(5),
	datad => \u_controller|Selector36~0_combout\,
	combout => \u_controller|Selector36~1_combout\);

-- Location: FF_X51_Y49_N27
\u_controller|resposta_packed[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector36~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(5));

-- Location: LCCOMB_X50_Y49_N24
\u_controller|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Decoder0~4_combout\ = (!\u_controller|contador_inputs\(2) & (!\u_controller|contador_inputs\(0) & (\u_controller|process_0~1_combout\ & \u_controller|contador_inputs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|contador_inputs\(2),
	datab => \u_controller|contador_inputs\(0),
	datac => \u_controller|process_0~1_combout\,
	datad => \u_controller|contador_inputs\(1),
	combout => \u_controller|Decoder0~4_combout\);

-- Location: LCCOMB_X51_Y49_N6
\u_controller|Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector34~0_combout\ = (\u_controller|resposta_packed\(7) & ((\u_controller|estado.COMPLETO~q\) # ((\u_controller|Selector22~0_combout\ & \u_controller|Decoder0~4_combout\)))) # (!\u_controller|resposta_packed\(7) & 
-- (((\u_controller|Selector22~0_combout\ & \u_controller|Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|resposta_packed\(7),
	datab => \u_controller|estado.COMPLETO~q\,
	datac => \u_controller|Selector22~0_combout\,
	datad => \u_controller|Decoder0~4_combout\,
	combout => \u_controller|Selector34~0_combout\);

-- Location: LCCOMB_X51_Y49_N0
\u_controller|Selector34~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector34~1_combout\ = (\u_controller|Selector34~0_combout\) # ((\u_controller|estado.CAPTURANDO~q\ & (!\u_controller|Decoder0~4_combout\ & \u_controller|resposta_packed\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.CAPTURANDO~q\,
	datab => \u_controller|Decoder0~4_combout\,
	datac => \u_controller|resposta_packed\(7),
	datad => \u_controller|Selector34~0_combout\,
	combout => \u_controller|Selector34~1_combout\);

-- Location: FF_X51_Y49_N1
\u_controller|resposta_packed[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector34~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(7));

-- Location: LCCOMB_X51_Y49_N16
\u_controller|Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector33~0_combout\ = (\u_controller|resposta_packed\(8) & ((\u_controller|estado.COMPLETO~q\) # ((\u_controller|Selector21~0_combout\ & \u_controller|Decoder0~4_combout\)))) # (!\u_controller|resposta_packed\(8) & 
-- (((\u_controller|Selector21~0_combout\ & \u_controller|Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|resposta_packed\(8),
	datab => \u_controller|estado.COMPLETO~q\,
	datac => \u_controller|Selector21~0_combout\,
	datad => \u_controller|Decoder0~4_combout\,
	combout => \u_controller|Selector33~0_combout\);

-- Location: LCCOMB_X51_Y49_N22
\u_controller|Selector33~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector33~1_combout\ = (\u_controller|Selector33~0_combout\) # ((\u_controller|estado.CAPTURANDO~q\ & (!\u_controller|Decoder0~4_combout\ & \u_controller|resposta_packed\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.CAPTURANDO~q\,
	datab => \u_controller|Decoder0~4_combout\,
	datac => \u_controller|resposta_packed\(8),
	datad => \u_controller|Selector33~0_combout\,
	combout => \u_controller|Selector33~1_combout\);

-- Location: FF_X51_Y49_N23
\u_controller|resposta_packed[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector33~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(8));

-- Location: LCCOMB_X50_Y49_N14
\u_controller|Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector35~0_combout\ = (\u_controller|estado.COMPLETO~q\ & ((\u_controller|resposta_packed\(6)) # ((\u_controller|Selector23~0_combout\ & \u_controller|Decoder0~4_combout\)))) # (!\u_controller|estado.COMPLETO~q\ & 
-- (((\u_controller|Selector23~0_combout\ & \u_controller|Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.COMPLETO~q\,
	datab => \u_controller|resposta_packed\(6),
	datac => \u_controller|Selector23~0_combout\,
	datad => \u_controller|Decoder0~4_combout\,
	combout => \u_controller|Selector35~0_combout\);

-- Location: LCCOMB_X51_Y49_N24
\u_controller|Selector35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector35~1_combout\ = (\u_controller|Selector35~0_combout\) # ((\u_controller|estado.CAPTURANDO~q\ & (!\u_controller|Decoder0~4_combout\ & \u_controller|resposta_packed\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.CAPTURANDO~q\,
	datab => \u_controller|Decoder0~4_combout\,
	datac => \u_controller|resposta_packed\(6),
	datad => \u_controller|Selector35~0_combout\,
	combout => \u_controller|Selector35~1_combout\);

-- Location: FF_X51_Y49_N25
\u_controller|resposta_packed[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector35~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(6));

-- Location: LCCOMB_X51_Y49_N4
\u_comparator|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Equal0~3_combout\ = ((\u_controller|resposta_packed\(7)) # ((!\u_controller|resposta_packed\(6)) # (!\u_controller|resposta_packed\(8)))) # (!\u_controller|resposta_packed\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|resposta_packed\(5),
	datab => \u_controller|resposta_packed\(7),
	datac => \u_controller|resposta_packed\(8),
	datad => \u_controller|resposta_packed\(6),
	combout => \u_comparator|Equal0~3_combout\);

-- Location: LCCOMB_X50_Y49_N10
\u_controller|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Decoder0~3_combout\ = (!\u_controller|contador_inputs\(2) & (\u_controller|contador_inputs\(0) & (\u_controller|process_0~1_combout\ & \u_controller|contador_inputs\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|contador_inputs\(2),
	datab => \u_controller|contador_inputs\(0),
	datac => \u_controller|process_0~1_combout\,
	datad => \u_controller|contador_inputs\(1),
	combout => \u_controller|Decoder0~3_combout\);

-- Location: LCCOMB_X51_Y49_N28
\u_controller|Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector31~0_combout\ = (\u_controller|resposta_packed\(10) & ((\u_controller|estado.COMPLETO~q\) # ((\u_controller|Selector22~0_combout\ & \u_controller|Decoder0~3_combout\)))) # (!\u_controller|resposta_packed\(10) & 
-- (((\u_controller|Selector22~0_combout\ & \u_controller|Decoder0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|resposta_packed\(10),
	datab => \u_controller|estado.COMPLETO~q\,
	datac => \u_controller|Selector22~0_combout\,
	datad => \u_controller|Decoder0~3_combout\,
	combout => \u_controller|Selector31~0_combout\);

-- Location: LCCOMB_X51_Y49_N12
\u_controller|Selector31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector31~1_combout\ = (\u_controller|Selector31~0_combout\) # ((!\u_controller|Decoder0~3_combout\ & (\u_controller|estado.CAPTURANDO~q\ & \u_controller|resposta_packed\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|Decoder0~3_combout\,
	datab => \u_controller|estado.CAPTURANDO~q\,
	datac => \u_controller|resposta_packed\(10),
	datad => \u_controller|Selector31~0_combout\,
	combout => \u_controller|Selector31~1_combout\);

-- Location: FF_X51_Y49_N13
\u_controller|resposta_packed[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector31~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(10));

-- Location: LCCOMB_X51_Y49_N20
\u_controller|Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector30~0_combout\ = (\u_controller|Selector21~0_combout\ & ((\u_controller|Decoder0~3_combout\) # ((\u_controller|estado.COMPLETO~q\ & \u_controller|resposta_packed\(11))))) # (!\u_controller|Selector21~0_combout\ & 
-- (\u_controller|estado.COMPLETO~q\ & (\u_controller|resposta_packed\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|Selector21~0_combout\,
	datab => \u_controller|estado.COMPLETO~q\,
	datac => \u_controller|resposta_packed\(11),
	datad => \u_controller|Decoder0~3_combout\,
	combout => \u_controller|Selector30~0_combout\);

-- Location: LCCOMB_X51_Y49_N8
\u_controller|Selector30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector30~1_combout\ = (\u_controller|Selector30~0_combout\) # ((!\u_controller|Decoder0~3_combout\ & (\u_controller|estado.CAPTURANDO~q\ & \u_controller|resposta_packed\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|Decoder0~3_combout\,
	datab => \u_controller|estado.CAPTURANDO~q\,
	datac => \u_controller|resposta_packed\(11),
	datad => \u_controller|Selector30~0_combout\,
	combout => \u_controller|Selector30~1_combout\);

-- Location: FF_X51_Y49_N9
\u_controller|resposta_packed[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector30~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(11));

-- Location: LCCOMB_X51_Y49_N18
\u_controller|Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector32~0_combout\ = (\u_controller|resposta_packed\(9) & ((\u_controller|estado.COMPLETO~q\) # ((\u_controller|Selector23~0_combout\ & \u_controller|Decoder0~3_combout\)))) # (!\u_controller|resposta_packed\(9) & 
-- (((\u_controller|Selector23~0_combout\ & \u_controller|Decoder0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|resposta_packed\(9),
	datab => \u_controller|estado.COMPLETO~q\,
	datac => \u_controller|Selector23~0_combout\,
	datad => \u_controller|Decoder0~3_combout\,
	combout => \u_controller|Selector32~0_combout\);

-- Location: LCCOMB_X51_Y49_N30
\u_controller|Selector32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector32~1_combout\ = (\u_controller|Selector32~0_combout\) # ((!\u_controller|Decoder0~3_combout\ & (\u_controller|estado.CAPTURANDO~q\ & \u_controller|resposta_packed\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|Decoder0~3_combout\,
	datab => \u_controller|estado.CAPTURANDO~q\,
	datac => \u_controller|resposta_packed\(9),
	datad => \u_controller|Selector32~0_combout\,
	combout => \u_controller|Selector32~1_combout\);

-- Location: FF_X51_Y49_N31
\u_controller|resposta_packed[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector32~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(9));

-- Location: LCCOMB_X52_Y49_N20
\u_controller|Selector29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector29~3_combout\ = (\u_controller|estado.CAPTURANDO~q\ & ((\u_controller|Decoder0~2_combout\ & ((\u_input|ativado_r\(0)))) # (!\u_controller|Decoder0~2_combout\ & (\u_controller|resposta_packed\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|resposta_packed\(12),
	datab => \u_input|ativado_r\(0),
	datac => \u_controller|estado.CAPTURANDO~q\,
	datad => \u_controller|Decoder0~2_combout\,
	combout => \u_controller|Selector29~3_combout\);

-- Location: LCCOMB_X52_Y49_N24
\u_controller|Selector29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector29~2_combout\ = (\u_controller|Selector29~3_combout\) # ((\u_controller|estado.COMPLETO~q\ & \u_controller|resposta_packed\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_controller|estado.COMPLETO~q\,
	datac => \u_controller|resposta_packed\(12),
	datad => \u_controller|Selector29~3_combout\,
	combout => \u_controller|Selector29~2_combout\);

-- Location: FF_X52_Y49_N25
\u_controller|resposta_packed[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector29~2_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(12));

-- Location: LCCOMB_X51_Y49_N14
\u_comparator|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Equal0~2_combout\ = (\u_controller|resposta_packed\(10)) # (((\u_controller|resposta_packed\(9)) # (!\u_controller|resposta_packed\(12))) # (!\u_controller|resposta_packed\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|resposta_packed\(10),
	datab => \u_controller|resposta_packed\(11),
	datac => \u_controller|resposta_packed\(9),
	datad => \u_controller|resposta_packed\(12),
	combout => \u_comparator|Equal0~2_combout\);

-- Location: LCCOMB_X50_Y51_N6
\u_controller|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Decoder0~0_combout\ = (\u_controller|contador_inputs\(2) & (!\u_controller|contador_inputs\(0) & (\u_controller|contador_inputs\(1) & \u_controller|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|contador_inputs\(2),
	datab => \u_controller|contador_inputs\(0),
	datac => \u_controller|contador_inputs\(1),
	datad => \u_controller|process_0~1_combout\,
	combout => \u_controller|Decoder0~0_combout\);

-- Location: LCCOMB_X50_Y51_N20
\u_controller|Selector23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector23~1_combout\ = (\u_controller|resposta_packed\(18) & ((\u_controller|estado.COMPLETO~q\) # ((\u_controller|Selector23~0_combout\ & \u_controller|Decoder0~0_combout\)))) # (!\u_controller|resposta_packed\(18) & 
-- (\u_controller|Selector23~0_combout\ & ((\u_controller|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|resposta_packed\(18),
	datab => \u_controller|Selector23~0_combout\,
	datac => \u_controller|estado.COMPLETO~q\,
	datad => \u_controller|Decoder0~0_combout\,
	combout => \u_controller|Selector23~1_combout\);

-- Location: LCCOMB_X50_Y51_N26
\u_controller|Selector23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector23~2_combout\ = (\u_controller|Selector23~1_combout\) # ((!\u_controller|Decoder0~0_combout\ & (\u_controller|estado.CAPTURANDO~q\ & \u_controller|resposta_packed\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|Decoder0~0_combout\,
	datab => \u_controller|estado.CAPTURANDO~q\,
	datac => \u_controller|resposta_packed\(18),
	datad => \u_controller|Selector23~1_combout\,
	combout => \u_controller|Selector23~2_combout\);

-- Location: FF_X50_Y51_N27
\u_controller|resposta_packed[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector23~2_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(18));

-- Location: LCCOMB_X50_Y51_N18
\u_controller|Selector21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector21~1_combout\ = (\u_controller|estado.COMPLETO~q\ & ((\u_controller|resposta_packed\(20)) # ((\u_controller|Selector21~0_combout\ & \u_controller|Decoder0~0_combout\)))) # (!\u_controller|estado.COMPLETO~q\ & 
-- (\u_controller|Selector21~0_combout\ & ((\u_controller|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.COMPLETO~q\,
	datab => \u_controller|Selector21~0_combout\,
	datac => \u_controller|resposta_packed\(20),
	datad => \u_controller|Decoder0~0_combout\,
	combout => \u_controller|Selector21~1_combout\);

-- Location: LCCOMB_X50_Y51_N14
\u_controller|Selector21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector21~2_combout\ = (\u_controller|Selector21~1_combout\) # ((!\u_controller|Decoder0~0_combout\ & (\u_controller|estado.CAPTURANDO~q\ & \u_controller|resposta_packed\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|Decoder0~0_combout\,
	datab => \u_controller|estado.CAPTURANDO~q\,
	datac => \u_controller|resposta_packed\(20),
	datad => \u_controller|Selector21~1_combout\,
	combout => \u_controller|Selector21~2_combout\);

-- Location: FF_X50_Y51_N15
\u_controller|resposta_packed[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector21~2_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(20));

-- Location: LCCOMB_X50_Y51_N0
\u_controller|Selector22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector22~1_combout\ = (\u_controller|estado.COMPLETO~q\ & ((\u_controller|resposta_packed\(19)) # ((\u_controller|Selector22~0_combout\ & \u_controller|Decoder0~0_combout\)))) # (!\u_controller|estado.COMPLETO~q\ & 
-- (((\u_controller|Selector22~0_combout\ & \u_controller|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.COMPLETO~q\,
	datab => \u_controller|resposta_packed\(19),
	datac => \u_controller|Selector22~0_combout\,
	datad => \u_controller|Decoder0~0_combout\,
	combout => \u_controller|Selector22~1_combout\);

-- Location: LCCOMB_X50_Y51_N16
\u_controller|Selector22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector22~2_combout\ = (\u_controller|Selector22~1_combout\) # ((!\u_controller|Decoder0~0_combout\ & (\u_controller|estado.CAPTURANDO~q\ & \u_controller|resposta_packed\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|Decoder0~0_combout\,
	datab => \u_controller|estado.CAPTURANDO~q\,
	datac => \u_controller|resposta_packed\(19),
	datad => \u_controller|Selector22~1_combout\,
	combout => \u_controller|Selector22~2_combout\);

-- Location: FF_X50_Y51_N17
\u_controller|resposta_packed[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector22~2_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(19));

-- Location: LCCOMB_X52_Y49_N6
\u_controller|Selector24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector24~3_combout\ = (\u_controller|estado.CAPTURANDO~q\ & ((\u_controller|Decoder0~1_combout\ & (\u_input|ativado_r\(2))) # (!\u_controller|Decoder0~1_combout\ & ((\u_controller|resposta_packed\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|estado.CAPTURANDO~q\,
	datab => \u_input|ativado_r\(2),
	datac => \u_controller|resposta_packed\(17),
	datad => \u_controller|Decoder0~1_combout\,
	combout => \u_controller|Selector24~3_combout\);

-- Location: LCCOMB_X52_Y49_N0
\u_controller|Selector24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|Selector24~2_combout\ = (\u_controller|Selector24~3_combout\) # ((\u_controller|estado.COMPLETO~q\ & \u_controller|resposta_packed\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_controller|estado.COMPLETO~q\,
	datac => \u_controller|resposta_packed\(17),
	datad => \u_controller|Selector24~3_combout\,
	combout => \u_controller|Selector24~2_combout\);

-- Location: FF_X52_Y49_N1
\u_controller|resposta_packed[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|Selector24~2_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|resposta_packed\(17));

-- Location: LCCOMB_X51_Y51_N0
\u_comparator|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Equal0~0_combout\ = ((\u_controller|resposta_packed\(20)) # ((\u_controller|resposta_packed\(19)) # (\u_controller|resposta_packed\(17)))) # (!\u_controller|resposta_packed\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|resposta_packed\(18),
	datab => \u_controller|resposta_packed\(20),
	datac => \u_controller|resposta_packed\(19),
	datad => \u_controller|resposta_packed\(17),
	combout => \u_comparator|Equal0~0_combout\);

-- Location: LCCOMB_X54_Y52_N28
\u_comparator|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Equal0~4_combout\ = (\u_comparator|Equal0~1_combout\) # ((\u_comparator|Equal0~3_combout\) # ((\u_comparator|Equal0~2_combout\) # (\u_comparator|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|Equal0~1_combout\,
	datab => \u_comparator|Equal0~3_combout\,
	datac => \u_comparator|Equal0~2_combout\,
	datad => \u_comparator|Equal0~0_combout\,
	combout => \u_comparator|Equal0~4_combout\);

-- Location: LCCOMB_X54_Y52_N18
\u_comparator|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Equal0~6_combout\ = ((\u_comparator|Equal0~5_combout\) # (\u_comparator|Equal0~4_combout\)) # (!\u_controller|resposta_packed\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|resposta_packed\(0),
	datac => \u_comparator|Equal0~5_combout\,
	datad => \u_comparator|Equal0~4_combout\,
	combout => \u_comparator|Equal0~6_combout\);

-- Location: LCCOMB_X54_Y52_N16
\u_comparator|Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector37~0_combout\ = (!\u_comparator|Selector34~0_combout\ & ((\u_comparator|current_state.S_CHECK~q\ & ((\u_comparator|Equal0~6_combout\))) # (!\u_comparator|current_state.S_CHECK~q\ & (\u_comparator|current_state.S_LOSE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|Selector34~0_combout\,
	datab => \u_comparator|current_state.S_CHECK~q\,
	datac => \u_comparator|current_state.S_LOSE~q\,
	datad => \u_comparator|Equal0~6_combout\,
	combout => \u_comparator|Selector37~0_combout\);

-- Location: FF_X54_Y52_N17
\u_comparator|current_state.S_LOSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector37~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|current_state.S_LOSE~q\);

-- Location: LCCOMB_X51_Y52_N26
\u_comparator|timer[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|timer[7]~7_combout\ = (\KEY[1]~input_o\ & (\u_comparator|current_state.S_LOSE~q\ & ((\u_comparator|LessThan1~0_combout\) # (\u_comparator|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|LessThan1~0_combout\,
	datab => \u_comparator|LessThan1~1_combout\,
	datac => \KEY[1]~input_o\,
	datad => \u_comparator|current_state.S_LOSE~q\,
	combout => \u_comparator|timer[7]~7_combout\);

-- Location: LCCOMB_X51_Y52_N0
\u_comparator|timer[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|timer[0]~8_combout\ = \u_comparator|timer[7]~7_combout\ $ (\u_comparator|timer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|timer[7]~7_combout\,
	datac => \u_comparator|timer\(0),
	combout => \u_comparator|timer[0]~8_combout\);

-- Location: FF_X51_Y52_N1
\u_comparator|timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|timer[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|timer\(0));

-- Location: LCCOMB_X51_Y52_N8
\u_comparator|timer[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|timer[1]~10_cout\ = CARRY(\u_comparator|timer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|timer\(0),
	datad => VCC,
	cout => \u_comparator|timer[1]~10_cout\);

-- Location: LCCOMB_X51_Y52_N10
\u_comparator|timer[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|timer[1]~11_combout\ = (\u_comparator|timer\(1) & (\u_comparator|timer[1]~10_cout\ & VCC)) # (!\u_comparator|timer\(1) & (!\u_comparator|timer[1]~10_cout\))
-- \u_comparator|timer[1]~12\ = CARRY((!\u_comparator|timer\(1) & !\u_comparator|timer[1]~10_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|timer\(1),
	datad => VCC,
	cin => \u_comparator|timer[1]~10_cout\,
	combout => \u_comparator|timer[1]~11_combout\,
	cout => \u_comparator|timer[1]~12\);

-- Location: FF_X51_Y52_N11
\u_comparator|timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|timer[1]~11_combout\,
	ena => \u_comparator|timer[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|timer\(1));

-- Location: LCCOMB_X51_Y52_N12
\u_comparator|timer[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|timer[2]~13_combout\ = (\u_comparator|timer\(2) & ((GND) # (!\u_comparator|timer[1]~12\))) # (!\u_comparator|timer\(2) & (\u_comparator|timer[1]~12\ $ (GND)))
-- \u_comparator|timer[2]~14\ = CARRY((\u_comparator|timer\(2)) # (!\u_comparator|timer[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|timer\(2),
	datad => VCC,
	cin => \u_comparator|timer[1]~12\,
	combout => \u_comparator|timer[2]~13_combout\,
	cout => \u_comparator|timer[2]~14\);

-- Location: FF_X51_Y52_N13
\u_comparator|timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|timer[2]~13_combout\,
	ena => \u_comparator|timer[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|timer\(2));

-- Location: LCCOMB_X51_Y52_N14
\u_comparator|timer[3]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|timer[3]~15_combout\ = (\u_comparator|timer\(3) & (\u_comparator|timer[2]~14\ & VCC)) # (!\u_comparator|timer\(3) & (!\u_comparator|timer[2]~14\))
-- \u_comparator|timer[3]~16\ = CARRY((!\u_comparator|timer\(3) & !\u_comparator|timer[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|timer\(3),
	datad => VCC,
	cin => \u_comparator|timer[2]~14\,
	combout => \u_comparator|timer[3]~15_combout\,
	cout => \u_comparator|timer[3]~16\);

-- Location: FF_X51_Y52_N15
\u_comparator|timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|timer[3]~15_combout\,
	ena => \u_comparator|timer[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|timer\(3));

-- Location: LCCOMB_X51_Y52_N16
\u_comparator|timer[4]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|timer[4]~17_combout\ = (\u_comparator|timer\(4) & ((GND) # (!\u_comparator|timer[3]~16\))) # (!\u_comparator|timer\(4) & (\u_comparator|timer[3]~16\ $ (GND)))
-- \u_comparator|timer[4]~18\ = CARRY((\u_comparator|timer\(4)) # (!\u_comparator|timer[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|timer\(4),
	datad => VCC,
	cin => \u_comparator|timer[3]~16\,
	combout => \u_comparator|timer[4]~17_combout\,
	cout => \u_comparator|timer[4]~18\);

-- Location: FF_X51_Y52_N17
\u_comparator|timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|timer[4]~17_combout\,
	ena => \u_comparator|timer[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|timer\(4));

-- Location: LCCOMB_X51_Y52_N18
\u_comparator|timer[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|timer[5]~19_combout\ = (\u_comparator|timer\(5) & (\u_comparator|timer[4]~18\ & VCC)) # (!\u_comparator|timer\(5) & (!\u_comparator|timer[4]~18\))
-- \u_comparator|timer[5]~20\ = CARRY((!\u_comparator|timer\(5) & !\u_comparator|timer[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|timer\(5),
	datad => VCC,
	cin => \u_comparator|timer[4]~18\,
	combout => \u_comparator|timer[5]~19_combout\,
	cout => \u_comparator|timer[5]~20\);

-- Location: FF_X51_Y52_N19
\u_comparator|timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|timer[5]~19_combout\,
	ena => \u_comparator|timer[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|timer\(5));

-- Location: LCCOMB_X51_Y52_N20
\u_comparator|timer[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|timer[6]~21_combout\ = (\u_comparator|timer\(6) & ((GND) # (!\u_comparator|timer[5]~20\))) # (!\u_comparator|timer\(6) & (\u_comparator|timer[5]~20\ $ (GND)))
-- \u_comparator|timer[6]~22\ = CARRY((\u_comparator|timer\(6)) # (!\u_comparator|timer[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|timer\(6),
	datad => VCC,
	cin => \u_comparator|timer[5]~20\,
	combout => \u_comparator|timer[6]~21_combout\,
	cout => \u_comparator|timer[6]~22\);

-- Location: FF_X51_Y52_N21
\u_comparator|timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|timer[6]~21_combout\,
	ena => \u_comparator|timer[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|timer\(6));

-- Location: LCCOMB_X51_Y52_N22
\u_comparator|timer[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|timer[7]~23_combout\ = \u_comparator|timer\(7) $ (!\u_comparator|timer[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|timer\(7),
	cin => \u_comparator|timer[6]~22\,
	combout => \u_comparator|timer[7]~23_combout\);

-- Location: FF_X51_Y52_N23
\u_comparator|timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|timer[7]~23_combout\,
	ena => \u_comparator|timer[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|timer\(7));

-- Location: LCCOMB_X51_Y52_N24
\u_comparator|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|LessThan1~1_combout\ = (\u_comparator|timer\(5)) # ((\u_comparator|timer\(4)) # ((\u_comparator|timer\(7)) # (\u_comparator|timer\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|timer\(5),
	datab => \u_comparator|timer\(4),
	datac => \u_comparator|timer\(7),
	datad => \u_comparator|timer\(6),
	combout => \u_comparator|LessThan1~1_combout\);

-- Location: LCCOMB_X51_Y52_N2
\u_comparator|Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector34~0_combout\ = (!\u_comparator|LessThan1~1_combout\ & (!\u_comparator|LessThan1~0_combout\ & \u_comparator|current_state.S_LOSE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|LessThan1~1_combout\,
	datac => \u_comparator|LessThan1~0_combout\,
	datad => \u_comparator|current_state.S_LOSE~q\,
	combout => \u_comparator|Selector34~0_combout\);

-- Location: FF_X51_Y52_N3
\u_comparator|comparison_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector34~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|comparison_done~q\);

-- Location: LCCOMB_X51_Y52_N6
\system_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \system_state~0_combout\ = (\system_state~q\ & ((!\u_comparator|comparison_done~q\))) # (!\system_state~q\ & (\u_controller|clear_leds_r~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_controller|clear_leds_r~q\,
	datac => \system_state~q\,
	datad => \u_comparator|comparison_done~q\,
	combout => \system_state~0_combout\);

-- Location: FF_X51_Y52_N7
system_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \system_state~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_state~q\);

-- Location: LCCOMB_X49_Y49_N0
\u_controller|enable_led_r~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_controller|enable_led_r~0_combout\ = (\u_controller|estado.AGUARDA_START~q\) # (\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_controller|estado.AGUARDA_START~q\,
	datac => \KEY[0]~input_o\,
	combout => \u_controller|enable_led_r~0_combout\);

-- Location: FF_X49_Y49_N1
\u_controller|enable_led_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_controller|enable_led_r~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_controller|enable_led_r~q\);

-- Location: LCCOMB_X52_Y52_N26
\u_led_input|leds_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_led_input|leds_reg~0_combout\ = (\u_controller|enable_led_r~q\ & (!\u_input|ativado_r\(1) & (!\u_input|ativado_r\(2) & \u_input|ativado_r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|enable_led_r~q\,
	datab => \u_input|ativado_r\(1),
	datac => \u_input|ativado_r\(2),
	datad => \u_input|ativado_r\(0),
	combout => \u_led_input|leds_reg~0_combout\);

-- Location: LCCOMB_X51_Y52_N4
\u_led_input|leds_reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_led_input|leds_reg~1_combout\ = (!\u_controller|clear_leds_r~q\ & ((\u_led_input|leds_reg\(0)) # (\u_led_input|leds_reg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_controller|clear_leds_r~q\,
	datac => \u_led_input|leds_reg\(0),
	datad => \u_led_input|leds_reg~0_combout\,
	combout => \u_led_input|leds_reg~1_combout\);

-- Location: FF_X51_Y52_N5
\u_led_input|leds_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_led_input|leds_reg~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_input|leds_reg\(0));

-- Location: LCCOMB_X54_Y52_N22
\u_comparator|current_state.S_WIN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|current_state.S_WIN~0_combout\ = (\u_comparator|current_state.S_CHECK~q\ & ((!\u_comparator|Equal0~6_combout\))) # (!\u_comparator|current_state.S_CHECK~q\ & (\u_comparator|current_state.S_WIN~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|current_state.S_CHECK~q\,
	datac => \u_comparator|current_state.S_WIN~q\,
	datad => \u_comparator|Equal0~6_combout\,
	combout => \u_comparator|current_state.S_WIN~0_combout\);

-- Location: FF_X54_Y52_N23
\u_comparator|current_state.S_WIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|current_state.S_WIN~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|current_state.S_WIN~q\);

-- Location: LCCOMB_X54_Y52_N0
\u_comparator|blink_cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|blink_cnt~0_combout\ = (\u_comparator|current_state.S_CHECK~q\) # (\u_comparator|current_state.S_LOSE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_comparator|current_state.S_CHECK~q\,
	datad => \u_comparator|current_state.S_LOSE~q\,
	combout => \u_comparator|blink_cnt~0_combout\);

-- Location: LCCOMB_X55_Y53_N6
\u_comparator|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~1_combout\ = \u_comparator|blink_cnt\(0) $ (VCC)
-- \u_comparator|Add0~2\ = CARRY(\u_comparator|blink_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(0),
	datad => VCC,
	combout => \u_comparator|Add0~1_combout\,
	cout => \u_comparator|Add0~2\);

-- Location: LCCOMB_X56_Y53_N30
\u_comparator|Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector32~0_combout\ = (\u_comparator|blink_cnt\(0) & ((\u_comparator|blink_cnt~0_combout\) # ((\u_comparator|Add0~1_combout\ & \u_comparator|Add0~0_combout\)))) # (!\u_comparator|blink_cnt\(0) & (((\u_comparator|Add0~1_combout\ & 
-- \u_comparator|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(0),
	datab => \u_comparator|blink_cnt~0_combout\,
	datac => \u_comparator|Add0~1_combout\,
	datad => \u_comparator|Add0~0_combout\,
	combout => \u_comparator|Selector32~0_combout\);

-- Location: FF_X55_Y53_N13
\u_comparator|blink_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_comparator|Selector32~0_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(0));

-- Location: LCCOMB_X55_Y53_N8
\u_comparator|Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~3_combout\ = (\u_comparator|blink_cnt\(1) & (!\u_comparator|Add0~2\)) # (!\u_comparator|blink_cnt\(1) & ((\u_comparator|Add0~2\) # (GND)))
-- \u_comparator|Add0~4\ = CARRY((!\u_comparator|Add0~2\) # (!\u_comparator|blink_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(1),
	datad => VCC,
	cin => \u_comparator|Add0~2\,
	combout => \u_comparator|Add0~3_combout\,
	cout => \u_comparator|Add0~4\);

-- Location: LCCOMB_X54_Y53_N16
\u_comparator|Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector31~0_combout\ = (\u_comparator|Add0~3_combout\ & ((\u_comparator|Add0~0_combout\) # ((\u_comparator|blink_cnt~0_combout\ & \u_comparator|blink_cnt\(1))))) # (!\u_comparator|Add0~3_combout\ & (\u_comparator|blink_cnt~0_combout\ & 
-- (\u_comparator|blink_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|Add0~3_combout\,
	datab => \u_comparator|blink_cnt~0_combout\,
	datac => \u_comparator|blink_cnt\(1),
	datad => \u_comparator|Add0~0_combout\,
	combout => \u_comparator|Selector31~0_combout\);

-- Location: FF_X54_Y53_N17
\u_comparator|blink_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector31~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(1));

-- Location: LCCOMB_X55_Y53_N10
\u_comparator|Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~5_combout\ = (\u_comparator|blink_cnt\(2) & (\u_comparator|Add0~4\ $ (GND))) # (!\u_comparator|blink_cnt\(2) & (!\u_comparator|Add0~4\ & VCC))
-- \u_comparator|Add0~6\ = CARRY((\u_comparator|blink_cnt\(2) & !\u_comparator|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(2),
	datad => VCC,
	cin => \u_comparator|Add0~4\,
	combout => \u_comparator|Add0~5_combout\,
	cout => \u_comparator|Add0~6\);

-- Location: LCCOMB_X56_Y53_N20
\u_comparator|Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector30~0_combout\ = (\u_comparator|Add0~5_combout\ & ((\u_comparator|Add0~0_combout\) # ((\u_comparator|blink_cnt~0_combout\ & \u_comparator|blink_cnt\(2))))) # (!\u_comparator|Add0~5_combout\ & (\u_comparator|blink_cnt~0_combout\ & 
-- (\u_comparator|blink_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|Add0~5_combout\,
	datab => \u_comparator|blink_cnt~0_combout\,
	datac => \u_comparator|blink_cnt\(2),
	datad => \u_comparator|Add0~0_combout\,
	combout => \u_comparator|Selector30~0_combout\);

-- Location: FF_X56_Y53_N21
\u_comparator|blink_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector30~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(2));

-- Location: LCCOMB_X55_Y53_N12
\u_comparator|Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~7_combout\ = (\u_comparator|blink_cnt\(3) & (!\u_comparator|Add0~6\)) # (!\u_comparator|blink_cnt\(3) & ((\u_comparator|Add0~6\) # (GND)))
-- \u_comparator|Add0~8\ = CARRY((!\u_comparator|Add0~6\) # (!\u_comparator|blink_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|blink_cnt\(3),
	datad => VCC,
	cin => \u_comparator|Add0~6\,
	combout => \u_comparator|Add0~7_combout\,
	cout => \u_comparator|Add0~8\);

-- Location: LCCOMB_X55_Y53_N0
\u_comparator|Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector29~0_combout\ = (\u_comparator|blink_cnt~0_combout\ & ((\u_comparator|blink_cnt\(3)) # ((\u_comparator|Add0~7_combout\ & \u_comparator|Add0~0_combout\)))) # (!\u_comparator|blink_cnt~0_combout\ & (\u_comparator|Add0~7_combout\ & 
-- ((\u_comparator|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt~0_combout\,
	datab => \u_comparator|Add0~7_combout\,
	datac => \u_comparator|blink_cnt\(3),
	datad => \u_comparator|Add0~0_combout\,
	combout => \u_comparator|Selector29~0_combout\);

-- Location: FF_X55_Y53_N1
\u_comparator|blink_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector29~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(3));

-- Location: LCCOMB_X55_Y53_N14
\u_comparator|Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~9_combout\ = (\u_comparator|blink_cnt\(4) & (\u_comparator|Add0~8\ $ (GND))) # (!\u_comparator|blink_cnt\(4) & (!\u_comparator|Add0~8\ & VCC))
-- \u_comparator|Add0~10\ = CARRY((\u_comparator|blink_cnt\(4) & !\u_comparator|Add0~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|blink_cnt\(4),
	datad => VCC,
	cin => \u_comparator|Add0~8\,
	combout => \u_comparator|Add0~9_combout\,
	cout => \u_comparator|Add0~10\);

-- Location: LCCOMB_X55_Y53_N2
\u_comparator|Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector28~0_combout\ = (\u_comparator|blink_cnt~0_combout\ & ((\u_comparator|blink_cnt\(4)) # ((\u_comparator|Add0~9_combout\ & \u_comparator|Add0~0_combout\)))) # (!\u_comparator|blink_cnt~0_combout\ & (\u_comparator|Add0~9_combout\ & 
-- ((\u_comparator|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt~0_combout\,
	datab => \u_comparator|Add0~9_combout\,
	datac => \u_comparator|blink_cnt\(4),
	datad => \u_comparator|Add0~0_combout\,
	combout => \u_comparator|Selector28~0_combout\);

-- Location: FF_X55_Y53_N3
\u_comparator|blink_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector28~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(4));

-- Location: LCCOMB_X55_Y53_N16
\u_comparator|Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~11_combout\ = (\u_comparator|blink_cnt\(5) & (!\u_comparator|Add0~10\)) # (!\u_comparator|blink_cnt\(5) & ((\u_comparator|Add0~10\) # (GND)))
-- \u_comparator|Add0~12\ = CARRY((!\u_comparator|Add0~10\) # (!\u_comparator|blink_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(5),
	datad => VCC,
	cin => \u_comparator|Add0~10\,
	combout => \u_comparator|Add0~11_combout\,
	cout => \u_comparator|Add0~12\);

-- Location: LCCOMB_X56_Y53_N6
\u_comparator|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector27~0_combout\ = (\u_comparator|Add0~11_combout\ & ((\u_comparator|Add0~0_combout\) # ((\u_comparator|blink_cnt~0_combout\ & \u_comparator|blink_cnt\(5))))) # (!\u_comparator|Add0~11_combout\ & (\u_comparator|blink_cnt~0_combout\ & 
-- (\u_comparator|blink_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|Add0~11_combout\,
	datab => \u_comparator|blink_cnt~0_combout\,
	datac => \u_comparator|blink_cnt\(5),
	datad => \u_comparator|Add0~0_combout\,
	combout => \u_comparator|Selector27~0_combout\);

-- Location: FF_X56_Y53_N7
\u_comparator|blink_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector27~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(5));

-- Location: LCCOMB_X55_Y53_N18
\u_comparator|Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~13_combout\ = (\u_comparator|blink_cnt\(6) & (\u_comparator|Add0~12\ $ (GND))) # (!\u_comparator|blink_cnt\(6) & (!\u_comparator|Add0~12\ & VCC))
-- \u_comparator|Add0~14\ = CARRY((\u_comparator|blink_cnt\(6) & !\u_comparator|Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|blink_cnt\(6),
	datad => VCC,
	cin => \u_comparator|Add0~12\,
	combout => \u_comparator|Add0~13_combout\,
	cout => \u_comparator|Add0~14\);

-- Location: LCCOMB_X55_Y53_N4
\u_comparator|Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector26~0_combout\ = (\u_comparator|blink_cnt~0_combout\ & ((\u_comparator|blink_cnt\(6)) # ((\u_comparator|Add0~0_combout\ & \u_comparator|Add0~13_combout\)))) # (!\u_comparator|blink_cnt~0_combout\ & (\u_comparator|Add0~0_combout\ & 
-- ((\u_comparator|Add0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt~0_combout\,
	datab => \u_comparator|Add0~0_combout\,
	datac => \u_comparator|blink_cnt\(6),
	datad => \u_comparator|Add0~13_combout\,
	combout => \u_comparator|Selector26~0_combout\);

-- Location: FF_X55_Y53_N5
\u_comparator|blink_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector26~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(6));

-- Location: LCCOMB_X55_Y53_N20
\u_comparator|Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~15_combout\ = (\u_comparator|blink_cnt\(7) & (!\u_comparator|Add0~14\)) # (!\u_comparator|blink_cnt\(7) & ((\u_comparator|Add0~14\) # (GND)))
-- \u_comparator|Add0~16\ = CARRY((!\u_comparator|Add0~14\) # (!\u_comparator|blink_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|blink_cnt\(7),
	datad => VCC,
	cin => \u_comparator|Add0~14\,
	combout => \u_comparator|Add0~15_combout\,
	cout => \u_comparator|Add0~16\);

-- Location: LCCOMB_X56_Y53_N28
\u_comparator|Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector25~0_combout\ = (\u_comparator|Add0~0_combout\ & ((\u_comparator|Add0~15_combout\) # ((\u_comparator|blink_cnt~0_combout\ & \u_comparator|blink_cnt\(7))))) # (!\u_comparator|Add0~0_combout\ & (\u_comparator|blink_cnt~0_combout\ & 
-- (\u_comparator|blink_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|Add0~0_combout\,
	datab => \u_comparator|blink_cnt~0_combout\,
	datac => \u_comparator|blink_cnt\(7),
	datad => \u_comparator|Add0~15_combout\,
	combout => \u_comparator|Selector25~0_combout\);

-- Location: FF_X56_Y53_N29
\u_comparator|blink_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector25~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(7));

-- Location: LCCOMB_X55_Y53_N22
\u_comparator|Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~17_combout\ = (\u_comparator|blink_cnt\(8) & (\u_comparator|Add0~16\ $ (GND))) # (!\u_comparator|blink_cnt\(8) & (!\u_comparator|Add0~16\ & VCC))
-- \u_comparator|Add0~18\ = CARRY((\u_comparator|blink_cnt\(8) & !\u_comparator|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|blink_cnt\(8),
	datad => VCC,
	cin => \u_comparator|Add0~16\,
	combout => \u_comparator|Add0~17_combout\,
	cout => \u_comparator|Add0~18\);

-- Location: LCCOMB_X56_Y53_N10
\u_comparator|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector24~0_combout\ = (\u_comparator|Add0~0_combout\ & ((\u_comparator|Add0~17_combout\) # ((\u_comparator|blink_cnt~0_combout\ & \u_comparator|blink_cnt\(8))))) # (!\u_comparator|Add0~0_combout\ & (\u_comparator|blink_cnt~0_combout\ & 
-- (\u_comparator|blink_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|Add0~0_combout\,
	datab => \u_comparator|blink_cnt~0_combout\,
	datac => \u_comparator|blink_cnt\(8),
	datad => \u_comparator|Add0~17_combout\,
	combout => \u_comparator|Selector24~0_combout\);

-- Location: FF_X56_Y53_N11
\u_comparator|blink_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector24~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(8));

-- Location: LCCOMB_X55_Y53_N24
\u_comparator|Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~19_combout\ = (\u_comparator|blink_cnt\(9) & (!\u_comparator|Add0~18\)) # (!\u_comparator|blink_cnt\(9) & ((\u_comparator|Add0~18\) # (GND)))
-- \u_comparator|Add0~20\ = CARRY((!\u_comparator|Add0~18\) # (!\u_comparator|blink_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(9),
	datad => VCC,
	cin => \u_comparator|Add0~18\,
	combout => \u_comparator|Add0~19_combout\,
	cout => \u_comparator|Add0~20\);

-- Location: LCCOMB_X56_Y53_N4
\u_comparator|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector23~0_combout\ = (\u_comparator|Add0~0_combout\ & ((\u_comparator|Add0~19_combout\) # ((\u_comparator|blink_cnt~0_combout\ & \u_comparator|blink_cnt\(9))))) # (!\u_comparator|Add0~0_combout\ & (\u_comparator|blink_cnt~0_combout\ & 
-- (\u_comparator|blink_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|Add0~0_combout\,
	datab => \u_comparator|blink_cnt~0_combout\,
	datac => \u_comparator|blink_cnt\(9),
	datad => \u_comparator|Add0~19_combout\,
	combout => \u_comparator|Selector23~0_combout\);

-- Location: FF_X56_Y53_N5
\u_comparator|blink_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector23~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(9));

-- Location: LCCOMB_X55_Y53_N26
\u_comparator|Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~21_combout\ = (\u_comparator|blink_cnt\(10) & (\u_comparator|Add0~20\ $ (GND))) # (!\u_comparator|blink_cnt\(10) & (!\u_comparator|Add0~20\ & VCC))
-- \u_comparator|Add0~22\ = CARRY((\u_comparator|blink_cnt\(10) & !\u_comparator|Add0~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|blink_cnt\(10),
	datad => VCC,
	cin => \u_comparator|Add0~20\,
	combout => \u_comparator|Add0~21_combout\,
	cout => \u_comparator|Add0~22\);

-- Location: LCCOMB_X56_Y53_N18
\u_comparator|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector22~0_combout\ = (\u_comparator|Add0~21_combout\ & ((\u_comparator|Add0~0_combout\) # ((\u_comparator|blink_cnt~0_combout\ & \u_comparator|blink_cnt\(10))))) # (!\u_comparator|Add0~21_combout\ & (\u_comparator|blink_cnt~0_combout\ & 
-- (\u_comparator|blink_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|Add0~21_combout\,
	datab => \u_comparator|blink_cnt~0_combout\,
	datac => \u_comparator|blink_cnt\(10),
	datad => \u_comparator|Add0~0_combout\,
	combout => \u_comparator|Selector22~0_combout\);

-- Location: FF_X56_Y53_N19
\u_comparator|blink_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector22~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(10));

-- Location: LCCOMB_X55_Y53_N28
\u_comparator|Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~23_combout\ = (\u_comparator|blink_cnt\(11) & (!\u_comparator|Add0~22\)) # (!\u_comparator|blink_cnt\(11) & ((\u_comparator|Add0~22\) # (GND)))
-- \u_comparator|Add0~24\ = CARRY((!\u_comparator|Add0~22\) # (!\u_comparator|blink_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(11),
	datad => VCC,
	cin => \u_comparator|Add0~22\,
	combout => \u_comparator|Add0~23_combout\,
	cout => \u_comparator|Add0~24\);

-- Location: LCCOMB_X56_Y53_N16
\u_comparator|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector21~0_combout\ = (\u_comparator|Add0~0_combout\ & ((\u_comparator|Add0~23_combout\) # ((\u_comparator|blink_cnt~0_combout\ & \u_comparator|blink_cnt\(11))))) # (!\u_comparator|Add0~0_combout\ & (\u_comparator|blink_cnt~0_combout\ & 
-- (\u_comparator|blink_cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|Add0~0_combout\,
	datab => \u_comparator|blink_cnt~0_combout\,
	datac => \u_comparator|blink_cnt\(11),
	datad => \u_comparator|Add0~23_combout\,
	combout => \u_comparator|Selector21~0_combout\);

-- Location: FF_X56_Y53_N17
\u_comparator|blink_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector21~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(11));

-- Location: LCCOMB_X55_Y53_N30
\u_comparator|Add0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~25_combout\ = (\u_comparator|blink_cnt\(12) & (\u_comparator|Add0~24\ $ (GND))) # (!\u_comparator|blink_cnt\(12) & (!\u_comparator|Add0~24\ & VCC))
-- \u_comparator|Add0~26\ = CARRY((\u_comparator|blink_cnt\(12) & !\u_comparator|Add0~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(12),
	datad => VCC,
	cin => \u_comparator|Add0~24\,
	combout => \u_comparator|Add0~25_combout\,
	cout => \u_comparator|Add0~26\);

-- Location: LCCOMB_X56_Y53_N2
\u_comparator|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector20~0_combout\ = (\u_comparator|Add0~25_combout\ & ((\u_comparator|Add0~0_combout\) # ((\u_comparator|blink_cnt~0_combout\ & \u_comparator|blink_cnt\(12))))) # (!\u_comparator|Add0~25_combout\ & (\u_comparator|blink_cnt~0_combout\ & 
-- (\u_comparator|blink_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|Add0~25_combout\,
	datab => \u_comparator|blink_cnt~0_combout\,
	datac => \u_comparator|blink_cnt\(12),
	datad => \u_comparator|Add0~0_combout\,
	combout => \u_comparator|Selector20~0_combout\);

-- Location: FF_X56_Y53_N3
\u_comparator|blink_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector20~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(12));

-- Location: LCCOMB_X55_Y52_N0
\u_comparator|Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~27_combout\ = (\u_comparator|blink_cnt\(13) & (!\u_comparator|Add0~26\)) # (!\u_comparator|blink_cnt\(13) & ((\u_comparator|Add0~26\) # (GND)))
-- \u_comparator|Add0~28\ = CARRY((!\u_comparator|Add0~26\) # (!\u_comparator|blink_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|blink_cnt\(13),
	datad => VCC,
	cin => \u_comparator|Add0~26\,
	combout => \u_comparator|Add0~27_combout\,
	cout => \u_comparator|Add0~28\);

-- Location: LCCOMB_X56_Y53_N12
\u_comparator|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector19~0_combout\ = (\u_comparator|Add0~27_combout\ & ((\u_comparator|Add0~0_combout\) # ((\u_comparator|blink_cnt~0_combout\ & \u_comparator|blink_cnt\(13))))) # (!\u_comparator|Add0~27_combout\ & (\u_comparator|blink_cnt~0_combout\ & 
-- (\u_comparator|blink_cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|Add0~27_combout\,
	datab => \u_comparator|blink_cnt~0_combout\,
	datac => \u_comparator|blink_cnt\(13),
	datad => \u_comparator|Add0~0_combout\,
	combout => \u_comparator|Selector19~0_combout\);

-- Location: FF_X56_Y53_N13
\u_comparator|blink_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector19~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(13));

-- Location: LCCOMB_X55_Y52_N2
\u_comparator|Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~29_combout\ = (\u_comparator|blink_cnt\(14) & (\u_comparator|Add0~28\ $ (GND))) # (!\u_comparator|blink_cnt\(14) & (!\u_comparator|Add0~28\ & VCC))
-- \u_comparator|Add0~30\ = CARRY((\u_comparator|blink_cnt\(14) & !\u_comparator|Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|blink_cnt\(14),
	datad => VCC,
	cin => \u_comparator|Add0~28\,
	combout => \u_comparator|Add0~29_combout\,
	cout => \u_comparator|Add0~30\);

-- Location: LCCOMB_X56_Y53_N0
\u_comparator|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector18~0_combout\ = (\u_comparator|Add0~0_combout\ & ((\u_comparator|Add0~29_combout\) # ((\u_comparator|blink_cnt~0_combout\ & \u_comparator|blink_cnt\(14))))) # (!\u_comparator|Add0~0_combout\ & (\u_comparator|blink_cnt~0_combout\ & 
-- (\u_comparator|blink_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|Add0~0_combout\,
	datab => \u_comparator|blink_cnt~0_combout\,
	datac => \u_comparator|blink_cnt\(14),
	datad => \u_comparator|Add0~29_combout\,
	combout => \u_comparator|Selector18~0_combout\);

-- Location: FF_X56_Y53_N1
\u_comparator|blink_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector18~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(14));

-- Location: LCCOMB_X56_Y53_N22
\u_comparator|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|LessThan0~4_combout\ = (((!\u_comparator|blink_cnt\(8) & !\u_comparator|blink_cnt\(7))) # (!\u_comparator|blink_cnt\(10))) # (!\u_comparator|blink_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(8),
	datab => \u_comparator|blink_cnt\(7),
	datac => \u_comparator|blink_cnt\(9),
	datad => \u_comparator|blink_cnt\(10),
	combout => \u_comparator|LessThan0~4_combout\);

-- Location: LCCOMB_X56_Y53_N8
\u_comparator|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|LessThan0~5_combout\ = (\u_comparator|blink_cnt\(13)) # ((\u_comparator|blink_cnt\(12) & ((\u_comparator|blink_cnt\(11)) # (!\u_comparator|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(13),
	datab => \u_comparator|blink_cnt\(12),
	datac => \u_comparator|LessThan0~4_combout\,
	datad => \u_comparator|blink_cnt\(11),
	combout => \u_comparator|LessThan0~5_combout\);

-- Location: LCCOMB_X55_Y52_N8
\u_comparator|Add0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~35_combout\ = (\u_comparator|blink_cnt\(17) & (!\u_comparator|Add0~34\)) # (!\u_comparator|blink_cnt\(17) & ((\u_comparator|Add0~34\) # (GND)))
-- \u_comparator|Add0~36\ = CARRY((!\u_comparator|Add0~34\) # (!\u_comparator|blink_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(17),
	datad => VCC,
	cin => \u_comparator|Add0~34\,
	combout => \u_comparator|Add0~35_combout\,
	cout => \u_comparator|Add0~36\);

-- Location: LCCOMB_X55_Y52_N10
\u_comparator|Add0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~37_combout\ = (\u_comparator|blink_cnt\(18) & (\u_comparator|Add0~36\ $ (GND))) # (!\u_comparator|blink_cnt\(18) & (!\u_comparator|Add0~36\ & VCC))
-- \u_comparator|Add0~38\ = CARRY((\u_comparator|blink_cnt\(18) & !\u_comparator|Add0~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(18),
	datad => VCC,
	cin => \u_comparator|Add0~36\,
	combout => \u_comparator|Add0~37_combout\,
	cout => \u_comparator|Add0~38\);

-- Location: LCCOMB_X54_Y52_N26
\u_comparator|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector14~0_combout\ = (\u_comparator|blink_cnt~0_combout\ & ((\u_comparator|blink_cnt\(18)) # ((\u_comparator|Add0~37_combout\ & \u_comparator|Add0~0_combout\)))) # (!\u_comparator|blink_cnt~0_combout\ & (\u_comparator|Add0~37_combout\ & 
-- ((\u_comparator|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt~0_combout\,
	datab => \u_comparator|Add0~37_combout\,
	datac => \u_comparator|blink_cnt\(18),
	datad => \u_comparator|Add0~0_combout\,
	combout => \u_comparator|Selector14~0_combout\);

-- Location: FF_X54_Y52_N27
\u_comparator|blink_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector14~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(18));

-- Location: LCCOMB_X55_Y52_N12
\u_comparator|Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~39_combout\ = (\u_comparator|blink_cnt\(19) & (!\u_comparator|Add0~38\)) # (!\u_comparator|blink_cnt\(19) & ((\u_comparator|Add0~38\) # (GND)))
-- \u_comparator|Add0~40\ = CARRY((!\u_comparator|Add0~38\) # (!\u_comparator|blink_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|blink_cnt\(19),
	datad => VCC,
	cin => \u_comparator|Add0~38\,
	combout => \u_comparator|Add0~39_combout\,
	cout => \u_comparator|Add0~40\);

-- Location: LCCOMB_X56_Y52_N18
\u_comparator|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector13~0_combout\ = (\u_comparator|blink_cnt~0_combout\ & ((\u_comparator|blink_cnt\(19)) # ((\u_comparator|Add0~0_combout\ & \u_comparator|Add0~39_combout\)))) # (!\u_comparator|blink_cnt~0_combout\ & (\u_comparator|Add0~0_combout\ & 
-- ((\u_comparator|Add0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt~0_combout\,
	datab => \u_comparator|Add0~0_combout\,
	datac => \u_comparator|blink_cnt\(19),
	datad => \u_comparator|Add0~39_combout\,
	combout => \u_comparator|Selector13~0_combout\);

-- Location: FF_X56_Y52_N19
\u_comparator|blink_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector13~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(19));

-- Location: LCCOMB_X55_Y52_N14
\u_comparator|Add0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~41_combout\ = (\u_comparator|blink_cnt\(20) & (\u_comparator|Add0~40\ $ (GND))) # (!\u_comparator|blink_cnt\(20) & (!\u_comparator|Add0~40\ & VCC))
-- \u_comparator|Add0~42\ = CARRY((\u_comparator|blink_cnt\(20) & !\u_comparator|Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(20),
	datad => VCC,
	cin => \u_comparator|Add0~40\,
	combout => \u_comparator|Add0~41_combout\,
	cout => \u_comparator|Add0~42\);

-- Location: LCCOMB_X55_Y52_N26
\u_comparator|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector12~0_combout\ = (\u_comparator|blink_cnt~0_combout\ & ((\u_comparator|blink_cnt\(20)) # ((\u_comparator|Add0~41_combout\ & \u_comparator|Add0~0_combout\)))) # (!\u_comparator|blink_cnt~0_combout\ & (\u_comparator|Add0~41_combout\ & 
-- ((\u_comparator|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt~0_combout\,
	datab => \u_comparator|Add0~41_combout\,
	datac => \u_comparator|blink_cnt\(20),
	datad => \u_comparator|Add0~0_combout\,
	combout => \u_comparator|Selector12~0_combout\);

-- Location: FF_X55_Y52_N27
\u_comparator|blink_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector12~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(20));

-- Location: LCCOMB_X55_Y52_N16
\u_comparator|Add0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~43_combout\ = (\u_comparator|blink_cnt\(21) & (!\u_comparator|Add0~42\)) # (!\u_comparator|blink_cnt\(21) & ((\u_comparator|Add0~42\) # (GND)))
-- \u_comparator|Add0~44\ = CARRY((!\u_comparator|Add0~42\) # (!\u_comparator|blink_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(21),
	datad => VCC,
	cin => \u_comparator|Add0~42\,
	combout => \u_comparator|Add0~43_combout\,
	cout => \u_comparator|Add0~44\);

-- Location: LCCOMB_X56_Y52_N26
\u_comparator|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector11~0_combout\ = (\u_comparator|blink_cnt~0_combout\ & ((\u_comparator|blink_cnt\(21)) # ((\u_comparator|Add0~0_combout\ & \u_comparator|Add0~43_combout\)))) # (!\u_comparator|blink_cnt~0_combout\ & (\u_comparator|Add0~0_combout\ & 
-- ((\u_comparator|Add0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt~0_combout\,
	datab => \u_comparator|Add0~0_combout\,
	datac => \u_comparator|blink_cnt\(21),
	datad => \u_comparator|Add0~43_combout\,
	combout => \u_comparator|Selector11~0_combout\);

-- Location: FF_X56_Y52_N27
\u_comparator|blink_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector11~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(21));

-- Location: LCCOMB_X55_Y52_N18
\u_comparator|Add0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~45_combout\ = (\u_comparator|blink_cnt\(22) & (\u_comparator|Add0~44\ $ (GND))) # (!\u_comparator|blink_cnt\(22) & (!\u_comparator|Add0~44\ & VCC))
-- \u_comparator|Add0~46\ = CARRY((\u_comparator|blink_cnt\(22) & !\u_comparator|Add0~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|blink_cnt\(22),
	datad => VCC,
	cin => \u_comparator|Add0~44\,
	combout => \u_comparator|Add0~45_combout\,
	cout => \u_comparator|Add0~46\);

-- Location: LCCOMB_X55_Y52_N28
\u_comparator|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector10~0_combout\ = (\u_comparator|Add0~0_combout\ & ((\u_comparator|Add0~45_combout\) # ((\u_comparator|blink_cnt~0_combout\ & \u_comparator|blink_cnt\(22))))) # (!\u_comparator|Add0~0_combout\ & (\u_comparator|blink_cnt~0_combout\ & 
-- (\u_comparator|blink_cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|Add0~0_combout\,
	datab => \u_comparator|blink_cnt~0_combout\,
	datac => \u_comparator|blink_cnt\(22),
	datad => \u_comparator|Add0~45_combout\,
	combout => \u_comparator|Selector10~0_combout\);

-- Location: FF_X55_Y52_N29
\u_comparator|blink_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector10~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(22));

-- Location: LCCOMB_X55_Y52_N20
\u_comparator|Add0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~47_combout\ = (\u_comparator|blink_cnt\(23) & (!\u_comparator|Add0~46\)) # (!\u_comparator|blink_cnt\(23) & ((\u_comparator|Add0~46\) # (GND)))
-- \u_comparator|Add0~48\ = CARRY((!\u_comparator|Add0~46\) # (!\u_comparator|blink_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(23),
	datad => VCC,
	cin => \u_comparator|Add0~46\,
	combout => \u_comparator|Add0~47_combout\,
	cout => \u_comparator|Add0~48\);

-- Location: LCCOMB_X56_Y52_N30
\u_comparator|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector9~0_combout\ = (\u_comparator|blink_cnt~0_combout\ & ((\u_comparator|blink_cnt\(23)) # ((\u_comparator|Add0~0_combout\ & \u_comparator|Add0~47_combout\)))) # (!\u_comparator|blink_cnt~0_combout\ & (\u_comparator|Add0~0_combout\ & 
-- ((\u_comparator|Add0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt~0_combout\,
	datab => \u_comparator|Add0~0_combout\,
	datac => \u_comparator|blink_cnt\(23),
	datad => \u_comparator|Add0~47_combout\,
	combout => \u_comparator|Selector9~0_combout\);

-- Location: FF_X56_Y52_N31
\u_comparator|blink_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector9~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(23));

-- Location: LCCOMB_X55_Y52_N22
\u_comparator|Add0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~49_combout\ = (\u_comparator|blink_cnt\(24) & (\u_comparator|Add0~48\ $ (GND))) # (!\u_comparator|blink_cnt\(24) & (!\u_comparator|Add0~48\ & VCC))
-- \u_comparator|Add0~50\ = CARRY((\u_comparator|blink_cnt\(24) & !\u_comparator|Add0~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(24),
	datad => VCC,
	cin => \u_comparator|Add0~48\,
	combout => \u_comparator|Add0~49_combout\,
	cout => \u_comparator|Add0~50\);

-- Location: LCCOMB_X55_Y52_N30
\u_comparator|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector8~0_combout\ = (\u_comparator|Add0~0_combout\ & ((\u_comparator|Add0~49_combout\) # ((\u_comparator|blink_cnt~0_combout\ & \u_comparator|blink_cnt\(24))))) # (!\u_comparator|Add0~0_combout\ & (\u_comparator|blink_cnt~0_combout\ & 
-- (\u_comparator|blink_cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|Add0~0_combout\,
	datab => \u_comparator|blink_cnt~0_combout\,
	datac => \u_comparator|blink_cnt\(24),
	datad => \u_comparator|Add0~49_combout\,
	combout => \u_comparator|Selector8~0_combout\);

-- Location: FF_X55_Y52_N31
\u_comparator|blink_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector8~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(24));

-- Location: LCCOMB_X55_Y52_N24
\u_comparator|Add0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~51_combout\ = \u_comparator|Add0~50\ $ (\u_comparator|blink_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_comparator|blink_cnt\(25),
	cin => \u_comparator|Add0~50\,
	combout => \u_comparator|Add0~51_combout\);

-- Location: LCCOMB_X56_Y52_N24
\u_comparator|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector7~0_combout\ = (\u_comparator|blink_cnt~0_combout\ & ((\u_comparator|blink_cnt\(25)) # ((\u_comparator|Add0~0_combout\ & \u_comparator|Add0~51_combout\)))) # (!\u_comparator|blink_cnt~0_combout\ & (\u_comparator|Add0~0_combout\ & 
-- ((\u_comparator|Add0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt~0_combout\,
	datab => \u_comparator|Add0~0_combout\,
	datac => \u_comparator|blink_cnt\(25),
	datad => \u_comparator|Add0~51_combout\,
	combout => \u_comparator|Selector7~0_combout\);

-- Location: FF_X56_Y52_N25
\u_comparator|blink_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector7~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(25));

-- Location: LCCOMB_X56_Y52_N8
\u_comparator|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|LessThan0~1_combout\ = (!\u_comparator|blink_cnt\(21) & (!\u_comparator|blink_cnt\(25) & (!\u_comparator|blink_cnt\(22) & !\u_comparator|blink_cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(21),
	datab => \u_comparator|blink_cnt\(25),
	datac => \u_comparator|blink_cnt\(22),
	datad => \u_comparator|blink_cnt\(24),
	combout => \u_comparator|LessThan0~1_combout\);

-- Location: LCCOMB_X56_Y53_N26
\u_comparator|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|LessThan0~6_combout\ = (\u_comparator|LessThan0~1_combout\ & (((!\u_comparator|blink_cnt\(14) & !\u_comparator|LessThan0~5_combout\)) # (!\u_comparator|blink_cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(14),
	datab => \u_comparator|blink_cnt\(15),
	datac => \u_comparator|LessThan0~5_combout\,
	datad => \u_comparator|LessThan0~1_combout\,
	combout => \u_comparator|LessThan0~6_combout\);

-- Location: LCCOMB_X56_Y52_N28
\u_comparator|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|LessThan0~0_combout\ = (!\u_comparator|blink_cnt\(25) & (!\u_comparator|blink_cnt\(23) & !\u_comparator|blink_cnt\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|blink_cnt\(25),
	datac => \u_comparator|blink_cnt\(23),
	datad => \u_comparator|blink_cnt\(24),
	combout => \u_comparator|LessThan0~0_combout\);

-- Location: LCCOMB_X56_Y52_N0
\u_comparator|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|LessThan0~2_combout\ = (\u_comparator|LessThan0~0_combout\) # ((\u_comparator|LessThan0~1_combout\ & ((!\u_comparator|blink_cnt\(19)) # (!\u_comparator|blink_cnt\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(20),
	datab => \u_comparator|blink_cnt\(19),
	datac => \u_comparator|LessThan0~1_combout\,
	datad => \u_comparator|LessThan0~0_combout\,
	combout => \u_comparator|LessThan0~2_combout\);

-- Location: LCCOMB_X56_Y53_N24
\u_comparator|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~0_combout\ = (\u_comparator|current_state.S_WIN~q\ & ((\u_comparator|LessThan0~2_combout\) # ((\u_comparator|LessThan0~3_combout\ & \u_comparator|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|LessThan0~3_combout\,
	datab => \u_comparator|current_state.S_WIN~q\,
	datac => \u_comparator|LessThan0~6_combout\,
	datad => \u_comparator|LessThan0~2_combout\,
	combout => \u_comparator|Add0~0_combout\);

-- Location: LCCOMB_X55_Y52_N4
\u_comparator|Add0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~31_combout\ = (\u_comparator|blink_cnt\(15) & (!\u_comparator|Add0~30\)) # (!\u_comparator|blink_cnt\(15) & ((\u_comparator|Add0~30\) # (GND)))
-- \u_comparator|Add0~32\ = CARRY((!\u_comparator|Add0~30\) # (!\u_comparator|blink_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(15),
	datad => VCC,
	cin => \u_comparator|Add0~30\,
	combout => \u_comparator|Add0~31_combout\,
	cout => \u_comparator|Add0~32\);

-- Location: LCCOMB_X56_Y53_N14
\u_comparator|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector17~0_combout\ = (\u_comparator|Add0~0_combout\ & ((\u_comparator|Add0~31_combout\) # ((\u_comparator|blink_cnt\(15) & \u_comparator|blink_cnt~0_combout\)))) # (!\u_comparator|Add0~0_combout\ & (((\u_comparator|blink_cnt\(15) & 
-- \u_comparator|blink_cnt~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|Add0~0_combout\,
	datab => \u_comparator|Add0~31_combout\,
	datac => \u_comparator|blink_cnt\(15),
	datad => \u_comparator|blink_cnt~0_combout\,
	combout => \u_comparator|Selector17~0_combout\);

-- Location: FF_X56_Y53_N15
\u_comparator|blink_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector17~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(15));

-- Location: LCCOMB_X55_Y52_N6
\u_comparator|Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Add0~33_combout\ = (\u_comparator|blink_cnt\(16) & (\u_comparator|Add0~32\ $ (GND))) # (!\u_comparator|blink_cnt\(16) & (!\u_comparator|Add0~32\ & VCC))
-- \u_comparator|Add0~34\ = CARRY((\u_comparator|blink_cnt\(16) & !\u_comparator|Add0~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(16),
	datad => VCC,
	cin => \u_comparator|Add0~32\,
	combout => \u_comparator|Add0~33_combout\,
	cout => \u_comparator|Add0~34\);

-- Location: LCCOMB_X54_Y52_N10
\u_comparator|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector16~0_combout\ = (\u_comparator|Add0~33_combout\ & ((\u_comparator|Add0~0_combout\) # ((\u_comparator|blink_cnt~0_combout\ & \u_comparator|blink_cnt\(16))))) # (!\u_comparator|Add0~33_combout\ & (\u_comparator|blink_cnt~0_combout\ & 
-- (\u_comparator|blink_cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|Add0~33_combout\,
	datab => \u_comparator|blink_cnt~0_combout\,
	datac => \u_comparator|blink_cnt\(16),
	datad => \u_comparator|Add0~0_combout\,
	combout => \u_comparator|Selector16~0_combout\);

-- Location: FF_X54_Y52_N11
\u_comparator|blink_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector16~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(16));

-- Location: LCCOMB_X54_Y52_N12
\u_comparator|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector15~0_combout\ = (\u_comparator|blink_cnt~0_combout\ & ((\u_comparator|blink_cnt\(17)) # ((\u_comparator|Add0~35_combout\ & \u_comparator|Add0~0_combout\)))) # (!\u_comparator|blink_cnt~0_combout\ & (\u_comparator|Add0~35_combout\ & 
-- ((\u_comparator|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt~0_combout\,
	datab => \u_comparator|Add0~35_combout\,
	datac => \u_comparator|blink_cnt\(17),
	datad => \u_comparator|Add0~0_combout\,
	combout => \u_comparator|Selector15~0_combout\);

-- Location: FF_X54_Y52_N13
\u_comparator|blink_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector15~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_cnt\(17));

-- Location: LCCOMB_X54_Y52_N24
\u_comparator|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|LessThan0~3_combout\ = (!\u_comparator|blink_cnt\(17) & (!\u_comparator|blink_cnt\(18) & !\u_comparator|blink_cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|blink_cnt\(17),
	datac => \u_comparator|blink_cnt\(18),
	datad => \u_comparator|blink_cnt\(16),
	combout => \u_comparator|LessThan0~3_combout\);

-- Location: LCCOMB_X54_Y53_N18
\u_comparator|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|LessThan0~7_combout\ = (\u_comparator|LessThan0~2_combout\) # ((\u_comparator|LessThan0~3_combout\ & \u_comparator|LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_comparator|LessThan0~3_combout\,
	datac => \u_comparator|LessThan0~2_combout\,
	datad => \u_comparator|LessThan0~6_combout\,
	combout => \u_comparator|LessThan0~7_combout\);

-- Location: LCCOMB_X54_Y53_N4
\u_comparator|Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector33~0_combout\ = (\u_comparator|blink_led~q\ & ((\u_comparator|blink_cnt~0_combout\) # ((\u_comparator|current_state.S_WIN~q\ & \u_comparator|LessThan0~7_combout\)))) # (!\u_comparator|blink_led~q\ & 
-- (\u_comparator|current_state.S_WIN~q\ & ((!\u_comparator|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|current_state.S_WIN~q\,
	datab => \u_comparator|blink_cnt~0_combout\,
	datac => \u_comparator|blink_led~q\,
	datad => \u_comparator|LessThan0~7_combout\,
	combout => \u_comparator|Selector33~0_combout\);

-- Location: FF_X54_Y53_N5
\u_comparator|blink_led\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector33~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|blink_led~q\);

-- Location: LCCOMB_X54_Y52_N30
\u_comparator|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector6~0_combout\ = (\u_comparator|current_state.S_WIN~q\ & ((\u_comparator|blink_led~q\) # ((\u_comparator|current_state.S_CHECK~q\ & \u_comparator|leds_out\(0))))) # (!\u_comparator|current_state.S_WIN~q\ & 
-- (\u_comparator|current_state.S_CHECK~q\ & (\u_comparator|leds_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|current_state.S_WIN~q\,
	datab => \u_comparator|current_state.S_CHECK~q\,
	datac => \u_comparator|leds_out\(0),
	datad => \u_comparator|blink_led~q\,
	combout => \u_comparator|Selector6~0_combout\);

-- Location: LCCOMB_X54_Y52_N8
\u_comparator|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector6~1_combout\ = (\u_comparator|Selector6~0_combout\) # (\u_comparator|current_state.S_LOSE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_comparator|Selector6~0_combout\,
	datad => \u_comparator|current_state.S_LOSE~q\,
	combout => \u_comparator|Selector6~1_combout\);

-- Location: FF_X54_Y52_N9
\u_comparator|leds_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector6~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|leds_out\(0));

-- Location: LCCOMB_X51_Y52_N28
\LEDR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = (\system_state~q\ & ((\u_comparator|leds_out\(0)))) # (!\system_state~q\ & (\u_led_input|leds_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_state~q\,
	datac => \u_led_input|leds_reg\(0),
	datad => \u_comparator|leds_out\(0),
	combout => \LEDR~0_combout\);

-- Location: LCCOMB_X52_Y52_N20
\u_led_input|leds_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_led_input|leds_reg~2_combout\ = (!\u_input|ativado_r\(0) & (\u_input|ativado_r\(1) & \u_controller|enable_led_r~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|ativado_r\(0),
	datac => \u_input|ativado_r\(1),
	datad => \u_controller|enable_led_r~q\,
	combout => \u_led_input|leds_reg~2_combout\);

-- Location: LCCOMB_X52_Y52_N8
\u_led_input|leds_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_led_input|leds_reg~3_combout\ = (!\u_controller|clear_leds_r~q\ & ((\u_led_input|leds_reg\(1)) # ((!\u_input|ativado_r\(2) & \u_led_input|leds_reg~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|clear_leds_r~q\,
	datab => \u_input|ativado_r\(2),
	datac => \u_led_input|leds_reg\(1),
	datad => \u_led_input|leds_reg~2_combout\,
	combout => \u_led_input|leds_reg~3_combout\);

-- Location: FF_X52_Y52_N9
\u_led_input|leds_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_led_input|leds_reg~3_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_input|leds_reg\(1));

-- Location: LCCOMB_X54_Y52_N14
\u_comparator|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_comparator|Selector5~0_combout\ = (\u_comparator|current_state.S_WIN~q\ & ((\u_comparator|blink_led~q\) # ((\u_comparator|current_state.S_CHECK~q\ & \u_comparator|leds_out\(1))))) # (!\u_comparator|current_state.S_WIN~q\ & 
-- (\u_comparator|current_state.S_CHECK~q\ & (\u_comparator|leds_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_comparator|current_state.S_WIN~q\,
	datab => \u_comparator|current_state.S_CHECK~q\,
	datac => \u_comparator|leds_out\(1),
	datad => \u_comparator|blink_led~q\,
	combout => \u_comparator|Selector5~0_combout\);

-- Location: FF_X54_Y52_N15
\u_comparator|leds_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_comparator|Selector5~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_comparator|leds_out\(1));

-- Location: LCCOMB_X50_Y52_N28
\LEDR~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDR~1_combout\ = (\system_state~q\ & ((\u_comparator|leds_out\(1)))) # (!\system_state~q\ & (\u_led_input|leds_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_led_input|leds_reg\(1),
	datac => \system_state~q\,
	datad => \u_comparator|leds_out\(1),
	combout => \LEDR~1_combout\);

-- Location: LCCOMB_X52_Y52_N18
\u_led_input|leds_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_led_input|leds_reg~4_combout\ = (\u_input|ativado_r\(0) & (\u_input|ativado_r\(1) & \u_controller|enable_led_r~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|ativado_r\(0),
	datac => \u_input|ativado_r\(1),
	datad => \u_controller|enable_led_r~q\,
	combout => \u_led_input|leds_reg~4_combout\);

-- Location: LCCOMB_X52_Y52_N14
\u_led_input|leds_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_led_input|leds_reg~5_combout\ = (!\u_controller|clear_leds_r~q\ & ((\u_led_input|leds_reg\(2)) # ((!\u_input|ativado_r\(2) & \u_led_input|leds_reg~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|clear_leds_r~q\,
	datab => \u_input|ativado_r\(2),
	datac => \u_led_input|leds_reg\(2),
	datad => \u_led_input|leds_reg~4_combout\,
	combout => \u_led_input|leds_reg~5_combout\);

-- Location: FF_X52_Y52_N15
\u_led_input|leds_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_led_input|leds_reg~5_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_input|leds_reg\(2));

-- Location: LCCOMB_X52_Y52_N16
\LEDR~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDR~2_combout\ = (\system_state~q\ & ((\u_comparator|leds_out\(0)))) # (!\system_state~q\ & (\u_led_input|leds_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_led_input|leds_reg\(2),
	datac => \system_state~q\,
	datad => \u_comparator|leds_out\(0),
	combout => \LEDR~2_combout\);

-- Location: LCCOMB_X52_Y52_N0
\u_led_input|leds_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_led_input|leds_reg~6_combout\ = (!\u_input|ativado_r\(0) & (!\u_input|ativado_r\(1) & (\u_input|ativado_r\(2) & \u_controller|enable_led_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|ativado_r\(0),
	datab => \u_input|ativado_r\(1),
	datac => \u_input|ativado_r\(2),
	datad => \u_controller|enable_led_r~q\,
	combout => \u_led_input|leds_reg~6_combout\);

-- Location: LCCOMB_X52_Y52_N22
\u_led_input|leds_reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_led_input|leds_reg~7_combout\ = (!\u_controller|clear_leds_r~q\ & ((\u_led_input|leds_reg\(3)) # (\u_led_input|leds_reg~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|clear_leds_r~q\,
	datac => \u_led_input|leds_reg\(3),
	datad => \u_led_input|leds_reg~6_combout\,
	combout => \u_led_input|leds_reg~7_combout\);

-- Location: FF_X52_Y52_N23
\u_led_input|leds_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_led_input|leds_reg~7_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_input|leds_reg\(3));

-- Location: LCCOMB_X52_Y52_N4
\LEDR~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDR~3_combout\ = (\system_state~q\ & ((\u_comparator|leds_out\(1)))) # (!\system_state~q\ & (\u_led_input|leds_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_input|leds_reg\(3),
	datab => \u_comparator|leds_out\(1),
	datac => \system_state~q\,
	combout => \LEDR~3_combout\);

-- Location: LCCOMB_X52_Y52_N2
\u_led_input|leds_reg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_led_input|leds_reg~8_combout\ = (\u_input|ativado_r\(0) & (!\u_input|ativado_r\(1) & (\u_input|ativado_r\(2) & \u_controller|enable_led_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_input|ativado_r\(0),
	datab => \u_input|ativado_r\(1),
	datac => \u_input|ativado_r\(2),
	datad => \u_controller|enable_led_r~q\,
	combout => \u_led_input|leds_reg~8_combout\);

-- Location: LCCOMB_X52_Y52_N30
\u_led_input|leds_reg~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_led_input|leds_reg~9_combout\ = (!\u_controller|clear_leds_r~q\ & ((\u_led_input|leds_reg\(4)) # (\u_led_input|leds_reg~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|clear_leds_r~q\,
	datac => \u_led_input|leds_reg\(4),
	datad => \u_led_input|leds_reg~8_combout\,
	combout => \u_led_input|leds_reg~9_combout\);

-- Location: FF_X52_Y52_N31
\u_led_input|leds_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_led_input|leds_reg~9_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_input|leds_reg\(4));

-- Location: LCCOMB_X52_Y52_N24
\LEDR~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDR~4_combout\ = (\system_state~q\ & ((\u_comparator|leds_out\(0)))) # (!\system_state~q\ & (\u_led_input|leds_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_input|leds_reg\(4),
	datac => \system_state~q\,
	datad => \u_comparator|leds_out\(0),
	combout => \LEDR~4_combout\);

-- Location: LCCOMB_X52_Y52_N6
\u_led_input|leds_reg~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_led_input|leds_reg~10_combout\ = (!\u_controller|clear_leds_r~q\ & ((\u_led_input|leds_reg\(5)) # ((\u_input|ativado_r\(2) & \u_led_input|leds_reg~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|clear_leds_r~q\,
	datab => \u_input|ativado_r\(2),
	datac => \u_led_input|leds_reg\(5),
	datad => \u_led_input|leds_reg~2_combout\,
	combout => \u_led_input|leds_reg~10_combout\);

-- Location: FF_X52_Y52_N7
\u_led_input|leds_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_led_input|leds_reg~10_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_input|leds_reg\(5));

-- Location: LCCOMB_X52_Y52_N28
\LEDR~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDR~5_combout\ = (\system_state~q\ & ((\u_comparator|leds_out\(1)))) # (!\system_state~q\ & (\u_led_input|leds_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_input|leds_reg\(5),
	datab => \u_comparator|leds_out\(1),
	datac => \system_state~q\,
	combout => \LEDR~5_combout\);

-- Location: LCCOMB_X52_Y52_N10
\u_led_input|leds_reg~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_led_input|leds_reg~11_combout\ = (!\u_controller|clear_leds_r~q\ & ((\u_led_input|leds_reg\(6)) # ((\u_input|ativado_r\(2) & \u_led_input|leds_reg~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_controller|clear_leds_r~q\,
	datab => \u_input|ativado_r\(2),
	datac => \u_led_input|leds_reg\(6),
	datad => \u_led_input|leds_reg~4_combout\,
	combout => \u_led_input|leds_reg~11_combout\);

-- Location: FF_X52_Y52_N11
\u_led_input|leds_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_led_input|leds_reg~11_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_led_input|leds_reg\(6));

-- Location: LCCOMB_X52_Y52_N12
\LEDR~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDR~6_combout\ = (\system_state~q\ & ((\u_comparator|leds_out\(0)))) # (!\system_state~q\ & (\u_led_input|leds_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_led_input|leds_reg\(6),
	datac => \system_state~q\,
	datad => \u_comparator|leds_out\(0),
	combout => \LEDR~6_combout\);

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


