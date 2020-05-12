-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/18/2020 13:23:40"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	instruction_fetch IS
    PORT (
	addr : IN std_logic_vector(7 DOWNTO 0);
	inst : OUT std_logic_vector(31 DOWNTO 0);
	pc : OUT std_logic_vector(7 DOWNTO 0);
	pcinc : OUT std_logic_vector(7 DOWNTO 0);
	ld : IN std_logic;
	clr : IN std_logic;
	clk : IN std_logic
	);
END instruction_fetch;

-- Design Ports Information
-- inst[0]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[1]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[3]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[4]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[5]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[6]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[7]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[8]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[9]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[10]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[11]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[12]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[13]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[14]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[15]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[16]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[17]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[18]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[19]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[20]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[21]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[22]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[23]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[24]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[25]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[26]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[27]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[28]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[29]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[30]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inst[31]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[0]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[1]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[2]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[3]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[4]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[5]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[6]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc[7]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcinc[0]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcinc[1]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcinc[2]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcinc[3]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcinc[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcinc[5]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcinc[6]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcinc[7]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[5]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[6]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[7]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF instruction_fetch IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_addr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_inst : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_pc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pcinc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ld : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u2|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clr~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst[0]~output_o\ : std_logic;
SIGNAL \inst[1]~output_o\ : std_logic;
SIGNAL \inst[2]~output_o\ : std_logic;
SIGNAL \inst[3]~output_o\ : std_logic;
SIGNAL \inst[4]~output_o\ : std_logic;
SIGNAL \inst[5]~output_o\ : std_logic;
SIGNAL \inst[6]~output_o\ : std_logic;
SIGNAL \inst[7]~output_o\ : std_logic;
SIGNAL \inst[8]~output_o\ : std_logic;
SIGNAL \inst[9]~output_o\ : std_logic;
SIGNAL \inst[10]~output_o\ : std_logic;
SIGNAL \inst[11]~output_o\ : std_logic;
SIGNAL \inst[12]~output_o\ : std_logic;
SIGNAL \inst[13]~output_o\ : std_logic;
SIGNAL \inst[14]~output_o\ : std_logic;
SIGNAL \inst[15]~output_o\ : std_logic;
SIGNAL \inst[16]~output_o\ : std_logic;
SIGNAL \inst[17]~output_o\ : std_logic;
SIGNAL \inst[18]~output_o\ : std_logic;
SIGNAL \inst[19]~output_o\ : std_logic;
SIGNAL \inst[20]~output_o\ : std_logic;
SIGNAL \inst[21]~output_o\ : std_logic;
SIGNAL \inst[22]~output_o\ : std_logic;
SIGNAL \inst[23]~output_o\ : std_logic;
SIGNAL \inst[24]~output_o\ : std_logic;
SIGNAL \inst[25]~output_o\ : std_logic;
SIGNAL \inst[26]~output_o\ : std_logic;
SIGNAL \inst[27]~output_o\ : std_logic;
SIGNAL \inst[28]~output_o\ : std_logic;
SIGNAL \inst[29]~output_o\ : std_logic;
SIGNAL \inst[30]~output_o\ : std_logic;
SIGNAL \inst[31]~output_o\ : std_logic;
SIGNAL \pc[0]~output_o\ : std_logic;
SIGNAL \pc[1]~output_o\ : std_logic;
SIGNAL \pc[2]~output_o\ : std_logic;
SIGNAL \pc[3]~output_o\ : std_logic;
SIGNAL \pc[4]~output_o\ : std_logic;
SIGNAL \pc[5]~output_o\ : std_logic;
SIGNAL \pc[6]~output_o\ : std_logic;
SIGNAL \pc[7]~output_o\ : std_logic;
SIGNAL \pcinc[0]~output_o\ : std_logic;
SIGNAL \pcinc[1]~output_o\ : std_logic;
SIGNAL \pcinc[2]~output_o\ : std_logic;
SIGNAL \pcinc[3]~output_o\ : std_logic;
SIGNAL \pcinc[4]~output_o\ : std_logic;
SIGNAL \pcinc[5]~output_o\ : std_logic;
SIGNAL \pcinc[6]~output_o\ : std_logic;
SIGNAL \pcinc[7]~output_o\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \u1|u1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \clr~inputclkctrl_outclk\ : std_logic;
SIGNAL \ld~input_o\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \u1|u1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \u1|u1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \addr[4]~input_o\ : std_logic;
SIGNAL \u1|u1|Q[4]~feeder_combout\ : std_logic;
SIGNAL \addr[5]~input_o\ : std_logic;
SIGNAL \u1|u1|Q[5]~feeder_combout\ : std_logic;
SIGNAL \addr[6]~input_o\ : std_logic;
SIGNAL \u1|u1|Q[6]~feeder_combout\ : std_logic;
SIGNAL \addr[7]~input_o\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \inst~1_combout\ : std_logic;
SIGNAL \inst~2_combout\ : std_logic;
SIGNAL \inst~3_combout\ : std_logic;
SIGNAL \inst~4_combout\ : std_logic;
SIGNAL \inst~5_combout\ : std_logic;
SIGNAL \inst~6_combout\ : std_logic;
SIGNAL \inst~7_combout\ : std_logic;
SIGNAL \inst~8_combout\ : std_logic;
SIGNAL \inst~9_combout\ : std_logic;
SIGNAL \inst~10_combout\ : std_logic;
SIGNAL \inst~11_combout\ : std_logic;
SIGNAL \inst~12_combout\ : std_logic;
SIGNAL \inst~13_combout\ : std_logic;
SIGNAL \inst~14_combout\ : std_logic;
SIGNAL \inst~15_combout\ : std_logic;
SIGNAL \inst~16_combout\ : std_logic;
SIGNAL \inst~17_combout\ : std_logic;
SIGNAL \inst~18_combout\ : std_logic;
SIGNAL \inst~19_combout\ : std_logic;
SIGNAL \inst~20_combout\ : std_logic;
SIGNAL \inst~21_combout\ : std_logic;
SIGNAL \inst~22_combout\ : std_logic;
SIGNAL \inst~23_combout\ : std_logic;
SIGNAL \inst~24_combout\ : std_logic;
SIGNAL \inst~25_combout\ : std_logic;
SIGNAL \inst~26_combout\ : std_logic;
SIGNAL \inst~27_combout\ : std_logic;
SIGNAL \inst~28_combout\ : std_logic;
SIGNAL \inst~29_combout\ : std_logic;
SIGNAL \inst~30_combout\ : std_logic;
SIGNAL \inst~31_combout\ : std_logic;
SIGNAL \pc[0]~reg0feeder_combout\ : std_logic;
SIGNAL \pc[0]~reg0_q\ : std_logic;
SIGNAL \pc[1]~reg0feeder_combout\ : std_logic;
SIGNAL \pc[1]~reg0_q\ : std_logic;
SIGNAL \pc[2]~reg0feeder_combout\ : std_logic;
SIGNAL \pc[2]~reg0_q\ : std_logic;
SIGNAL \pc[3]~reg0feeder_combout\ : std_logic;
SIGNAL \pc[3]~reg0_q\ : std_logic;
SIGNAL \pc[4]~reg0feeder_combout\ : std_logic;
SIGNAL \pc[4]~reg0_q\ : std_logic;
SIGNAL \pc[5]~reg0feeder_combout\ : std_logic;
SIGNAL \pc[5]~reg0_q\ : std_logic;
SIGNAL \pc[6]~reg0feeder_combout\ : std_logic;
SIGNAL \pc[6]~reg0_q\ : std_logic;
SIGNAL \pc[7]~reg0feeder_combout\ : std_logic;
SIGNAL \pc[7]~reg0_q\ : std_logic;
SIGNAL \pcinc[0]~21_combout\ : std_logic;
SIGNAL \pcinc[0]~reg0_q\ : std_logic;
SIGNAL \pcinc[1]~7_combout\ : std_logic;
SIGNAL \pcinc[1]~reg0_q\ : std_logic;
SIGNAL \pcinc[1]~8\ : std_logic;
SIGNAL \pcinc[2]~9_combout\ : std_logic;
SIGNAL \pcinc[2]~reg0_q\ : std_logic;
SIGNAL \pcinc[2]~10\ : std_logic;
SIGNAL \pcinc[3]~11_combout\ : std_logic;
SIGNAL \pcinc[3]~reg0_q\ : std_logic;
SIGNAL \pcinc[3]~12\ : std_logic;
SIGNAL \pcinc[4]~13_combout\ : std_logic;
SIGNAL \pcinc[4]~reg0_q\ : std_logic;
SIGNAL \pcinc[4]~14\ : std_logic;
SIGNAL \pcinc[5]~15_combout\ : std_logic;
SIGNAL \pcinc[5]~reg0_q\ : std_logic;
SIGNAL \pcinc[5]~16\ : std_logic;
SIGNAL \pcinc[6]~17_combout\ : std_logic;
SIGNAL \pcinc[6]~reg0_q\ : std_logic;
SIGNAL \pcinc[6]~18\ : std_logic;
SIGNAL \pcinc[7]~19_combout\ : std_logic;
SIGNAL \pcinc[7]~reg0_q\ : std_logic;
SIGNAL \u2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u1|u1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clr~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_addr <= addr;
inst <= ww_inst;
pc <= ww_pc;
pcinc <= ww_pcinc;
ww_ld <= ld;
ww_clr <= clr;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\u2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u1|u1|Q\(7) & \u1|u1|Q\(6) & \u1|u1|Q\(5) & \u1|u1|Q\(4) & \u1|u1|Q\(3) & \u1|u1|Q\(2) & \u1|u1|Q\(1) & \u1|u1|Q\(0));

