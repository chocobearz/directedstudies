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

-- DATE "03/02/2020 08:44:23"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	risc_v_decoder IS
    PORT (
	bitposition : IN std_logic_vector(1 DOWNTO 0);
	instruction : IN std_logic_vector(31 DOWNTO 0);
	rs1 : BUFFER std_logic_vector(4 DOWNTO 0);
	rs2 : BUFFER std_logic_vector(4 DOWNTO 0);
	rd : BUFFER std_logic_vector(4 DOWNTO 0);
	immediate : BUFFER std_logic_vector(31 DOWNTO 0);
	opcode : BUFFER std_logic_vector(6 DOWNTO 0);
	funct7 : BUFFER std_logic_vector(6 DOWNTO 0);
	funct3 : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END risc_v_decoder;

-- Design Ports Information
-- rs1[0]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[1]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[3]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs1[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[3]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs2[4]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[0]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[2]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[3]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd[4]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[3]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[4]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[5]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[6]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[7]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[9]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[10]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[11]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[12]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[13]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[14]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[15]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[16]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[17]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[18]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[19]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[20]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[21]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[22]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[23]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[24]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[25]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[26]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[27]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[28]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[29]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[30]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- immediate[31]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[4]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[5]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[6]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7[0]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7[1]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7[2]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7[3]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7[5]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct7[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct3[0]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct3[1]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct3[2]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[15]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[16]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[17]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[18]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[19]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[20]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bitposition[1]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bitposition[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[21]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[22]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[23]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[24]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[7]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[8]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[9]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[10]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[11]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[0]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[2]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[3]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[4]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[25]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[5]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[26]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[6]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[27]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[28]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[29]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[30]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[31]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[12]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[13]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction[14]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF risc_v_decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bitposition : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_instruction : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_rs1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_rs2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_rd : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_immediate : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_opcode : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_funct7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_funct3 : std_logic_vector(2 DOWNTO 0);
SIGNAL \rs1[0]~output_o\ : std_logic;
SIGNAL \rs1[1]~output_o\ : std_logic;
SIGNAL \rs1[2]~output_o\ : std_logic;
SIGNAL \rs1[3]~output_o\ : std_logic;
SIGNAL \rs1[4]~output_o\ : std_logic;
SIGNAL \rs2[0]~output_o\ : std_logic;
SIGNAL \rs2[1]~output_o\ : std_logic;
SIGNAL \rs2[2]~output_o\ : std_logic;
SIGNAL \rs2[3]~output_o\ : std_logic;
SIGNAL \rs2[4]~output_o\ : std_logic;
SIGNAL \rd[0]~output_o\ : std_logic;
SIGNAL \rd[1]~output_o\ : std_logic;
SIGNAL \rd[2]~output_o\ : std_logic;
SIGNAL \rd[3]~output_o\ : std_logic;
SIGNAL \rd[4]~output_o\ : std_logic;
SIGNAL \immediate[0]~output_o\ : std_logic;
SIGNAL \immediate[1]~output_o\ : std_logic;
SIGNAL \immediate[2]~output_o\ : std_logic;
SIGNAL \immediate[3]~output_o\ : std_logic;
SIGNAL \immediate[4]~output_o\ : std_logic;
SIGNAL \immediate[5]~output_o\ : std_logic;
SIGNAL \immediate[6]~output_o\ : std_logic;
SIGNAL \immediate[7]~output_o\ : std_logic;
SIGNAL \immediate[8]~output_o\ : std_logic;
SIGNAL \immediate[9]~output_o\ : std_logic;
SIGNAL \immediate[10]~output_o\ : std_logic;
SIGNAL \immediate[11]~output_o\ : std_logic;
SIGNAL \immediate[12]~output_o\ : std_logic;
SIGNAL \immediate[13]~output_o\ : std_logic;
SIGNAL \immediate[14]~output_o\ : std_logic;
SIGNAL \immediate[15]~output_o\ : std_logic;
SIGNAL \immediate[16]~output_o\ : std_logic;
SIGNAL \immediate[17]~output_o\ : std_logic;
SIGNAL \immediate[18]~output_o\ : std_logic;
SIGNAL \immediate[19]~output_o\ : std_logic;
SIGNAL \immediate[20]~output_o\ : std_logic;
SIGNAL \immediate[21]~output_o\ : std_logic;
SIGNAL \immediate[22]~output_o\ : std_logic;
SIGNAL \immediate[23]~output_o\ : std_logic;
SIGNAL \immediate[24]~output_o\ : std_logic;
SIGNAL \immediate[25]~output_o\ : std_logic;
SIGNAL \immediate[26]~output_o\ : std_logic;
SIGNAL \immediate[27]~output_o\ : std_logic;
SIGNAL \immediate[28]~output_o\ : std_logic;
SIGNAL \immediate[29]~output_o\ : std_logic;
SIGNAL \immediate[30]~output_o\ : std_logic;
SIGNAL \immediate[31]~output_o\ : std_logic;
SIGNAL \opcode[0]~output_o\ : std_logic;
SIGNAL \opcode[1]~output_o\ : std_logic;
SIGNAL \opcode[2]~output_o\ : std_logic;
SIGNAL \opcode[3]~output_o\ : std_logic;
SIGNAL \opcode[4]~output_o\ : std_logic;
SIGNAL \opcode[5]~output_o\ : std_logic;
SIGNAL \opcode[6]~output_o\ : std_logic;
SIGNAL \funct7[0]~output_o\ : std_logic;
SIGNAL \funct7[1]~output_o\ : std_logic;
SIGNAL \funct7[2]~output_o\ : std_logic;
SIGNAL \funct7[3]~output_o\ : std_logic;
SIGNAL \funct7[4]~output_o\ : std_logic;
SIGNAL \funct7[5]~output_o\ : std_logic;
SIGNAL \funct7[6]~output_o\ : std_logic;
SIGNAL \funct3[0]~output_o\ : std_logic;
SIGNAL \funct3[1]~output_o\ : std_logic;
SIGNAL \funct3[2]~output_o\ : std_logic;
SIGNAL \instruction[15]~input_o\ : std_logic;
SIGNAL \instruction[16]~input_o\ : std_logic;
SIGNAL \instruction[17]~input_o\ : std_logic;
SIGNAL \instruction[18]~input_o\ : std_logic;
SIGNAL \instruction[19]~input_o\ : std_logic;
SIGNAL \bitposition[0]~input_o\ : std_logic;
SIGNAL \instruction[20]~input_o\ : std_logic;
SIGNAL \bitposition[1]~input_o\ : std_logic;
SIGNAL \rs2[0]~0_combout\ : std_logic;
SIGNAL \instruction[21]~input_o\ : std_logic;
SIGNAL \rs2[1]~1_combout\ : std_logic;
SIGNAL \instruction[22]~input_o\ : std_logic;
SIGNAL \rs2[2]~2_combout\ : std_logic;
SIGNAL \instruction[23]~input_o\ : std_logic;
SIGNAL \rs2[3]~3_combout\ : std_logic;
SIGNAL \instruction[24]~input_o\ : std_logic;
SIGNAL \rs2[4]~4_combout\ : std_logic;
SIGNAL \instruction[7]~input_o\ : std_logic;
SIGNAL \rd[0]~0_combout\ : std_logic;
SIGNAL \instruction[8]~input_o\ : std_logic;
SIGNAL \rd[1]~1_combout\ : std_logic;
SIGNAL \instruction[9]~input_o\ : std_logic;
SIGNAL \rd[2]~2_combout\ : std_logic;
SIGNAL \instruction[10]~input_o\ : std_logic;
SIGNAL \rd[3]~3_combout\ : std_logic;
SIGNAL \instruction[11]~input_o\ : std_logic;
SIGNAL \rd[4]~4_combout\ : std_logic;
SIGNAL \instruction[0]~input_o\ : std_logic;
SIGNAL \immediate[0]~0_combout\ : std_logic;
SIGNAL \immediate[0]~1_combout\ : std_logic;
SIGNAL \instruction[1]~input_o\ : std_logic;
SIGNAL \immediate[1]~2_combout\ : std_logic;
SIGNAL \immediate[1]~3_combout\ : std_logic;
SIGNAL \instruction[2]~input_o\ : std_logic;
SIGNAL \immediate[2]~4_combout\ : std_logic;
SIGNAL \immediate[2]~5_combout\ : std_logic;
SIGNAL \instruction[3]~input_o\ : std_logic;
SIGNAL \immediate[3]~6_combout\ : std_logic;
SIGNAL \immediate[3]~7_combout\ : std_logic;
SIGNAL \instruction[4]~input_o\ : std_logic;
SIGNAL \immediate[4]~8_combout\ : std_logic;
SIGNAL \immediate[4]~9_combout\ : std_logic;
SIGNAL \instruction[25]~input_o\ : std_logic;
SIGNAL \instruction[5]~input_o\ : std_logic;
SIGNAL \immediate[5]~10_combout\ : std_logic;
SIGNAL \instruction[6]~input_o\ : std_logic;
SIGNAL \instruction[26]~input_o\ : std_logic;
SIGNAL \immediate[6]~11_combout\ : std_logic;
SIGNAL \instruction[27]~input_o\ : std_logic;
SIGNAL \immediate[7]~12_combout\ : std_logic;
SIGNAL \instruction[28]~input_o\ : std_logic;
SIGNAL \immediate[8]~13_combout\ : std_logic;
SIGNAL \instruction[29]~input_o\ : std_logic;
SIGNAL \immediate[9]~14_combout\ : std_logic;
SIGNAL \instruction[30]~input_o\ : std_logic;
SIGNAL \immediate[10]~15_combout\ : std_logic;
SIGNAL \instruction[31]~input_o\ : std_logic;
SIGNAL \immediate[11]~16_combout\ : std_logic;
SIGNAL \immediate[11]~17_combout\ : std_logic;
SIGNAL \instruction[12]~input_o\ : std_logic;
SIGNAL \immediate[12]~18_combout\ : std_logic;
SIGNAL \instruction[13]~input_o\ : std_logic;
SIGNAL \immediate[13]~19_combout\ : std_logic;
SIGNAL \instruction[14]~input_o\ : std_logic;
SIGNAL \immediate[14]~20_combout\ : std_logic;
SIGNAL \immediate[15]~21_combout\ : std_logic;
SIGNAL \immediate[16]~22_combout\ : std_logic;
SIGNAL \immediate[17]~23_combout\ : std_logic;
SIGNAL \immediate[18]~24_combout\ : std_logic;
SIGNAL \immediate[19]~25_combout\ : std_logic;
SIGNAL \immediate[20]~26_combout\ : std_logic;
SIGNAL \immediate[21]~27_combout\ : std_logic;
SIGNAL \immediate[22]~28_combout\ : std_logic;
SIGNAL \immediate[23]~29_combout\ : std_logic;
SIGNAL \immediate[24]~30_combout\ : std_logic;
SIGNAL \immediate[25]~31_combout\ : std_logic;
SIGNAL \immediate[26]~32_combout\ : std_logic;
SIGNAL \immediate[27]~33_combout\ : std_logic;
SIGNAL \immediate[28]~34_combout\ : std_logic;
SIGNAL \immediate[29]~35_combout\ : std_logic;
SIGNAL \immediate[30]~36_combout\ : std_logic;
SIGNAL \immediate[31]~37_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_bitposition <= bitposition;
ww_instruction <= instruction;
rs1 <= ww_rs1;
rs2 <= ww_rs2;
rd <= ww_rd;
immediate <= ww_immediate;
opcode <= ww_opcode;
funct7 <= ww_funct7;
funct3 <= ww_funct3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y44_N2
\rs1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[15]~input_o\,
	devoe => ww_devoe,
	o => \rs1[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\rs1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[16]~input_o\,
	devoe => ww_devoe,
	o => \rs1[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\rs1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[17]~input_o\,
	devoe => ww_devoe,
	o => \rs1[2]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\rs1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[18]~input_o\,
	devoe => ww_devoe,
	o => \rs1[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\rs1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[19]~input_o\,
	devoe => ww_devoe,
	o => \rs1[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\rs2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[0]~0_combout\,
	devoe => ww_devoe,
	o => \rs2[0]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\rs2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[1]~1_combout\,
	devoe => ww_devoe,
	o => \rs2[1]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\rs2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[2]~2_combout\,
	devoe => ww_devoe,
	o => \rs2[2]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\rs2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[3]~3_combout\,
	devoe => ww_devoe,
	o => \rs2[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\rs2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs2[4]~4_combout\,
	devoe => ww_devoe,
	o => \rs2[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\rd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rd[0]~0_combout\,
	devoe => ww_devoe,
	o => \rd[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\rd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rd[1]~1_combout\,
	devoe => ww_devoe,
	o => \rd[1]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\rd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rd[2]~2_combout\,
	devoe => ww_devoe,
	o => \rd[2]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\rd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rd[3]~3_combout\,
	devoe => ww_devoe,
	o => \rd[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\rd[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rd[4]~4_combout\,
	devoe => ww_devoe,
	o => \rd[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\immediate[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[0]~1_combout\,
	devoe => ww_devoe,
	o => \immediate[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\immediate[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[1]~3_combout\,
	devoe => ww_devoe,
	o => \immediate[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\immediate[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[2]~5_combout\,
	devoe => ww_devoe,
	o => \immediate[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\immediate[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[3]~7_combout\,
	devoe => ww_devoe,
	o => \immediate[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\immediate[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[4]~9_combout\,
	devoe => ww_devoe,
	o => \immediate[4]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\immediate[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[5]~10_combout\,
	devoe => ww_devoe,
	o => \immediate[5]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\immediate[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[6]~11_combout\,
	devoe => ww_devoe,
	o => \immediate[6]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\immediate[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[7]~12_combout\,
	devoe => ww_devoe,
	o => \immediate[7]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\immediate[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[8]~13_combout\,
	devoe => ww_devoe,
	o => \immediate[8]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\immediate[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[9]~14_combout\,
	devoe => ww_devoe,
	o => \immediate[9]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\immediate[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[10]~15_combout\,
	devoe => ww_devoe,
	o => \immediate[10]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\immediate[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[11]~17_combout\,
	devoe => ww_devoe,
	o => \immediate[11]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\immediate[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[12]~18_combout\,
	devoe => ww_devoe,
	o => \immediate[12]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\immediate[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[13]~19_combout\,
	devoe => ww_devoe,
	o => \immediate[13]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\immediate[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[14]~20_combout\,
	devoe => ww_devoe,
	o => \immediate[14]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\immediate[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[15]~21_combout\,
	devoe => ww_devoe,
	o => \immediate[15]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\immediate[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[16]~22_combout\,
	devoe => ww_devoe,
	o => \immediate[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\immediate[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[17]~23_combout\,
	devoe => ww_devoe,
	o => \immediate[17]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\immediate[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[18]~24_combout\,
	devoe => ww_devoe,
	o => \immediate[18]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\immediate[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[19]~25_combout\,
	devoe => ww_devoe,
	o => \immediate[19]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\immediate[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[20]~26_combout\,
	devoe => ww_devoe,
	o => \immediate[20]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\immediate[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[21]~27_combout\,
	devoe => ww_devoe,
	o => \immediate[21]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\immediate[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[22]~28_combout\,
	devoe => ww_devoe,
	o => \immediate[22]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\immediate[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[23]~29_combout\,
	devoe => ww_devoe,
	o => \immediate[23]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\immediate[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[24]~30_combout\,
	devoe => ww_devoe,
	o => \immediate[24]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\immediate[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[25]~31_combout\,
	devoe => ww_devoe,
	o => \immediate[25]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\immediate[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[26]~32_combout\,
	devoe => ww_devoe,
	o => \immediate[26]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\immediate[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[27]~33_combout\,
	devoe => ww_devoe,
	o => \immediate[27]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\immediate[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[28]~34_combout\,
	devoe => ww_devoe,
	o => \immediate[28]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\immediate[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[29]~35_combout\,
	devoe => ww_devoe,
	o => \immediate[29]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\immediate[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[30]~36_combout\,
	devoe => ww_devoe,
	o => \immediate[30]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\immediate[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[31]~37_combout\,
	devoe => ww_devoe,
	o => \immediate[31]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\opcode[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[0]~input_o\,
	devoe => ww_devoe,
	o => \opcode[0]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\opcode[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[1]~input_o\,
	devoe => ww_devoe,
	o => \opcode[1]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\opcode[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[2]~input_o\,
	devoe => ww_devoe,
	o => \opcode[2]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\opcode[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[3]~input_o\,
	devoe => ww_devoe,
	o => \opcode[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\opcode[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[4]~input_o\,
	devoe => ww_devoe,
	o => \opcode[4]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\opcode[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[5]~input_o\,
	devoe => ww_devoe,
	o => \opcode[5]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\opcode[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[6]~input_o\,
	devoe => ww_devoe,
	o => \opcode[6]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\funct7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[25]~31_combout\,
	devoe => ww_devoe,
	o => \funct7[0]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\funct7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[26]~32_combout\,
	devoe => ww_devoe,
	o => \funct7[1]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\funct7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[27]~33_combout\,
	devoe => ww_devoe,
	o => \funct7[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\funct7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[28]~34_combout\,
	devoe => ww_devoe,
	o => \funct7[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\funct7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[29]~35_combout\,
	devoe => ww_devoe,
	o => \funct7[4]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\funct7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[30]~36_combout\,
	devoe => ww_devoe,
	o => \funct7[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\funct7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \immediate[31]~37_combout\,
	devoe => ww_devoe,
	o => \funct7[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\funct3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[12]~input_o\,
	devoe => ww_devoe,
	o => \funct3[0]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\funct3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[13]~input_o\,
	devoe => ww_devoe,
	o => \funct3[1]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\funct3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instruction[14]~input_o\,
	devoe => ww_devoe,
	o => \funct3[2]~output_o\);

-- Location: IOIBUF_X115_Y44_N8
\instruction[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(15),
	o => \instruction[15]~input_o\);

-- Location: IOIBUF_X115_Y29_N1
\instruction[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(16),
	o => \instruction[16]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\instruction[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(17),
	o => \instruction[17]~input_o\);

-- Location: IOIBUF_X115_Y45_N22
\instruction[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(18),
	o => \instruction[18]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\instruction[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(19),
	o => \instruction[19]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\bitposition[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bitposition(0),
	o => \bitposition[0]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\instruction[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(20),
	o => \instruction[20]~input_o\);

-- Location: IOIBUF_X115_Y60_N15
\bitposition[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bitposition(1),
	o => \bitposition[1]~input_o\);

-- Location: LCCOMB_X20_Y1_N8
\rs2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rs2[0]~0_combout\ = (\instruction[20]~input_o\ & ((\bitposition[1]~input_o\) # (!\bitposition[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bitposition[0]~input_o\,
	datac => \instruction[20]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \rs2[0]~0_combout\);

-- Location: IOIBUF_X58_Y73_N15
\instruction[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(21),
	o => \instruction[21]~input_o\);

-- Location: LCCOMB_X61_Y72_N0
\rs2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rs2[1]~1_combout\ = (\instruction[21]~input_o\ & ((\bitposition[1]~input_o\) # (!\bitposition[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[0]~input_o\,
	datac => \instruction[21]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \rs2[1]~1_combout\);

-- Location: IOIBUF_X58_Y73_N1
\instruction[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(22),
	o => \instruction[22]~input_o\);

-- Location: LCCOMB_X61_Y72_N2
\rs2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rs2[2]~2_combout\ = (\instruction[22]~input_o\ & ((\bitposition[1]~input_o\) # (!\bitposition[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[0]~input_o\,
	datab => \instruction[22]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \rs2[2]~2_combout\);

-- Location: IOIBUF_X115_Y33_N8
\instruction[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(23),
	o => \instruction[23]~input_o\);

-- Location: LCCOMB_X114_Y33_N8
\rs2[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rs2[3]~3_combout\ = (\instruction[23]~input_o\ & ((\bitposition[1]~input_o\) # (!\bitposition[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \bitposition[0]~input_o\,
	datac => \bitposition[1]~input_o\,
	combout => \rs2[3]~3_combout\);

-- Location: IOIBUF_X13_Y0_N22
\instruction[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(24),
	o => \instruction[24]~input_o\);

-- Location: LCCOMB_X20_Y1_N18
\rs2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rs2[4]~4_combout\ = (\instruction[24]~input_o\ & ((\bitposition[1]~input_o\) # (!\bitposition[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bitposition[0]~input_o\,
	datac => \instruction[24]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \rs2[4]~4_combout\);

-- Location: IOIBUF_X20_Y0_N8
\instruction[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(7),
	o => \instruction[7]~input_o\);

-- Location: LCCOMB_X20_Y1_N4
\rd[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rd[0]~0_combout\ = (\instruction[7]~input_o\ & !\bitposition[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[7]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \rd[0]~0_combout\);

-- Location: IOIBUF_X65_Y73_N15
\instruction[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(8),
	o => \instruction[8]~input_o\);

-- Location: LCCOMB_X61_Y72_N20
\rd[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rd[1]~1_combout\ = (\instruction[8]~input_o\ & !\bitposition[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction[8]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \rd[1]~1_combout\);

-- Location: IOIBUF_X65_Y73_N8
\instruction[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(9),
	o => \instruction[9]~input_o\);

-- Location: LCCOMB_X61_Y72_N6
\rd[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rd[2]~2_combout\ = (\instruction[9]~input_o\ & !\bitposition[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instruction[9]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \rd[2]~2_combout\);

-- Location: IOIBUF_X115_Y34_N15
\instruction[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(10),
	o => \instruction[10]~input_o\);

-- Location: LCCOMB_X114_Y33_N10
\rd[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rd[3]~3_combout\ = (\instruction[10]~input_o\ & !\bitposition[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instruction[10]~input_o\,
	datac => \bitposition[1]~input_o\,
	combout => \rd[3]~3_combout\);

-- Location: IOIBUF_X27_Y0_N8
\instruction[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(11),
	o => \instruction[11]~input_o\);

-- Location: LCCOMB_X20_Y1_N30
\rd[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rd[4]~4_combout\ = (\instruction[11]~input_o\ & !\bitposition[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \rd[4]~4_combout\);

-- Location: IOIBUF_X33_Y0_N8
\instruction[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(0),
	o => \instruction[0]~input_o\);

-- Location: LCCOMB_X20_Y1_N16
\immediate[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[0]~0_combout\ = (!\bitposition[0]~input_o\ & ((\bitposition[1]~input_o\ & (\instruction[7]~input_o\)) # (!\bitposition[1]~input_o\ & ((\instruction[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[1]~input_o\,
	datab => \instruction[7]~input_o\,
	datac => \instruction[0]~input_o\,
	datad => \bitposition[0]~input_o\,
	combout => \immediate[0]~0_combout\);

-- Location: LCCOMB_X20_Y1_N2
\immediate[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[0]~1_combout\ = (\immediate[0]~0_combout\) # ((!\bitposition[1]~input_o\ & (\instruction[20]~input_o\ & \bitposition[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[1]~input_o\,
	datab => \immediate[0]~0_combout\,
	datac => \instruction[20]~input_o\,
	datad => \bitposition[0]~input_o\,
	combout => \immediate[0]~1_combout\);

-- Location: IOIBUF_X49_Y73_N22
\instruction[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(1),
	o => \instruction[1]~input_o\);

-- Location: LCCOMB_X61_Y72_N24
\immediate[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[1]~2_combout\ = (!\bitposition[1]~input_o\ & ((\bitposition[0]~input_o\ & ((\instruction[21]~input_o\))) # (!\bitposition[0]~input_o\ & (\instruction[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[0]~input_o\,
	datab => \instruction[1]~input_o\,
	datac => \instruction[21]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[1]~2_combout\);

-- Location: LCCOMB_X61_Y72_N26
\immediate[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[1]~3_combout\ = (\immediate[1]~2_combout\) # ((\instruction[8]~input_o\ & \bitposition[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \immediate[1]~2_combout\,
	datac => \instruction[8]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[1]~3_combout\);

-- Location: IOIBUF_X60_Y0_N8
\instruction[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(2),
	o => \instruction[2]~input_o\);

-- Location: LCCOMB_X61_Y72_N28
\immediate[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[2]~4_combout\ = (!\bitposition[1]~input_o\ & ((\bitposition[0]~input_o\ & (\instruction[22]~input_o\)) # (!\bitposition[0]~input_o\ & ((\instruction[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[0]~input_o\,
	datab => \instruction[22]~input_o\,
	datac => \instruction[2]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[2]~4_combout\);

-- Location: LCCOMB_X61_Y72_N30
\immediate[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[2]~5_combout\ = (\immediate[2]~4_combout\) # ((\instruction[9]~input_o\ & \bitposition[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \immediate[2]~4_combout\,
	datac => \instruction[9]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[2]~5_combout\);

-- Location: IOIBUF_X115_Y26_N22
\instruction[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(3),
	o => \instruction[3]~input_o\);

-- Location: LCCOMB_X114_Y33_N12
\immediate[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[3]~6_combout\ = (!\bitposition[1]~input_o\ & ((\bitposition[0]~input_o\ & (\instruction[23]~input_o\)) # (!\bitposition[0]~input_o\ & ((\instruction[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \bitposition[0]~input_o\,
	datac => \bitposition[1]~input_o\,
	datad => \instruction[3]~input_o\,
	combout => \immediate[3]~6_combout\);

-- Location: LCCOMB_X114_Y33_N6
\immediate[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[3]~7_combout\ = (\immediate[3]~6_combout\) # ((\instruction[10]~input_o\ & \bitposition[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \immediate[3]~6_combout\,
	datab => \instruction[10]~input_o\,
	datac => \bitposition[1]~input_o\,
	combout => \immediate[3]~7_combout\);

-- Location: IOIBUF_X29_Y0_N22
\instruction[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(4),
	o => \instruction[4]~input_o\);

-- Location: LCCOMB_X20_Y1_N20
\immediate[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[4]~8_combout\ = (!\bitposition[1]~input_o\ & ((\bitposition[0]~input_o\ & ((\instruction[24]~input_o\))) # (!\bitposition[0]~input_o\ & (\instruction[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[4]~input_o\,
	datab => \bitposition[0]~input_o\,
	datac => \instruction[24]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[4]~8_combout\);

-- Location: LCCOMB_X20_Y1_N6
\immediate[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[4]~9_combout\ = (\immediate[4]~8_combout\) # ((\instruction[11]~input_o\ & \bitposition[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datab => \immediate[4]~8_combout\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[4]~9_combout\);

-- Location: IOIBUF_X115_Y34_N22
\instruction[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(25),
	o => \instruction[25]~input_o\);

-- Location: IOIBUF_X115_Y47_N22
\instruction[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(5),
	o => \instruction[5]~input_o\);

-- Location: LCCOMB_X114_Y33_N0
\immediate[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[5]~10_combout\ = (\bitposition[1]~input_o\ & (\instruction[25]~input_o\)) # (!\bitposition[1]~input_o\ & ((\bitposition[0]~input_o\ & (\instruction[25]~input_o\)) # (!\bitposition[0]~input_o\ & ((\instruction[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \instruction[5]~input_o\,
	datac => \bitposition[1]~input_o\,
	datad => \bitposition[0]~input_o\,
	combout => \immediate[5]~10_combout\);

-- Location: IOIBUF_X115_Y46_N8
\instruction[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(6),
	o => \instruction[6]~input_o\);

-- Location: IOIBUF_X115_Y33_N1
\instruction[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(26),
	o => \instruction[26]~input_o\);

-- Location: LCCOMB_X114_Y33_N18
\immediate[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[6]~11_combout\ = (\bitposition[1]~input_o\ & (((\instruction[26]~input_o\)))) # (!\bitposition[1]~input_o\ & ((\bitposition[0]~input_o\ & ((\instruction[26]~input_o\))) # (!\bitposition[0]~input_o\ & (\instruction[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[6]~input_o\,
	datab => \instruction[26]~input_o\,
	datac => \bitposition[1]~input_o\,
	datad => \bitposition[0]~input_o\,
	combout => \immediate[6]~11_combout\);

-- Location: IOIBUF_X31_Y0_N1
\instruction[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(27),
	o => \instruction[27]~input_o\);

-- Location: LCCOMB_X20_Y1_N0
\immediate[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[7]~12_combout\ = (\bitposition[1]~input_o\ & (((\instruction[27]~input_o\)))) # (!\bitposition[1]~input_o\ & ((\bitposition[0]~input_o\ & ((\instruction[27]~input_o\))) # (!\bitposition[0]~input_o\ & (\instruction[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[1]~input_o\,
	datab => \instruction[7]~input_o\,
	datac => \instruction[27]~input_o\,
	datad => \bitposition[0]~input_o\,
	combout => \immediate[7]~12_combout\);

-- Location: IOIBUF_X58_Y73_N8
\instruction[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(28),
	o => \instruction[28]~input_o\);

-- Location: LCCOMB_X61_Y72_N8
\immediate[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[8]~13_combout\ = (\bitposition[0]~input_o\ & (\instruction[28]~input_o\)) # (!\bitposition[0]~input_o\ & ((\bitposition[1]~input_o\ & (\instruction[28]~input_o\)) # (!\bitposition[1]~input_o\ & ((\instruction[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[0]~input_o\,
	datab => \instruction[28]~input_o\,
	datac => \instruction[8]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[8]~13_combout\);

-- Location: IOIBUF_X58_Y73_N22
\instruction[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(29),
	o => \instruction[29]~input_o\);

-- Location: LCCOMB_X61_Y72_N18
\immediate[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[9]~14_combout\ = (\bitposition[0]~input_o\ & (\instruction[29]~input_o\)) # (!\bitposition[0]~input_o\ & ((\bitposition[1]~input_o\ & (\instruction[29]~input_o\)) # (!\bitposition[1]~input_o\ & ((\instruction[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[0]~input_o\,
	datab => \instruction[29]~input_o\,
	datac => \instruction[9]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[9]~14_combout\);

-- Location: IOIBUF_X115_Y32_N8
\instruction[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(30),
	o => \instruction[30]~input_o\);

-- Location: LCCOMB_X114_Y33_N20
\immediate[10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[10]~15_combout\ = (\bitposition[1]~input_o\ & (\instruction[30]~input_o\)) # (!\bitposition[1]~input_o\ & ((\bitposition[0]~input_o\ & (\instruction[30]~input_o\)) # (!\bitposition[0]~input_o\ & ((\instruction[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[30]~input_o\,
	datab => \instruction[10]~input_o\,
	datac => \bitposition[1]~input_o\,
	datad => \bitposition[0]~input_o\,
	combout => \immediate[10]~15_combout\);

-- Location: IOIBUF_X20_Y0_N22
\instruction[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(31),
	o => \instruction[31]~input_o\);

-- Location: LCCOMB_X20_Y1_N10
\immediate[11]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[11]~16_combout\ = (\bitposition[0]~input_o\ & ((\bitposition[1]~input_o\ & ((\instruction[7]~input_o\))) # (!\bitposition[1]~input_o\ & (\instruction[31]~input_o\)))) # (!\bitposition[0]~input_o\ & (\instruction[31]~input_o\ & 
-- ((\bitposition[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[31]~input_o\,
	datab => \bitposition[0]~input_o\,
	datac => \instruction[7]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[11]~16_combout\);

-- Location: LCCOMB_X20_Y1_N12
\immediate[11]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[11]~17_combout\ = (\immediate[11]~16_combout\) # ((\instruction[11]~input_o\ & (!\bitposition[0]~input_o\ & !\bitposition[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[11]~input_o\,
	datab => \bitposition[0]~input_o\,
	datac => \immediate[11]~16_combout\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[11]~17_combout\);

-- Location: IOIBUF_X11_Y0_N22
\instruction[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(12),
	o => \instruction[12]~input_o\);

-- Location: LCCOMB_X20_Y1_N14
\immediate[12]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[12]~18_combout\ = (\bitposition[0]~input_o\ & (\instruction[31]~input_o\ & ((\bitposition[1]~input_o\)))) # (!\bitposition[0]~input_o\ & (((\instruction[12]~input_o\ & !\bitposition[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[31]~input_o\,
	datab => \bitposition[0]~input_o\,
	datac => \instruction[12]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[12]~18_combout\);

-- Location: IOIBUF_X115_Y27_N8
\instruction[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(13),
	o => \instruction[13]~input_o\);

-- Location: LCCOMB_X114_Y33_N22
\immediate[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[13]~19_combout\ = (!\bitposition[1]~input_o\ & (!\bitposition[0]~input_o\ & \instruction[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[1]~input_o\,
	datab => \bitposition[0]~input_o\,
	datac => \instruction[13]~input_o\,
	combout => \immediate[13]~19_combout\);

-- Location: IOIBUF_X115_Y25_N15
\instruction[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_instruction(14),
	o => \instruction[14]~input_o\);

-- Location: LCCOMB_X114_Y33_N16
\immediate[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[14]~20_combout\ = (!\bitposition[1]~input_o\ & (!\bitposition[0]~input_o\ & \instruction[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[1]~input_o\,
	datab => \bitposition[0]~input_o\,
	datac => \instruction[14]~input_o\,
	combout => \immediate[14]~20_combout\);

-- Location: LCCOMB_X114_Y33_N2
\immediate[15]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[15]~21_combout\ = (!\bitposition[1]~input_o\ & (!\bitposition[0]~input_o\ & \instruction[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[1]~input_o\,
	datab => \bitposition[0]~input_o\,
	datac => \instruction[15]~input_o\,
	combout => \immediate[15]~21_combout\);

-- Location: LCCOMB_X114_Y33_N28
\immediate[16]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[16]~22_combout\ = (!\bitposition[1]~input_o\ & (!\bitposition[0]~input_o\ & \instruction[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[1]~input_o\,
	datab => \bitposition[0]~input_o\,
	datac => \instruction[16]~input_o\,
	combout => \immediate[16]~22_combout\);

-- Location: LCCOMB_X61_Y72_N12
\immediate[17]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[17]~23_combout\ = (!\bitposition[0]~input_o\ & (\instruction[17]~input_o\ & !\bitposition[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[0]~input_o\,
	datac => \instruction[17]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[17]~23_combout\);

-- Location: LCCOMB_X114_Y33_N14
\immediate[18]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[18]~24_combout\ = (!\bitposition[1]~input_o\ & (!\bitposition[0]~input_o\ & \instruction[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[1]~input_o\,
	datab => \bitposition[0]~input_o\,
	datac => \instruction[18]~input_o\,
	combout => \immediate[18]~24_combout\);

-- Location: LCCOMB_X61_Y72_N22
\immediate[19]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[19]~25_combout\ = (!\bitposition[0]~input_o\ & (\instruction[19]~input_o\ & !\bitposition[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[0]~input_o\,
	datac => \instruction[19]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[19]~25_combout\);

-- Location: LCCOMB_X20_Y1_N24
\immediate[20]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[20]~26_combout\ = (!\bitposition[0]~input_o\ & (\instruction[20]~input_o\ & !\bitposition[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bitposition[0]~input_o\,
	datac => \instruction[20]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[20]~26_combout\);

-- Location: LCCOMB_X61_Y72_N16
\immediate[21]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[21]~27_combout\ = (!\bitposition[0]~input_o\ & (\instruction[21]~input_o\ & !\bitposition[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[0]~input_o\,
	datac => \instruction[21]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[21]~27_combout\);

-- Location: LCCOMB_X61_Y72_N10
\immediate[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[22]~28_combout\ = (!\bitposition[0]~input_o\ & (\instruction[22]~input_o\ & !\bitposition[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[0]~input_o\,
	datab => \instruction[22]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[22]~28_combout\);

-- Location: LCCOMB_X114_Y33_N24
\immediate[23]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[23]~29_combout\ = (\instruction[23]~input_o\ & (!\bitposition[0]~input_o\ & !\bitposition[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[23]~input_o\,
	datab => \bitposition[0]~input_o\,
	datac => \bitposition[1]~input_o\,
	combout => \immediate[23]~29_combout\);

-- Location: LCCOMB_X20_Y1_N26
\immediate[24]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[24]~30_combout\ = (!\bitposition[0]~input_o\ & (\instruction[24]~input_o\ & !\bitposition[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bitposition[0]~input_o\,
	datac => \instruction[24]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[24]~30_combout\);

-- Location: LCCOMB_X114_Y33_N26
\immediate[25]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[25]~31_combout\ = (\instruction[25]~input_o\ & (!\bitposition[0]~input_o\ & !\bitposition[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[25]~input_o\,
	datab => \bitposition[0]~input_o\,
	datac => \bitposition[1]~input_o\,
	combout => \immediate[25]~31_combout\);

-- Location: LCCOMB_X114_Y33_N4
\immediate[26]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[26]~32_combout\ = (!\bitposition[1]~input_o\ & (!\bitposition[0]~input_o\ & \instruction[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[1]~input_o\,
	datab => \bitposition[0]~input_o\,
	datac => \instruction[26]~input_o\,
	combout => \immediate[26]~32_combout\);

-- Location: LCCOMB_X20_Y1_N28
\immediate[27]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[27]~33_combout\ = (!\bitposition[0]~input_o\ & (\instruction[27]~input_o\ & !\bitposition[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bitposition[0]~input_o\,
	datac => \instruction[27]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[27]~33_combout\);

-- Location: LCCOMB_X61_Y72_N4
\immediate[28]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[28]~34_combout\ = (!\bitposition[0]~input_o\ & (\instruction[28]~input_o\ & !\bitposition[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[0]~input_o\,
	datab => \instruction[28]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[28]~34_combout\);

-- Location: LCCOMB_X61_Y72_N14
\immediate[29]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[29]~35_combout\ = (!\bitposition[0]~input_o\ & (\instruction[29]~input_o\ & !\bitposition[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bitposition[0]~input_o\,
	datab => \instruction[29]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[29]~35_combout\);

-- Location: LCCOMB_X114_Y33_N30
\immediate[30]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[30]~36_combout\ = (\instruction[30]~input_o\ & (!\bitposition[0]~input_o\ & !\bitposition[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[30]~input_o\,
	datab => \bitposition[0]~input_o\,
	datac => \bitposition[1]~input_o\,
	combout => \immediate[30]~36_combout\);

-- Location: LCCOMB_X20_Y1_N22
\immediate[31]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \immediate[31]~37_combout\ = (\instruction[31]~input_o\ & (!\bitposition[0]~input_o\ & !\bitposition[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instruction[31]~input_o\,
	datab => \bitposition[0]~input_o\,
	datad => \bitposition[1]~input_o\,
	combout => \immediate[31]~37_combout\);

ww_rs1(0) <= \rs1[0]~output_o\;

ww_rs1(1) <= \rs1[1]~output_o\;

ww_rs1(2) <= \rs1[2]~output_o\;

ww_rs1(3) <= \rs1[3]~output_o\;

ww_rs1(4) <= \rs1[4]~output_o\;

ww_rs2(0) <= \rs2[0]~output_o\;

ww_rs2(1) <= \rs2[1]~output_o\;

ww_rs2(2) <= \rs2[2]~output_o\;

ww_rs2(3) <= \rs2[3]~output_o\;

ww_rs2(4) <= \rs2[4]~output_o\;

ww_rd(0) <= \rd[0]~output_o\;

ww_rd(1) <= \rd[1]~output_o\;

ww_rd(2) <= \rd[2]~output_o\;

ww_rd(3) <= \rd[3]~output_o\;

ww_rd(4) <= \rd[4]~output_o\;

ww_immediate(0) <= \immediate[0]~output_o\;

ww_immediate(1) <= \immediate[1]~output_o\;

ww_immediate(2) <= \immediate[2]~output_o\;

ww_immediate(3) <= \immediate[3]~output_o\;

ww_immediate(4) <= \immediate[4]~output_o\;

ww_immediate(5) <= \immediate[5]~output_o\;

ww_immediate(6) <= \immediate[6]~output_o\;

ww_immediate(7) <= \immediate[7]~output_o\;

ww_immediate(8) <= \immediate[8]~output_o\;

ww_immediate(9) <= \immediate[9]~output_o\;

ww_immediate(10) <= \immediate[10]~output_o\;

ww_immediate(11) <= \immediate[11]~output_o\;

ww_immediate(12) <= \immediate[12]~output_o\;

ww_immediate(13) <= \immediate[13]~output_o\;

ww_immediate(14) <= \immediate[14]~output_o\;

ww_immediate(15) <= \immediate[15]~output_o\;

ww_immediate(16) <= \immediate[16]~output_o\;

ww_immediate(17) <= \immediate[17]~output_o\;

ww_immediate(18) <= \immediate[18]~output_o\;

ww_immediate(19) <= \immediate[19]~output_o\;

ww_immediate(20) <= \immediate[20]~output_o\;

ww_immediate(21) <= \immediate[21]~output_o\;

ww_immediate(22) <= \immediate[22]~output_o\;

ww_immediate(23) <= \immediate[23]~output_o\;

ww_immediate(24) <= \immediate[24]~output_o\;

ww_immediate(25) <= \immediate[25]~output_o\;

ww_immediate(26) <= \immediate[26]~output_o\;

ww_immediate(27) <= \immediate[27]~output_o\;

ww_immediate(28) <= \immediate[28]~output_o\;

ww_immediate(29) <= \immediate[29]~output_o\;

ww_immediate(30) <= \immediate[30]~output_o\;

ww_immediate(31) <= \immediate[31]~output_o\;

ww_opcode(0) <= \opcode[0]~output_o\;

ww_opcode(1) <= \opcode[1]~output_o\;

ww_opcode(2) <= \opcode[2]~output_o\;

ww_opcode(3) <= \opcode[3]~output_o\;

ww_opcode(4) <= \opcode[4]~output_o\;

ww_opcode(5) <= \opcode[5]~output_o\;

ww_opcode(6) <= \opcode[6]~output_o\;

ww_funct7(0) <= \funct7[0]~output_o\;

ww_funct7(1) <= \funct7[1]~output_o\;

ww_funct7(2) <= \funct7[2]~output_o\;

ww_funct7(3) <= \funct7[3]~output_o\;

ww_funct7(4) <= \funct7[4]~output_o\;

ww_funct7(5) <= \funct7[5]~output_o\;

ww_funct7(6) <= \funct7[6]~output_o\;

ww_funct3(0) <= \funct3[0]~output_o\;

ww_funct3(1) <= \funct3[1]~output_o\;

ww_funct3(2) <= \funct3[2]~output_o\;
END structure;