\u2|altsyncram_component|auto_generated|q_a\(0) <= \u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\u2|altsyncram_component|auto_generated|q_a\(1) <= \u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\u2|altsyncram_component|auto_generated|q_a\(2) <= \u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\u2|altsyncram_component|auto_generated|q_a\(3) <= \u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\u2|altsyncram_component|auto_generated|q_a\(4) <= \u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\u2|altsyncram_component|auto_generated|q_a\(5) <= \u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\u2|altsyncram_component|auto_generated|q_a\(6) <= \u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\u2|altsyncram_component|auto_generated|q_a\(7) <= \u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\u2|altsyncram_component|auto_generated|q_a\(8) <= \u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\u2|altsyncram_component|auto_generated|q_a\(9) <= \u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\u2|altsyncram_component|auto_generated|q_a\(10) <= \u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\u2|altsyncram_component|auto_generated|q_a\(11) <= \u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\u2|altsyncram_component|auto_generated|q_a\(12) <= \u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\u2|altsyncram_component|auto_generated|q_a\(13) <= \u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\u2|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\u1|u1|Q\(7) & \u1|u1|Q\(6) & \u1|u1|Q\(5) & \u1|u1|Q\(4) & \u1|u1|Q\(3) & \u1|u1|Q\(2) & \u1|u1|Q\(1) & \u1|u1|Q\(0));

\u2|altsyncram_component|auto_generated|q_a\(14) <= \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\u2|altsyncram_component|auto_generated|q_a\(15) <= \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);
\u2|altsyncram_component|auto_generated|q_a\(16) <= \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(2);
\u2|altsyncram_component|auto_generated|q_a\(17) <= \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(3);
\u2|altsyncram_component|auto_generated|q_a\(18) <= \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(4);
\u2|altsyncram_component|auto_generated|q_a\(19) <= \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(5);
\u2|altsyncram_component|auto_generated|q_a\(20) <= \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(6);
\u2|altsyncram_component|auto_generated|q_a\(21) <= \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(7);
\u2|altsyncram_component|auto_generated|q_a\(22) <= \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(8);
\u2|altsyncram_component|auto_generated|q_a\(23) <= \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(9);
\u2|altsyncram_component|auto_generated|q_a\(24) <= \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(10);
\u2|altsyncram_component|auto_generated|q_a\(25) <= \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(11);
\u2|altsyncram_component|auto_generated|q_a\(26) <= \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(12);
\u2|altsyncram_component|auto_generated|q_a\(27) <= \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(13);
\u2|altsyncram_component|auto_generated|q_a\(28) <= \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(14);
\u2|altsyncram_component|auto_generated|q_a\(29) <= \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(15);
\u2|altsyncram_component|auto_generated|q_a\(30) <= \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(16);
\u2|altsyncram_component|auto_generated|q_a\(31) <= \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(17);

\clr~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clr~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clr~inputclkctrl_outclk\ <= NOT \clr~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y0_N9
\inst[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~0_combout\,
	devoe => ww_devoe,
	o => \inst[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\inst[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~1_combout\,
	devoe => ww_devoe,
	o => \inst[1]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\inst[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~2_combout\,
	devoe => ww_devoe,
	o => \inst[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\inst[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~3_combout\,
	devoe => ww_devoe,
	o => \inst[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\inst[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~4_combout\,
	devoe => ww_devoe,
	o => \inst[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\inst[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~5_combout\,
	devoe => ww_devoe,
	o => \inst[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\inst[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~6_combout\,
	devoe => ww_devoe,
	o => \inst[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\inst[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~7_combout\,
	devoe => ww_devoe,
	o => \inst[7]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\inst[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~8_combout\,
	devoe => ww_devoe,
	o => \inst[8]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\inst[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~9_combout\,
	devoe => ww_devoe,
	o => \inst[9]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\inst[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~10_combout\,
	devoe => ww_devoe,
	o => \inst[10]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\inst[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~11_combout\,
	devoe => ww_devoe,
	o => \inst[11]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\inst[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~12_combout\,
	devoe => ww_devoe,
	o => \inst[12]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\inst[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~13_combout\,
	devoe => ww_devoe,
	o => \inst[13]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\inst[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~14_combout\,
	devoe => ww_devoe,
	o => \inst[14]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\inst[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~15_combout\,
	devoe => ww_devoe,
	o => \inst[15]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\inst[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~16_combout\,
	devoe => ww_devoe,
	o => \inst[16]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\inst[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~17_combout\,
	devoe => ww_devoe,
	o => \inst[17]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\inst[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~18_combout\,
	devoe => ww_devoe,
	o => \inst[18]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\inst[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~19_combout\,
	devoe => ww_devoe,
	o => \inst[19]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\inst[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~20_combout\,
	devoe => ww_devoe,
	o => \inst[20]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\inst[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~21_combout\,
	devoe => ww_devoe,
	o => \inst[21]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\inst[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~22_combout\,
	devoe => ww_devoe,
	o => \inst[22]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\inst[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~23_combout\,
	devoe => ww_devoe,
	o => \inst[23]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\inst[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~24_combout\,
	devoe => ww_devoe,
	o => \inst[24]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\inst[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~25_combout\,
	devoe => ww_devoe,
	o => \inst[25]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\inst[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~26_combout\,
	devoe => ww_devoe,
	o => \inst[26]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\inst[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~27_combout\,
	devoe => ww_devoe,
	o => \inst[27]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\inst[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~28_combout\,
	devoe => ww_devoe,
	o => \inst[28]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\inst[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~29_combout\,
	devoe => ww_devoe,
	o => \inst[29]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\inst[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~30_combout\,
	devoe => ww_devoe,
	o => \inst[30]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\inst[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~31_combout\,
	devoe => ww_devoe,
	o => \inst[31]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\pc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pc[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\pc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc[1]~reg0_q\,
	devoe => ww_devoe,
	o => \pc[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\pc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc[2]~reg0_q\,
	devoe => ww_devoe,
	o => \pc[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\pc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc[3]~reg0_q\,
	devoe => ww_devoe,
	o => \pc[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\pc[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc[4]~reg0_q\,
	devoe => ww_devoe,
	o => \pc[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\pc[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc[5]~reg0_q\,
	devoe => ww_devoe,
	o => \pc[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\pc[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc[6]~reg0_q\,
	devoe => ww_devoe,
	o => \pc[6]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\pc[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc[7]~reg0_q\,
	devoe => ww_devoe,
	o => \pc[7]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\pcinc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcinc[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pcinc[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\pcinc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcinc[1]~reg0_q\,
	devoe => ww_devoe,
	o => \pcinc[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\pcinc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcinc[2]~reg0_q\,
	devoe => ww_devoe,
	o => \pcinc[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\pcinc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcinc[3]~reg0_q\,
	devoe => ww_devoe,
	o => \pcinc[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\pcinc[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcinc[4]~reg0_q\,
	devoe => ww_devoe,
	o => \pcinc[4]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\pcinc[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcinc[5]~reg0_q\,
	devoe => ww_devoe,
	o => \pcinc[5]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\pcinc[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcinc[6]~reg0_q\,
	devoe => ww_devoe,
	o => \pcinc[6]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\pcinc[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pcinc[7]~reg0_q\,
	devoe => ww_devoe,
	o => \pcinc[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X18_Y4_N24
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X115_Y37_N8
\addr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: LCCOMB_X4_Y4_N30
\u1|u1|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u1|Q[0]~feeder_combout\ = \addr[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[0]~input_o\,
	combout => \u1|u1|Q[0]~feeder_combout\);

-- Location: CLKCTRL_G4
\clr~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y37_N1
\ld~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld,
	o => \ld~input_o\);

-- Location: FF_X4_Y4_N31
\u1|u1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u1|Q[0]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|Q\(0));

-- Location: IOIBUF_X0_Y4_N8
\addr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: LCCOMB_X4_Y4_N28
\u1|u1|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u1|Q[1]~feeder_combout\ = \addr[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[1]~input_o\,
	combout => \u1|u1|Q[1]~feeder_combout\);

-- Location: FF_X4_Y4_N29
\u1|u1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u1|Q[1]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|Q\(1));

-- Location: IOIBUF_X1_Y0_N15
\addr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(2),
	o => \addr[2]~input_o\);

-- Location: LCCOMB_X4_Y4_N6
\u1|u1|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u1|Q[2]~feeder_combout\ = \addr[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[2]~input_o\,
	combout => \u1|u1|Q[2]~feeder_combout\);

-- Location: FF_X4_Y4_N7
\u1|u1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u1|Q[2]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|Q\(2));

-- Location: IOIBUF_X0_Y5_N15
\addr[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(3),
	o => \addr[3]~input_o\);

-- Location: FF_X4_Y4_N9
\u1|u1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \addr[3]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|Q\(3));

-- Location: IOIBUF_X0_Y9_N15
\addr[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(4),
	o => \addr[4]~input_o\);

-- Location: LCCOMB_X4_Y4_N2
\u1|u1|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u1|Q[4]~feeder_combout\ = \addr[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[4]~input_o\,
	combout => \u1|u1|Q[4]~feeder_combout\);

-- Location: FF_X4_Y4_N3
\u1|u1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u1|Q[4]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|Q\(4));

-- Location: IOIBUF_X3_Y0_N22
\addr[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(5),
	o => \addr[5]~input_o\);

-- Location: LCCOMB_X4_Y4_N12
\u1|u1|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u1|Q[5]~feeder_combout\ = \addr[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[5]~input_o\,
	combout => \u1|u1|Q[5]~feeder_combout\);

-- Location: FF_X4_Y4_N13
\u1|u1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u1|Q[5]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|Q\(5));

-- Location: IOIBUF_X0_Y7_N8
\addr[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(6),
	o => \addr[6]~input_o\);

-- Location: LCCOMB_X4_Y4_N4
\u1|u1|Q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|u1|Q[6]~feeder_combout\ = \addr[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \addr[6]~input_o\,
	combout => \u1|u1|Q[6]~feeder_combout\);

-- Location: FF_X4_Y4_N5
\u1|u1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u1|u1|Q[6]~feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|Q\(6));

-- Location: IOIBUF_X0_Y6_N1
\addr[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(7),
	o => \addr[7]~input_o\);

-- Location: FF_X4_Y4_N11
\u1|u1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \addr[7]~input_o\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ld~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|u1|Q\(7));

-- Location: M9K_X15_Y4_N0
\u2|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0F80C3D830F40C3C830F00C3B830EC0C3A830E80C39830E40C34830D00C33830CC0C32830518C0D6300C4C02630398C02930498C03930118C0563010CC03B300",
	mem_init1 => X"C4C02930E80C34830CE0C33230E68C34A300D8C03630EECC2DB3070CC12B300CCC12630498C1AB303ACC0DB30E84C01630058C24930724C1E1303C4C1F130384C3F830FC0C3E830F80C3D830F40C3C830F00C3B830EC0C3A830E80C39830E40C34830D00C33830CC0C32830518C0D6300C4C02630398C02930498C03930118C0563010CC03B300C4C02930F40C3C830F00C3EA30CE8C3B2300D8C03630CECC2EB304ACC1933036CC12630498C1CB300CCC0F330FE4C01630058C2A930644C1B930124C14930364C3F830FC0C3E830F80C3D830F40C3C830F00C3B830EC0C3A830E80C39830E40C34830D00C33830CC0C32830518C0D6300C4C02630398C02930",
	mem_init0 => X"498C03930118C0563010CC03B300C4C02930FA0C33030F80C34A30CC8C3F2300D8C03630E8CC2BB3070CC19B3028CC12630498C1C3302ACC0CB30F84C01630058C2B130764C1E130244C1E9300A4C3F830FC0C3E830F80C3D830F40C3C830F00C3B830EC0C3A830E80C39830E40C34830D00C33830CC0C32830518C0D6300C4C02630398C02930498C03930118C0563010CC03B300C4C02930FE0C3C030D00C3F230CE8C332300D8C03630EACC22B3066CC1AB3010CC12630498C193302ACC0C330EA4C01630058C2D130664C12930284C1F930104C3F830FC0C3E830F80C3D830F40C3C830F00C3B830EC0C3A830E80C39830E40C34830D00C33830CC0C3283",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "inst_mem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "inst_mem:u2|altsyncram:altsyncram_component|altsyncram_79s3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y4_N28
\inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst~0_combout\);

-- Location: LCCOMB_X14_Y4_N24
\inst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~1_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst~1_combout\);

-- Location: LCCOMB_X16_Y4_N6
\inst~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~2_combout\ = (\u2|altsyncram_component|auto_generated|q_a\(2) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|altsyncram_component|auto_generated|q_a\(2),
	datad => \clr~input_o\,
	combout => \inst~2_combout\);

-- Location: LCCOMB_X14_Y4_N14
\inst~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~3_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst~3_combout\);

-- Location: LCCOMB_X14_Y4_N0
\inst~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~4_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst~4_combout\);

-- Location: LCCOMB_X16_Y4_N24
\inst~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~5_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst~5_combout\);

-- Location: LCCOMB_X16_Y4_N2
\inst~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~6_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst~6_combout\);

-- Location: LCCOMB_X16_Y4_N4
\inst~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~7_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(7),
	combout => \inst~7_combout\);

-- Location: LCCOMB_X16_Y4_N18
\inst~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~8_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(8),
	combout => \inst~8_combout\);

-- Location: LCCOMB_X16_Y4_N0
\inst~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~9_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(9),
	combout => \inst~9_combout\);

-- Location: LCCOMB_X14_Y4_N10
\inst~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~10_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => \u2|altsyncram_component|auto_generated|q_a\(10),
	combout => \inst~10_combout\);

-- Location: LCCOMB_X16_Y4_N10
\inst~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~11_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(11),
	combout => \inst~11_combout\);

-- Location: LCCOMB_X14_Y4_N12
\inst~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~12_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(12),
	combout => \inst~12_combout\);

-- Location: LCCOMB_X16_Y4_N12
\inst~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~13_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(13),
	combout => \inst~13_combout\);

-- Location: M9K_X15_Y4_N0
\u2|altsyncram_component|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00200008000200008000200008000200008000200008000200008000200008000200008000003FA0FFFF300000FE83FFFCA00628004E0074401D000030000000",
	mem_init1 => X"30000800060004C00090006410180405010174C0265018F4067B272D401BF6759C01FC0099004AC407C0018E0149C064C01748057D405E407CF018E40792014F8008000200008000200008000200008000200008000200008000200008000200008000200008000200008000003FA0FFFF300000FE83FFFCA00628004E0074401D000030000000300008001D0001C00160006010070407810084C02650093C06ED27244077967394051200990077E41BD806FC0142C07A40084807CB415CC05BD019FC0524019B8008000200008000200008000200008000200008000200008000200008000200008000200008000200008000003FA0FFFF300000FE83FFFCA0",
	mem_init0 => X"0628004E0074401D000030000000300008000900018001E0006810130404C10192C0265018AC05F727444027166534070C0099004A841D3004CA01B4404EC019280177409B4048F0129C04A6019F8008000200008000200008000200008000200008000200008000200008000200008000200008000200008000003FA0FFFF300000FE83FFFCA00628004E0074401D000030000000300008001E0001C00060006410090405C101F3C026501DF401A927EB401736673C018A009900712408C8052C019F4072A01F380729408C401A501BA4074A015C00080002000080002000080002000080002000080002000080002000080002000080002000080002000080",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "inst_mem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "inst_mem:u2|altsyncram:altsyncram_component|altsyncram_79s3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \u2|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \u2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y4_N22
\inst~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~14_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(14),
	combout => \inst~14_combout\);

-- Location: LCCOMB_X14_Y4_N26
\inst~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~15_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(15),
	combout => \inst~15_combout\);

-- Location: LCCOMB_X14_Y4_N8
\inst~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~16_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => \u2|altsyncram_component|auto_generated|q_a\(16),
	combout => \inst~16_combout\);

-- Location: LCCOMB_X14_Y4_N22
\inst~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~17_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(17),
	combout => \inst~17_combout\);

-- Location: LCCOMB_X14_Y4_N28
\inst~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~18_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(18),
	combout => \inst~18_combout\);

-- Location: LCCOMB_X14_Y4_N18
\inst~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~19_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(19),
	combout => \inst~19_combout\);

-- Location: LCCOMB_X14_Y4_N16
\inst~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~20_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(20),
	combout => \inst~20_combout\);

-- Location: LCCOMB_X14_Y4_N2
\inst~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~21_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => \u2|altsyncram_component|auto_generated|q_a\(21),
	combout => \inst~21_combout\);

-- Location: LCCOMB_X16_Y4_N16
\inst~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~22_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(22),
	combout => \inst~22_combout\);

-- Location: LCCOMB_X14_Y4_N4
\inst~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~23_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(23),
	combout => \inst~23_combout\);

-- Location: LCCOMB_X16_Y4_N30
\inst~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~24_combout\ = (\u2|altsyncram_component|auto_generated|q_a\(24) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|altsyncram_component|auto_generated|q_a\(24),
	datad => \clr~input_o\,
	combout => \inst~24_combout\);

-- Location: LCCOMB_X14_Y4_N30
\inst~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~25_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(25),
	combout => \inst~25_combout\);

-- Location: LCCOMB_X16_Y4_N8
\inst~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~26_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(26),
	combout => \inst~26_combout\);

-- Location: LCCOMB_X14_Y4_N20
\inst~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~27_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => \u2|altsyncram_component|auto_generated|q_a\(27),
	combout => \inst~27_combout\);

-- Location: LCCOMB_X16_Y4_N14
\inst~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~28_combout\ = (\u2|altsyncram_component|auto_generated|q_a\(28) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|altsyncram_component|auto_generated|q_a\(28),
	datad => \clr~input_o\,
	combout => \inst~28_combout\);

-- Location: LCCOMB_X16_Y4_N20
\inst~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~29_combout\ = (\u2|altsyncram_component|auto_generated|q_a\(29) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|altsyncram_component|auto_generated|q_a\(29),
	datad => \clr~input_o\,
	combout => \inst~29_combout\);

-- Location: LCCOMB_X14_Y4_N6
\inst~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~30_combout\ = (!\clr~input_o\ & \u2|altsyncram_component|auto_generated|q_a\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => \u2|altsyncram_component|auto_generated|q_a\(30),
	combout => \inst~30_combout\);

-- Location: LCCOMB_X16_Y4_N26
\inst~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~31_combout\ = (\u2|altsyncram_component|auto_generated|q_a\(31) & !\clr~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|altsyncram_component|auto_generated|q_a\(31),
	datad => \clr~input_o\,
	combout => \inst~31_combout\);

-- Location: LCCOMB_X3_Y4_N28
\pc[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc[0]~reg0feeder_combout\ = \u1|u1|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|u1|Q\(0),
	combout => \pc[0]~reg0feeder_combout\);

-- Location: FF_X3_Y4_N29
\pc[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[0]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc[0]~reg0_q\);

-- Location: LCCOMB_X5_Y4_N28
\pc[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc[1]~reg0feeder_combout\ = \u1|u1|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|u1|Q\(1),
	combout => \pc[1]~reg0feeder_combout\);

-- Location: FF_X5_Y4_N29
\pc[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[1]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc[1]~reg0_q\);

-- Location: LCCOMB_X3_Y4_N26
\pc[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc[2]~reg0feeder_combout\ = \u1|u1|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|u1|Q\(2),
	combout => \pc[2]~reg0feeder_combout\);

-- Location: FF_X3_Y4_N27
\pc[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[2]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc[2]~reg0_q\);

-- Location: LCCOMB_X5_Y4_N26
\pc[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc[3]~reg0feeder_combout\ = \u1|u1|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|u1|Q\(3),
	combout => \pc[3]~reg0feeder_combout\);

-- Location: FF_X5_Y4_N27
\pc[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[3]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc[3]~reg0_q\);

-- Location: LCCOMB_X4_Y4_N0
\pc[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc[4]~reg0feeder_combout\ = \u1|u1|Q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|u1|Q\(4),
	combout => \pc[4]~reg0feeder_combout\);

-- Location: FF_X4_Y4_N1
\pc[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[4]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc[4]~reg0_q\);

-- Location: LCCOMB_X5_Y4_N24
\pc[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc[5]~reg0feeder_combout\ = \u1|u1|Q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|u1|Q\(5),
	combout => \pc[5]~reg0feeder_combout\);

-- Location: FF_X5_Y4_N25
\pc[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[5]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc[5]~reg0_q\);

-- Location: LCCOMB_X3_Y4_N20
\pc[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc[6]~reg0feeder_combout\ = \u1|u1|Q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u1|u1|Q\(6),
	combout => \pc[6]~reg0feeder_combout\);

-- Location: FF_X3_Y4_N21
\pc[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[6]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc[6]~reg0_q\);

-- Location: LCCOMB_X3_Y4_N6
\pc[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc[7]~reg0feeder_combout\ = \u1|u1|Q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|u1|Q\(7),
	combout => \pc[7]~reg0feeder_combout\);

-- Location: FF_X3_Y4_N7
\pc[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pc[7]~reg0feeder_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc[7]~reg0_q\);

-- Location: LCCOMB_X3_Y4_N8
\pcinc[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcinc[0]~21_combout\ = !\u1|u1|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1|u1|Q\(0),
	combout => \pcinc[0]~21_combout\);

-- Location: FF_X3_Y4_N9
\pcinc[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pcinc[0]~21_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcinc[0]~reg0_q\);

-- Location: LCCOMB_X4_Y4_N14
\pcinc[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcinc[1]~7_combout\ = (\u1|u1|Q\(0) & (\u1|u1|Q\(1) $ (VCC))) # (!\u1|u1|Q\(0) & (\u1|u1|Q\(1) & VCC))
-- \pcinc[1]~8\ = CARRY((\u1|u1|Q\(0) & \u1|u1|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|Q\(0),
	datab => \u1|u1|Q\(1),
	datad => VCC,
	combout => \pcinc[1]~7_combout\,
	cout => \pcinc[1]~8\);

-- Location: FF_X4_Y4_N15
\pcinc[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pcinc[1]~7_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcinc[1]~reg0_q\);

-- Location: LCCOMB_X4_Y4_N16
\pcinc[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcinc[2]~9_combout\ = (\u1|u1|Q\(2) & (!\pcinc[1]~8\)) # (!\u1|u1|Q\(2) & ((\pcinc[1]~8\) # (GND)))
-- \pcinc[2]~10\ = CARRY((!\pcinc[1]~8\) # (!\u1|u1|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|Q\(2),
	datad => VCC,
	cin => \pcinc[1]~8\,
	combout => \pcinc[2]~9_combout\,
	cout => \pcinc[2]~10\);

-- Location: FF_X4_Y4_N17
\pcinc[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pcinc[2]~9_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcinc[2]~reg0_q\);

-- Location: LCCOMB_X4_Y4_N18
\pcinc[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcinc[3]~11_combout\ = (\u1|u1|Q\(3) & (\pcinc[2]~10\ $ (GND))) # (!\u1|u1|Q\(3) & (!\pcinc[2]~10\ & VCC))
-- \pcinc[3]~12\ = CARRY((\u1|u1|Q\(3) & !\pcinc[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u1|Q\(3),
	datad => VCC,
	cin => \pcinc[2]~10\,
	combout => \pcinc[3]~11_combout\,
	cout => \pcinc[3]~12\);

-- Location: FF_X4_Y4_N19
\pcinc[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pcinc[3]~11_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcinc[3]~reg0_q\);

-- Location: LCCOMB_X4_Y4_N20
\pcinc[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcinc[4]~13_combout\ = (\u1|u1|Q\(4) & (!\pcinc[3]~12\)) # (!\u1|u1|Q\(4) & ((\pcinc[3]~12\) # (GND)))
-- \pcinc[4]~14\ = CARRY((!\pcinc[3]~12\) # (!\u1|u1|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u1|Q\(4),
	datad => VCC,
	cin => \pcinc[3]~12\,
	combout => \pcinc[4]~13_combout\,
	cout => \pcinc[4]~14\);

-- Location: FF_X4_Y4_N21
\pcinc[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pcinc[4]~13_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcinc[4]~reg0_q\);

-- Location: LCCOMB_X4_Y4_N22
\pcinc[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcinc[5]~15_combout\ = (\u1|u1|Q\(5) & (\pcinc[4]~14\ $ (GND))) # (!\u1|u1|Q\(5) & (!\pcinc[4]~14\ & VCC))
-- \pcinc[5]~16\ = CARRY((\u1|u1|Q\(5) & !\pcinc[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|u1|Q\(5),
	datad => VCC,
	cin => \pcinc[4]~14\,
	combout => \pcinc[5]~15_combout\,
	cout => \pcinc[5]~16\);

-- Location: FF_X4_Y4_N23
\pcinc[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pcinc[5]~15_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcinc[5]~reg0_q\);

-- Location: LCCOMB_X4_Y4_N24
\pcinc[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcinc[6]~17_combout\ = (\u1|u1|Q\(6) & (!\pcinc[5]~16\)) # (!\u1|u1|Q\(6) & ((\pcinc[5]~16\) # (GND)))
-- \pcinc[6]~18\ = CARRY((!\pcinc[5]~16\) # (!\u1|u1|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|u1|Q\(6),
	datad => VCC,
	cin => \pcinc[5]~16\,
	combout => \pcinc[6]~17_combout\,
	cout => \pcinc[6]~18\);

-- Location: FF_X4_Y4_N25
\pcinc[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pcinc[6]~17_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcinc[6]~reg0_q\);

-- Location: LCCOMB_X4_Y4_N26
\pcinc[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \pcinc[7]~19_combout\ = \pcinc[6]~18\ $ (!\u1|u1|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u1|u1|Q\(7),
	cin => \pcinc[6]~18\,
	combout => \pcinc[7]~19_combout\);

-- Location: FF_X4_Y4_N27
\pcinc[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \pcinc[7]~19_combout\,
	clrn => \ALT_INV_clr~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pcinc[7]~reg0_q\);

ww_inst(0) <= \inst[0]~output_o\;

ww_inst(1) <= \inst[1]~output_o\;

ww_inst(2) <= \inst[2]~output_o\;

ww_inst(3) <= \inst[3]~output_o\;

ww_inst(4) <= \inst[4]~output_o\;

ww_inst(5) <= \inst[5]~output_o\;

ww_inst(6) <= \inst[6]~output_o\;

ww_inst(7) <= \inst[7]~output_o\;

ww_inst(8) <= \inst[8]~output_o\;

ww_inst(9) <= \inst[9]~output_o\;

ww_inst(10) <= \inst[10]~output_o\;

ww_inst(11) <= \inst[11]~output_o\;

ww_inst(12) <= \inst[12]~output_o\;

ww_inst(13) <= \inst[13]~output_o\;

ww_inst(14) <= \inst[14]~output_o\;

ww_inst(15) <= \inst[15]~output_o\;

ww_inst(16) <= \inst[16]~output_o\;

ww_inst(17) <= \inst[17]~output_o\;

ww_inst(18) <= \inst[18]~output_o\;

ww_inst(19) <= \inst[19]~output_o\;

ww_inst(20) <= \inst[20]~output_o\;

ww_inst(21) <= \inst[21]~output_o\;

ww_inst(22) <= \inst[22]~output_o\;

ww_inst(23) <= \inst[23]~output_o\;

ww_inst(24) <= \inst[24]~output_o\;

ww_inst(25) <= \inst[25]~output_o\;

ww_inst(26) <= \inst[26]~output_o\;

ww_inst(27) <= \inst[27]~output_o\;

ww_inst(28) <= \inst[28]~output_o\;

ww_inst(29) <= \inst[29]~output_o\;

ww_inst(30) <= \inst[30]~output_o\;

ww_inst(31) <= \inst[31]~output_o\;

ww_pc(0) <= \pc[0]~output_o\;

ww_pc(1) <= \pc[1]~output_o\;

ww_pc(2) <= \pc[2]~output_o\;

ww_pc(3) <= \pc[3]~output_o\;

ww_pc(4) <= \pc[4]~output_o\;

ww_pc(5) <= \pc[5]~output_o\;

ww_pc(6) <= \pc[6]~output_o\;

ww_pc(7) <= \pc[7]~output_o\;

ww_pcinc(0) <= \pcinc[0]~output_o\;

ww_pcinc(1) <= \pcinc[1]~output_o\;

ww_pcinc(2) <= \pcinc[2]~output_o\;

ww_pcinc(3) <= \pcinc[3]~output_o\;

ww_pcinc(4) <= \pcinc[4]~output_o\;

ww_pcinc(5) <= \pcinc[5]~output_o\;

ww_pcinc(6) <= \pcinc[6]~output_o\;

ww_pcinc(7) <= \pcinc[7]~output_o\;
END structure;


