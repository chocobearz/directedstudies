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

-- DATE "03/03/2020 00:00:35"

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

ENTITY 	register_file IS
    PORT (
	data1 : BUFFER std_logic_vector(63 DOWNTO 0);
	data2 : BUFFER std_logic_vector(63 DOWNTO 0);
	writedata : IN std_logic_vector(63 DOWNTO 0);
	regwrite : IN std_logic;
	clk : IN std_logic;
	readreg1 : IN std_logic_vector(4 DOWNTO 0);
	readreg2 : IN std_logic_vector(4 DOWNTO 0);
	writereg : IN std_logic_vector(4 DOWNTO 0)
	);
END register_file;

-- Design Ports Information
-- data1[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[2]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[4]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[6]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[7]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[8]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[9]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[10]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[11]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[12]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[13]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[14]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[15]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[16]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[17]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[18]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[19]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[20]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[21]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[22]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[23]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[24]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[25]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[26]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[27]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[28]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[29]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[30]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[31]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[32]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[33]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[34]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[35]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[36]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[37]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[38]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[39]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[40]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[41]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[42]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[43]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[44]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[45]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[46]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[47]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[48]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[49]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[50]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[51]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[52]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[53]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[54]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[55]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[56]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[57]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[58]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[59]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[60]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[61]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[62]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[63]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[5]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[6]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[7]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[8]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[9]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[10]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[11]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[12]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[13]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[14]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[15]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[16]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[17]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[18]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[19]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[20]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[21]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[22]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[23]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[24]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[25]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[26]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[27]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[28]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[29]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[30]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[31]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[32]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[33]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[34]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[35]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[36]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[37]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[38]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[39]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[40]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[41]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[42]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[43]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[44]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[45]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[46]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[47]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[48]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[49]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[50]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[51]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[52]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[53]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[54]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[55]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[56]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[57]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[58]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[59]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[60]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[61]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[62]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[63]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- regwrite	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writereg[0]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writereg[1]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writereg[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writereg[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writereg[4]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readreg1[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readreg1[1]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readreg1[2]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readreg1[3]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readreg1[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[1]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[4]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[5]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[6]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[7]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[8]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[9]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[10]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[11]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[12]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[13]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[14]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[15]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[16]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[17]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[18]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[19]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[20]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[21]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[22]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[23]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[24]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[25]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[26]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[27]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[28]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[29]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[30]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[31]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[32]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[33]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[34]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[35]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[36]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[37]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[38]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[39]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[40]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[41]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[42]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[43]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[44]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[45]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[46]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[47]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[48]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[49]	=>  Location: PIN_Y28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[50]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[51]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[52]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[53]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[54]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[55]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[56]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[57]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[58]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[59]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[60]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[61]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[62]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[63]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readreg2[0]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readreg2[1]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readreg2[2]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readreg2[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readreg2[4]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF register_file IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data1 : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_data2 : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_writedata : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_regwrite : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_readreg1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_readreg2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_writereg : std_logic_vector(4 DOWNTO 0);
SIGNAL \registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \registers_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \registers_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \registers_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \registers_rtl_1|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \registers_rtl_1|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \registers_rtl_1|auto_generated|ram_block1a36_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data1[0]~output_o\ : std_logic;
SIGNAL \data1[1]~output_o\ : std_logic;
SIGNAL \data1[2]~output_o\ : std_logic;
SIGNAL \data1[3]~output_o\ : std_logic;
SIGNAL \data1[4]~output_o\ : std_logic;
SIGNAL \data1[5]~output_o\ : std_logic;
SIGNAL \data1[6]~output_o\ : std_logic;
SIGNAL \data1[7]~output_o\ : std_logic;
SIGNAL \data1[8]~output_o\ : std_logic;
SIGNAL \data1[9]~output_o\ : std_logic;
SIGNAL \data1[10]~output_o\ : std_logic;
SIGNAL \data1[11]~output_o\ : std_logic;
SIGNAL \data1[12]~output_o\ : std_logic;
SIGNAL \data1[13]~output_o\ : std_logic;
SIGNAL \data1[14]~output_o\ : std_logic;
SIGNAL \data1[15]~output_o\ : std_logic;
SIGNAL \data1[16]~output_o\ : std_logic;
SIGNAL \data1[17]~output_o\ : std_logic;
SIGNAL \data1[18]~output_o\ : std_logic;
SIGNAL \data1[19]~output_o\ : std_logic;
SIGNAL \data1[20]~output_o\ : std_logic;
SIGNAL \data1[21]~output_o\ : std_logic;
SIGNAL \data1[22]~output_o\ : std_logic;
SIGNAL \data1[23]~output_o\ : std_logic;
SIGNAL \data1[24]~output_o\ : std_logic;
SIGNAL \data1[25]~output_o\ : std_logic;
SIGNAL \data1[26]~output_o\ : std_logic;
SIGNAL \data1[27]~output_o\ : std_logic;
SIGNAL \data1[28]~output_o\ : std_logic;
SIGNAL \data1[29]~output_o\ : std_logic;
SIGNAL \data1[30]~output_o\ : std_logic;
SIGNAL \data1[31]~output_o\ : std_logic;
SIGNAL \data1[32]~output_o\ : std_logic;
SIGNAL \data1[33]~output_o\ : std_logic;
SIGNAL \data1[34]~output_o\ : std_logic;
SIGNAL \data1[35]~output_o\ : std_logic;
SIGNAL \data1[36]~output_o\ : std_logic;
SIGNAL \data1[37]~output_o\ : std_logic;
SIGNAL \data1[38]~output_o\ : std_logic;
SIGNAL \data1[39]~output_o\ : std_logic;
SIGNAL \data1[40]~output_o\ : std_logic;
SIGNAL \data1[41]~output_o\ : std_logic;
SIGNAL \data1[42]~output_o\ : std_logic;
SIGNAL \data1[43]~output_o\ : std_logic;
SIGNAL \data1[44]~output_o\ : std_logic;
SIGNAL \data1[45]~output_o\ : std_logic;
SIGNAL \data1[46]~output_o\ : std_logic;
SIGNAL \data1[47]~output_o\ : std_logic;
SIGNAL \data1[48]~output_o\ : std_logic;
SIGNAL \data1[49]~output_o\ : std_logic;
SIGNAL \data1[50]~output_o\ : std_logic;
SIGNAL \data1[51]~output_o\ : std_logic;
SIGNAL \data1[52]~output_o\ : std_logic;
SIGNAL \data1[53]~output_o\ : std_logic;
SIGNAL \data1[54]~output_o\ : std_logic;
SIGNAL \data1[55]~output_o\ : std_logic;
SIGNAL \data1[56]~output_o\ : std_logic;
SIGNAL \data1[57]~output_o\ : std_logic;
SIGNAL \data1[58]~output_o\ : std_logic;
SIGNAL \data1[59]~output_o\ : std_logic;
SIGNAL \data1[60]~output_o\ : std_logic;
SIGNAL \data1[61]~output_o\ : std_logic;
SIGNAL \data1[62]~output_o\ : std_logic;
SIGNAL \data1[63]~output_o\ : std_logic;
SIGNAL \data2[0]~output_o\ : std_logic;
SIGNAL \data2[1]~output_o\ : std_logic;
SIGNAL \data2[2]~output_o\ : std_logic;
SIGNAL \data2[3]~output_o\ : std_logic;
SIGNAL \data2[4]~output_o\ : std_logic;
SIGNAL \data2[5]~output_o\ : std_logic;
SIGNAL \data2[6]~output_o\ : std_logic;
SIGNAL \data2[7]~output_o\ : std_logic;
SIGNAL \data2[8]~output_o\ : std_logic;
SIGNAL \data2[9]~output_o\ : std_logic;
SIGNAL \data2[10]~output_o\ : std_logic;
SIGNAL \data2[11]~output_o\ : std_logic;
SIGNAL \data2[12]~output_o\ : std_logic;
SIGNAL \data2[13]~output_o\ : std_logic;
SIGNAL \data2[14]~output_o\ : std_logic;
SIGNAL \data2[15]~output_o\ : std_logic;
SIGNAL \data2[16]~output_o\ : std_logic;
SIGNAL \data2[17]~output_o\ : std_logic;
SIGNAL \data2[18]~output_o\ : std_logic;
SIGNAL \data2[19]~output_o\ : std_logic;
SIGNAL \data2[20]~output_o\ : std_logic;
SIGNAL \data2[21]~output_o\ : std_logic;
SIGNAL \data2[22]~output_o\ : std_logic;
SIGNAL \data2[23]~output_o\ : std_logic;
SIGNAL \data2[24]~output_o\ : std_logic;
SIGNAL \data2[25]~output_o\ : std_logic;
SIGNAL \data2[26]~output_o\ : std_logic;
SIGNAL \data2[27]~output_o\ : std_logic;
SIGNAL \data2[28]~output_o\ : std_logic;
SIGNAL \data2[29]~output_o\ : std_logic;
SIGNAL \data2[30]~output_o\ : std_logic;
SIGNAL \data2[31]~output_o\ : std_logic;
SIGNAL \data2[32]~output_o\ : std_logic;
SIGNAL \data2[33]~output_o\ : std_logic;
SIGNAL \data2[34]~output_o\ : std_logic;
SIGNAL \data2[35]~output_o\ : std_logic;
SIGNAL \data2[36]~output_o\ : std_logic;
SIGNAL \data2[37]~output_o\ : std_logic;
SIGNAL \data2[38]~output_o\ : std_logic;
SIGNAL \data2[39]~output_o\ : std_logic;
SIGNAL \data2[40]~output_o\ : std_logic;
SIGNAL \data2[41]~output_o\ : std_logic;
SIGNAL \data2[42]~output_o\ : std_logic;
SIGNAL \data2[43]~output_o\ : std_logic;
SIGNAL \data2[44]~output_o\ : std_logic;
SIGNAL \data2[45]~output_o\ : std_logic;
SIGNAL \data2[46]~output_o\ : std_logic;
SIGNAL \data2[47]~output_o\ : std_logic;
SIGNAL \data2[48]~output_o\ : std_logic;
SIGNAL \data2[49]~output_o\ : std_logic;
SIGNAL \data2[50]~output_o\ : std_logic;
SIGNAL \data2[51]~output_o\ : std_logic;
SIGNAL \data2[52]~output_o\ : std_logic;
SIGNAL \data2[53]~output_o\ : std_logic;
SIGNAL \data2[54]~output_o\ : std_logic;
SIGNAL \data2[55]~output_o\ : std_logic;
SIGNAL \data2[56]~output_o\ : std_logic;
SIGNAL \data2[57]~output_o\ : std_logic;
SIGNAL \data2[58]~output_o\ : std_logic;
SIGNAL \data2[59]~output_o\ : std_logic;
SIGNAL \data2[60]~output_o\ : std_logic;
SIGNAL \data2[61]~output_o\ : std_logic;
SIGNAL \data2[62]~output_o\ : std_logic;
SIGNAL \data2[63]~output_o\ : std_logic;
SIGNAL \regwrite~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \writedata[0]~input_o\ : std_logic;
SIGNAL \writereg[0]~input_o\ : std_logic;
SIGNAL \writereg[1]~input_o\ : std_logic;
SIGNAL \writereg[2]~input_o\ : std_logic;
SIGNAL \writereg[3]~input_o\ : std_logic;
SIGNAL \writereg[4]~input_o\ : std_logic;
SIGNAL \readreg1[0]~input_o\ : std_logic;
SIGNAL \readreg1[1]~input_o\ : std_logic;
SIGNAL \readreg1[2]~input_o\ : std_logic;
SIGNAL \readreg1[3]~input_o\ : std_logic;
SIGNAL \readreg1[4]~input_o\ : std_logic;
SIGNAL \writedata[1]~input_o\ : std_logic;
SIGNAL \writedata[2]~input_o\ : std_logic;
SIGNAL \writedata[3]~input_o\ : std_logic;
SIGNAL \writedata[4]~input_o\ : std_logic;
SIGNAL \writedata[5]~input_o\ : std_logic;
SIGNAL \writedata[6]~input_o\ : std_logic;
SIGNAL \writedata[7]~input_o\ : std_logic;
SIGNAL \writedata[8]~input_o\ : std_logic;
SIGNAL \writedata[9]~input_o\ : std_logic;
SIGNAL \writedata[10]~input_o\ : std_logic;
SIGNAL \writedata[11]~input_o\ : std_logic;
SIGNAL \writedata[12]~input_o\ : std_logic;
SIGNAL \writedata[13]~input_o\ : std_logic;
SIGNAL \writedata[14]~input_o\ : std_logic;
SIGNAL \writedata[15]~input_o\ : std_logic;
SIGNAL \writedata[16]~input_o\ : std_logic;
SIGNAL \writedata[17]~input_o\ : std_logic;
SIGNAL \writedata[18]~input_o\ : std_logic;
SIGNAL \writedata[19]~input_o\ : std_logic;
SIGNAL \writedata[20]~input_o\ : std_logic;
SIGNAL \writedata[21]~input_o\ : std_logic;
SIGNAL \writedata[22]~input_o\ : std_logic;
SIGNAL \writedata[23]~input_o\ : std_logic;
SIGNAL \writedata[24]~input_o\ : std_logic;
SIGNAL \writedata[25]~input_o\ : std_logic;
SIGNAL \writedata[26]~input_o\ : std_logic;
SIGNAL \writedata[27]~input_o\ : std_logic;
SIGNAL \writedata[28]~input_o\ : std_logic;
SIGNAL \writedata[29]~input_o\ : std_logic;
SIGNAL \writedata[30]~input_o\ : std_logic;
SIGNAL \writedata[31]~input_o\ : std_logic;
SIGNAL \writedata[32]~input_o\ : std_logic;
SIGNAL \writedata[33]~input_o\ : std_logic;
SIGNAL \writedata[34]~input_o\ : std_logic;
SIGNAL \writedata[35]~input_o\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a32\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a33\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a34\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a35\ : std_logic;
SIGNAL \writedata[36]~input_o\ : std_logic;
SIGNAL \writedata[37]~input_o\ : std_logic;
SIGNAL \writedata[38]~input_o\ : std_logic;
SIGNAL \writedata[39]~input_o\ : std_logic;
SIGNAL \writedata[40]~input_o\ : std_logic;
SIGNAL \writedata[41]~input_o\ : std_logic;
SIGNAL \writedata[42]~input_o\ : std_logic;
SIGNAL \writedata[43]~input_o\ : std_logic;
SIGNAL \writedata[44]~input_o\ : std_logic;
SIGNAL \writedata[45]~input_o\ : std_logic;
SIGNAL \writedata[46]~input_o\ : std_logic;
SIGNAL \writedata[47]~input_o\ : std_logic;
SIGNAL \writedata[48]~input_o\ : std_logic;
SIGNAL \writedata[49]~input_o\ : std_logic;
SIGNAL \writedata[50]~input_o\ : std_logic;
SIGNAL \writedata[51]~input_o\ : std_logic;
SIGNAL \writedata[52]~input_o\ : std_logic;
SIGNAL \writedata[53]~input_o\ : std_logic;
SIGNAL \writedata[54]~input_o\ : std_logic;
SIGNAL \writedata[55]~input_o\ : std_logic;
SIGNAL \writedata[56]~input_o\ : std_logic;
SIGNAL \writedata[57]~input_o\ : std_logic;
SIGNAL \writedata[58]~input_o\ : std_logic;
SIGNAL \writedata[59]~input_o\ : std_logic;
SIGNAL \writedata[60]~input_o\ : std_logic;
SIGNAL \writedata[61]~input_o\ : std_logic;
SIGNAL \writedata[62]~input_o\ : std_logic;
SIGNAL \writedata[63]~input_o\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a36~portbdataout\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a37\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a38\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a39\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a40\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a41\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a42\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a43\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a44\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a45\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a46\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a47\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a48\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a49\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a50\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a51\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a52\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a53\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a54\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a55\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a56\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a57\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a58\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a59\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a60\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a61\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a62\ : std_logic;
SIGNAL \registers_rtl_0|auto_generated|ram_block1a63\ : std_logic;
SIGNAL \readreg2[0]~input_o\ : std_logic;
SIGNAL \readreg2[1]~input_o\ : std_logic;
SIGNAL \readreg2[2]~input_o\ : std_logic;
SIGNAL \readreg2[3]~input_o\ : std_logic;
SIGNAL \readreg2[4]~input_o\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a32\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a33\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a34\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a35\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a36~portbdataout\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a37\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a38\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a39\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a40\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a41\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a42\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a43\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a44\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a45\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a46\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a47\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a48\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a49\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a50\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a51\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a52\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a53\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a54\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a55\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a56\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a57\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a58\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a59\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a60\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a61\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a62\ : std_logic;
SIGNAL \registers_rtl_1|auto_generated|ram_block1a63\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

data1 <= ww_data1;
data2 <= ww_data2;
ww_writedata <= writedata;
ww_regwrite <= regwrite;
ww_clk <= clk;
ww_readreg1 <= readreg1;
ww_readreg2 <= readreg2;
ww_writereg <= writereg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\writedata[35]~input_o\ & \writedata[34]~input_o\ & \writedata[33]~input_o\ & \writedata[32]~input_o\ & \writedata[31]~input_o\ & \writedata[30]~input_o\ & \writedata[29]~input_o\ & 
\writedata[28]~input_o\ & \writedata[27]~input_o\ & \writedata[26]~input_o\ & \writedata[25]~input_o\ & \writedata[24]~input_o\ & \writedata[23]~input_o\ & \writedata[22]~input_o\ & \writedata[21]~input_o\ & \writedata[20]~input_o\ & 
\writedata[19]~input_o\ & \writedata[18]~input_o\ & \writedata[17]~input_o\ & \writedata[16]~input_o\ & \writedata[15]~input_o\ & \writedata[14]~input_o\ & \writedata[13]~input_o\ & \writedata[12]~input_o\ & \writedata[11]~input_o\ & 
\writedata[10]~input_o\ & \writedata[9]~input_o\ & \writedata[8]~input_o\ & \writedata[7]~input_o\ & \writedata[6]~input_o\ & \writedata[5]~input_o\ & \writedata[4]~input_o\ & \writedata[3]~input_o\ & \writedata[2]~input_o\ & \writedata[1]~input_o\ & 
\writedata[0]~input_o\);

\registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\writereg[4]~input_o\ & \writereg[3]~input_o\ & \writereg[2]~input_o\ & \writereg[1]~input_o\ & \writereg[0]~input_o\);

\registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\readreg1[4]~input_o\ & \readreg1[3]~input_o\ & \readreg1[2]~input_o\ & \readreg1[1]~input_o\ & \readreg1[0]~input_o\);

\registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\registers_rtl_0|auto_generated|ram_block1a1\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\registers_rtl_0|auto_generated|ram_block1a2\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\registers_rtl_0|auto_generated|ram_block1a3\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\registers_rtl_0|auto_generated|ram_block1a4\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\registers_rtl_0|auto_generated|ram_block1a5\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\registers_rtl_0|auto_generated|ram_block1a6\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\registers_rtl_0|auto_generated|ram_block1a7\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\registers_rtl_0|auto_generated|ram_block1a8\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\registers_rtl_0|auto_generated|ram_block1a9\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\registers_rtl_0|auto_generated|ram_block1a10\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\registers_rtl_0|auto_generated|ram_block1a11\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\registers_rtl_0|auto_generated|ram_block1a12\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\registers_rtl_0|auto_generated|ram_block1a13\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\registers_rtl_0|auto_generated|ram_block1a14\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\registers_rtl_0|auto_generated|ram_block1a15\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\registers_rtl_0|auto_generated|ram_block1a16\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\registers_rtl_0|auto_generated|ram_block1a17\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\registers_rtl_0|auto_generated|ram_block1a18\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\registers_rtl_0|auto_generated|ram_block1a19\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\registers_rtl_0|auto_generated|ram_block1a20\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\registers_rtl_0|auto_generated|ram_block1a21\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\registers_rtl_0|auto_generated|ram_block1a22\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\registers_rtl_0|auto_generated|ram_block1a23\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\registers_rtl_0|auto_generated|ram_block1a24\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\registers_rtl_0|auto_generated|ram_block1a25\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\registers_rtl_0|auto_generated|ram_block1a26\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\registers_rtl_0|auto_generated|ram_block1a27\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\registers_rtl_0|auto_generated|ram_block1a28\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\registers_rtl_0|auto_generated|ram_block1a29\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\registers_rtl_0|auto_generated|ram_block1a30\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\registers_rtl_0|auto_generated|ram_block1a31\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);
\registers_rtl_0|auto_generated|ram_block1a32\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(32);
\registers_rtl_0|auto_generated|ram_block1a33\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(33);
\registers_rtl_0|auto_generated|ram_block1a34\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(34);
\registers_rtl_0|auto_generated|ram_block1a35\ <= \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(35);

\registers_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \writedata[63]~input_o\ & \writedata[62]~input_o\ & \writedata[61]~input_o\ & \writedata[60]~input_o\ & \writedata[59]~input_o\ & 
\writedata[58]~input_o\ & \writedata[57]~input_o\ & \writedata[56]~input_o\ & \writedata[55]~input_o\ & \writedata[54]~input_o\ & \writedata[53]~input_o\ & \writedata[52]~input_o\ & \writedata[51]~input_o\ & \writedata[50]~input_o\ & 
\writedata[49]~input_o\ & \writedata[48]~input_o\ & \writedata[47]~input_o\ & \writedata[46]~input_o\ & \writedata[45]~input_o\ & \writedata[44]~input_o\ & \writedata[43]~input_o\ & \writedata[42]~input_o\ & \writedata[41]~input_o\ & 
\writedata[40]~input_o\ & \writedata[39]~input_o\ & \writedata[38]~input_o\ & \writedata[37]~input_o\ & \writedata[36]~input_o\);

\registers_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\writereg[4]~input_o\ & \writereg[3]~input_o\ & \writereg[2]~input_o\ & \writereg[1]~input_o\ & \writereg[0]~input_o\);

\registers_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\ <= (\readreg1[4]~input_o\ & \readreg1[3]~input_o\ & \readreg1[2]~input_o\ & \readreg1[1]~input_o\ & \readreg1[0]~input_o\);

\registers_rtl_0|auto_generated|ram_block1a36~portbdataout\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(0);
\registers_rtl_0|auto_generated|ram_block1a37\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(1);
\registers_rtl_0|auto_generated|ram_block1a38\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(2);
\registers_rtl_0|auto_generated|ram_block1a39\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(3);
\registers_rtl_0|auto_generated|ram_block1a40\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(4);
\registers_rtl_0|auto_generated|ram_block1a41\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(5);
\registers_rtl_0|auto_generated|ram_block1a42\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(6);
\registers_rtl_0|auto_generated|ram_block1a43\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(7);
\registers_rtl_0|auto_generated|ram_block1a44\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(8);
\registers_rtl_0|auto_generated|ram_block1a45\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(9);
\registers_rtl_0|auto_generated|ram_block1a46\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(10);
\registers_rtl_0|auto_generated|ram_block1a47\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(11);
\registers_rtl_0|auto_generated|ram_block1a48\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(12);
\registers_rtl_0|auto_generated|ram_block1a49\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(13);
\registers_rtl_0|auto_generated|ram_block1a50\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(14);
\registers_rtl_0|auto_generated|ram_block1a51\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(15);
\registers_rtl_0|auto_generated|ram_block1a52\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(16);
\registers_rtl_0|auto_generated|ram_block1a53\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(17);
\registers_rtl_0|auto_generated|ram_block1a54\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(18);
\registers_rtl_0|auto_generated|ram_block1a55\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(19);
\registers_rtl_0|auto_generated|ram_block1a56\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(20);
\registers_rtl_0|auto_generated|ram_block1a57\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(21);
\registers_rtl_0|auto_generated|ram_block1a58\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(22);
\registers_rtl_0|auto_generated|ram_block1a59\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(23);
\registers_rtl_0|auto_generated|ram_block1a60\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(24);
\registers_rtl_0|auto_generated|ram_block1a61\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(25);
\registers_rtl_0|auto_generated|ram_block1a62\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(26);
\registers_rtl_0|auto_generated|ram_block1a63\ <= \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(27);

\registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\writedata[35]~input_o\ & \writedata[34]~input_o\ & \writedata[33]~input_o\ & \writedata[32]~input_o\ & \writedata[31]~input_o\ & \writedata[30]~input_o\ & \writedata[29]~input_o\ & 
\writedata[28]~input_o\ & \writedata[27]~input_o\ & \writedata[26]~input_o\ & \writedata[25]~input_o\ & \writedata[24]~input_o\ & \writedata[23]~input_o\ & \writedata[22]~input_o\ & \writedata[21]~input_o\ & \writedata[20]~input_o\ & 
\writedata[19]~input_o\ & \writedata[18]~input_o\ & \writedata[17]~input_o\ & \writedata[16]~input_o\ & \writedata[15]~input_o\ & \writedata[14]~input_o\ & \writedata[13]~input_o\ & \writedata[12]~input_o\ & \writedata[11]~input_o\ & 
\writedata[10]~input_o\ & \writedata[9]~input_o\ & \writedata[8]~input_o\ & \writedata[7]~input_o\ & \writedata[6]~input_o\ & \writedata[5]~input_o\ & \writedata[4]~input_o\ & \writedata[3]~input_o\ & \writedata[2]~input_o\ & \writedata[1]~input_o\ & 
\writedata[0]~input_o\);

\registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\writereg[4]~input_o\ & \writereg[3]~input_o\ & \writereg[2]~input_o\ & \writereg[1]~input_o\ & \writereg[0]~input_o\);

\registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\readreg2[4]~input_o\ & \readreg2[3]~input_o\ & \readreg2[2]~input_o\ & \readreg2[1]~input_o\ & \readreg2[0]~input_o\);

\registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\registers_rtl_1|auto_generated|ram_block1a1\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\registers_rtl_1|auto_generated|ram_block1a2\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\registers_rtl_1|auto_generated|ram_block1a3\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\registers_rtl_1|auto_generated|ram_block1a4\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\registers_rtl_1|auto_generated|ram_block1a5\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\registers_rtl_1|auto_generated|ram_block1a6\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\registers_rtl_1|auto_generated|ram_block1a7\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\registers_rtl_1|auto_generated|ram_block1a8\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\registers_rtl_1|auto_generated|ram_block1a9\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\registers_rtl_1|auto_generated|ram_block1a10\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\registers_rtl_1|auto_generated|ram_block1a11\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\registers_rtl_1|auto_generated|ram_block1a12\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\registers_rtl_1|auto_generated|ram_block1a13\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\registers_rtl_1|auto_generated|ram_block1a14\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\registers_rtl_1|auto_generated|ram_block1a15\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\registers_rtl_1|auto_generated|ram_block1a16\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\registers_rtl_1|auto_generated|ram_block1a17\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\registers_rtl_1|auto_generated|ram_block1a18\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\registers_rtl_1|auto_generated|ram_block1a19\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\registers_rtl_1|auto_generated|ram_block1a20\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\registers_rtl_1|auto_generated|ram_block1a21\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\registers_rtl_1|auto_generated|ram_block1a22\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\registers_rtl_1|auto_generated|ram_block1a23\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\registers_rtl_1|auto_generated|ram_block1a24\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\registers_rtl_1|auto_generated|ram_block1a25\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\registers_rtl_1|auto_generated|ram_block1a26\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\registers_rtl_1|auto_generated|ram_block1a27\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\registers_rtl_1|auto_generated|ram_block1a28\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\registers_rtl_1|auto_generated|ram_block1a29\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\registers_rtl_1|auto_generated|ram_block1a30\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\registers_rtl_1|auto_generated|ram_block1a31\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);
\registers_rtl_1|auto_generated|ram_block1a32\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(32);
\registers_rtl_1|auto_generated|ram_block1a33\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(33);
\registers_rtl_1|auto_generated|ram_block1a34\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(34);
\registers_rtl_1|auto_generated|ram_block1a35\ <= \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(35);

\registers_rtl_1|auto_generated|ram_block1a36_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \writedata[63]~input_o\ & \writedata[62]~input_o\ & \writedata[61]~input_o\ & \writedata[60]~input_o\ & \writedata[59]~input_o\ & 
\writedata[58]~input_o\ & \writedata[57]~input_o\ & \writedata[56]~input_o\ & \writedata[55]~input_o\ & \writedata[54]~input_o\ & \writedata[53]~input_o\ & \writedata[52]~input_o\ & \writedata[51]~input_o\ & \writedata[50]~input_o\ & 
\writedata[49]~input_o\ & \writedata[48]~input_o\ & \writedata[47]~input_o\ & \writedata[46]~input_o\ & \writedata[45]~input_o\ & \writedata[44]~input_o\ & \writedata[43]~input_o\ & \writedata[42]~input_o\ & \writedata[41]~input_o\ & 
\writedata[40]~input_o\ & \writedata[39]~input_o\ & \writedata[38]~input_o\ & \writedata[37]~input_o\ & \writedata[36]~input_o\);

\registers_rtl_1|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\writereg[4]~input_o\ & \writereg[3]~input_o\ & \writereg[2]~input_o\ & \writereg[1]~input_o\ & \writereg[0]~input_o\);

\registers_rtl_1|auto_generated|ram_block1a36_PORTBADDR_bus\ <= (\readreg2[4]~input_o\ & \readreg2[3]~input_o\ & \readreg2[2]~input_o\ & \readreg2[1]~input_o\ & \readreg2[0]~input_o\);

\registers_rtl_1|auto_generated|ram_block1a36~portbdataout\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(0);
\registers_rtl_1|auto_generated|ram_block1a37\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(1);
\registers_rtl_1|auto_generated|ram_block1a38\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(2);
\registers_rtl_1|auto_generated|ram_block1a39\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(3);
\registers_rtl_1|auto_generated|ram_block1a40\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(4);
\registers_rtl_1|auto_generated|ram_block1a41\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(5);
\registers_rtl_1|auto_generated|ram_block1a42\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(6);
\registers_rtl_1|auto_generated|ram_block1a43\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(7);
\registers_rtl_1|auto_generated|ram_block1a44\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(8);
\registers_rtl_1|auto_generated|ram_block1a45\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(9);
\registers_rtl_1|auto_generated|ram_block1a46\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(10);
\registers_rtl_1|auto_generated|ram_block1a47\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(11);
\registers_rtl_1|auto_generated|ram_block1a48\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(12);
\registers_rtl_1|auto_generated|ram_block1a49\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(13);
\registers_rtl_1|auto_generated|ram_block1a50\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(14);
\registers_rtl_1|auto_generated|ram_block1a51\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(15);
\registers_rtl_1|auto_generated|ram_block1a52\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(16);
\registers_rtl_1|auto_generated|ram_block1a53\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(17);
\registers_rtl_1|auto_generated|ram_block1a54\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(18);
\registers_rtl_1|auto_generated|ram_block1a55\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(19);
\registers_rtl_1|auto_generated|ram_block1a56\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(20);
\registers_rtl_1|auto_generated|ram_block1a57\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(21);
\registers_rtl_1|auto_generated|ram_block1a58\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(22);
\registers_rtl_1|auto_generated|ram_block1a59\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(23);
\registers_rtl_1|auto_generated|ram_block1a60\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(24);
\registers_rtl_1|auto_generated|ram_block1a61\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(25);
\registers_rtl_1|auto_generated|ram_block1a62\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(26);
\registers_rtl_1|auto_generated|ram_block1a63\ <= \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\(27);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X52_Y73_N2
\data1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \data1[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\data1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \data1[1]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\data1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \data1[2]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\data1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \data1[3]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\data1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \data1[4]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\data1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \data1[5]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\data1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \data1[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\data1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \data1[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\data1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => \data1[8]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\data1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \data1[9]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\data1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \data1[10]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\data1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \data1[11]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\data1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => \data1[12]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\data1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => \data1[13]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\data1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => \data1[14]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\data1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => \data1[15]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\data1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a16\,
	devoe => ww_devoe,
	o => \data1[16]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\data1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a17\,
	devoe => ww_devoe,
	o => \data1[17]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\data1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a18\,
	devoe => ww_devoe,
	o => \data1[18]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\data1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a19\,
	devoe => ww_devoe,
	o => \data1[19]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\data1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a20\,
	devoe => ww_devoe,
	o => \data1[20]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\data1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a21\,
	devoe => ww_devoe,
	o => \data1[21]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\data1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a22\,
	devoe => ww_devoe,
	o => \data1[22]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\data1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a23\,
	devoe => ww_devoe,
	o => \data1[23]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\data1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a24\,
	devoe => ww_devoe,
	o => \data1[24]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\data1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a25\,
	devoe => ww_devoe,
	o => \data1[25]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\data1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a26\,
	devoe => ww_devoe,
	o => \data1[26]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\data1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a27\,
	devoe => ww_devoe,
	o => \data1[27]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\data1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a28\,
	devoe => ww_devoe,
	o => \data1[28]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\data1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a29\,
	devoe => ww_devoe,
	o => \data1[29]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\data1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a30\,
	devoe => ww_devoe,
	o => \data1[30]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\data1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a31\,
	devoe => ww_devoe,
	o => \data1[31]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\data1[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a32\,
	devoe => ww_devoe,
	o => \data1[32]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\data1[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a33\,
	devoe => ww_devoe,
	o => \data1[33]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\data1[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a34\,
	devoe => ww_devoe,
	o => \data1[34]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\data1[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a35\,
	devoe => ww_devoe,
	o => \data1[35]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\data1[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a36~portbdataout\,
	devoe => ww_devoe,
	o => \data1[36]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\data1[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a37\,
	devoe => ww_devoe,
	o => \data1[37]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\data1[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a38\,
	devoe => ww_devoe,
	o => \data1[38]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\data1[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a39\,
	devoe => ww_devoe,
	o => \data1[39]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\data1[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a40\,
	devoe => ww_devoe,
	o => \data1[40]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\data1[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a41\,
	devoe => ww_devoe,
	o => \data1[41]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\data1[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a42\,
	devoe => ww_devoe,
	o => \data1[42]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\data1[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a43\,
	devoe => ww_devoe,
	o => \data1[43]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\data1[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a44\,
	devoe => ww_devoe,
	o => \data1[44]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\data1[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a45\,
	devoe => ww_devoe,
	o => \data1[45]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\data1[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a46\,
	devoe => ww_devoe,
	o => \data1[46]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\data1[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a47\,
	devoe => ww_devoe,
	o => \data1[47]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\data1[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a48\,
	devoe => ww_devoe,
	o => \data1[48]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\data1[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a49\,
	devoe => ww_devoe,
	o => \data1[49]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\data1[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a50\,
	devoe => ww_devoe,
	o => \data1[50]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\data1[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a51\,
	devoe => ww_devoe,
	o => \data1[51]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\data1[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a52\,
	devoe => ww_devoe,
	o => \data1[52]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\data1[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a53\,
	devoe => ww_devoe,
	o => \data1[53]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\data1[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a54\,
	devoe => ww_devoe,
	o => \data1[54]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\data1[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a55\,
	devoe => ww_devoe,
	o => \data1[55]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\data1[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a56\,
	devoe => ww_devoe,
	o => \data1[56]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\data1[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a57\,
	devoe => ww_devoe,
	o => \data1[57]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\data1[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a58\,
	devoe => ww_devoe,
	o => \data1[58]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\data1[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a59\,
	devoe => ww_devoe,
	o => \data1[59]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\data1[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a60\,
	devoe => ww_devoe,
	o => \data1[60]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\data1[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a61\,
	devoe => ww_devoe,
	o => \data1[61]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\data1[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a62\,
	devoe => ww_devoe,
	o => \data1[62]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\data1[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_0|auto_generated|ram_block1a63\,
	devoe => ww_devoe,
	o => \data1[63]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\data2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \data2[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\data2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \data2[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\data2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \data2[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\data2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \data2[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\data2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \data2[4]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\data2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \data2[5]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\data2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \data2[6]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\data2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \data2[7]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\data2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => \data2[8]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\data2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \data2[9]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\data2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \data2[10]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\data2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \data2[11]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\data2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => \data2[12]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\data2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => \data2[13]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\data2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => \data2[14]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\data2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => \data2[15]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\data2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a16\,
	devoe => ww_devoe,
	o => \data2[16]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\data2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a17\,
	devoe => ww_devoe,
	o => \data2[17]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\data2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a18\,
	devoe => ww_devoe,
	o => \data2[18]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\data2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a19\,
	devoe => ww_devoe,
	o => \data2[19]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\data2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a20\,
	devoe => ww_devoe,
	o => \data2[20]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\data2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a21\,
	devoe => ww_devoe,
	o => \data2[21]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\data2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a22\,
	devoe => ww_devoe,
	o => \data2[22]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\data2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a23\,
	devoe => ww_devoe,
	o => \data2[23]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\data2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a24\,
	devoe => ww_devoe,
	o => \data2[24]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\data2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a25\,
	devoe => ww_devoe,
	o => \data2[25]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\data2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a26\,
	devoe => ww_devoe,
	o => \data2[26]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\data2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a27\,
	devoe => ww_devoe,
	o => \data2[27]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\data2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a28\,
	devoe => ww_devoe,
	o => \data2[28]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\data2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a29\,
	devoe => ww_devoe,
	o => \data2[29]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\data2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a30\,
	devoe => ww_devoe,
	o => \data2[30]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\data2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a31\,
	devoe => ww_devoe,
	o => \data2[31]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\data2[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a32\,
	devoe => ww_devoe,
	o => \data2[32]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\data2[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a33\,
	devoe => ww_devoe,
	o => \data2[33]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\data2[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a34\,
	devoe => ww_devoe,
	o => \data2[34]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\data2[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a35\,
	devoe => ww_devoe,
	o => \data2[35]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\data2[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a36~portbdataout\,
	devoe => ww_devoe,
	o => \data2[36]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\data2[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a37\,
	devoe => ww_devoe,
	o => \data2[37]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\data2[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a38\,
	devoe => ww_devoe,
	o => \data2[38]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\data2[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a39\,
	devoe => ww_devoe,
	o => \data2[39]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\data2[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a40\,
	devoe => ww_devoe,
	o => \data2[40]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\data2[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a41\,
	devoe => ww_devoe,
	o => \data2[41]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\data2[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a42\,
	devoe => ww_devoe,
	o => \data2[42]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\data2[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a43\,
	devoe => ww_devoe,
	o => \data2[43]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\data2[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a44\,
	devoe => ww_devoe,
	o => \data2[44]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\data2[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a45\,
	devoe => ww_devoe,
	o => \data2[45]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\data2[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a46\,
	devoe => ww_devoe,
	o => \data2[46]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\data2[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a47\,
	devoe => ww_devoe,
	o => \data2[47]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\data2[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a48\,
	devoe => ww_devoe,
	o => \data2[48]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\data2[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a49\,
	devoe => ww_devoe,
	o => \data2[49]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\data2[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a50\,
	devoe => ww_devoe,
	o => \data2[50]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\data2[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a51\,
	devoe => ww_devoe,
	o => \data2[51]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\data2[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a52\,
	devoe => ww_devoe,
	o => \data2[52]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\data2[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a53\,
	devoe => ww_devoe,
	o => \data2[53]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\data2[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a54\,
	devoe => ww_devoe,
	o => \data2[54]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\data2[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a55\,
	devoe => ww_devoe,
	o => \data2[55]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\data2[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a56\,
	devoe => ww_devoe,
	o => \data2[56]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\data2[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a57\,
	devoe => ww_devoe,
	o => \data2[57]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\data2[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a58\,
	devoe => ww_devoe,
	o => \data2[58]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\data2[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a59\,
	devoe => ww_devoe,
	o => \data2[59]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\data2[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a60\,
	devoe => ww_devoe,
	o => \data2[60]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\data2[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a61\,
	devoe => ww_devoe,
	o => \data2[61]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\data2[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a62\,
	devoe => ww_devoe,
	o => \data2[62]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\data2[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registers_rtl_1|auto_generated|ram_block1a63\,
	devoe => ww_devoe,
	o => \data2[63]~output_o\);

-- Location: IOIBUF_X81_Y73_N1
\regwrite~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_regwrite,
	o => \regwrite~input_o\);

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

-- Location: IOIBUF_X79_Y73_N1
\writedata[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(0),
	o => \writedata[0]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\writereg[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writereg(0),
	o => \writereg[0]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\writereg[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writereg(1),
	o => \writereg[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\writereg[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writereg(2),
	o => \writereg[2]~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\writereg[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writereg(3),
	o => \writereg[3]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\writereg[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writereg(4),
	o => \writereg[4]~input_o\);

-- Location: IOIBUF_X89_Y0_N22
\readreg1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readreg1(0),
	o => \readreg1[0]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\readreg1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readreg1(1),
	o => \readreg1[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\readreg1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readreg1(2),
	o => \readreg1[2]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\readreg1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readreg1(3),
	o => \readreg1[3]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\readreg1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readreg1(4),
	o => \readreg1[4]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\writedata[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(1),
	o => \writedata[1]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\writedata[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(2),
	o => \writedata[2]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\writedata[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(3),
	o => \writedata[3]~input_o\);

-- Location: IOIBUF_X105_Y73_N8
\writedata[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(4),
	o => \writedata[4]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\writedata[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(5),
	o => \writedata[5]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\writedata[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(6),
	o => \writedata[6]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\writedata[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(7),
	o => \writedata[7]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\writedata[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(8),
	o => \writedata[8]~input_o\);

-- Location: IOIBUF_X25_Y73_N15
\writedata[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(9),
	o => \writedata[9]~input_o\);

-- Location: IOIBUF_X94_Y73_N8
\writedata[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(10),
	o => \writedata[10]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\writedata[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(11),
	o => \writedata[11]~input_o\);

-- Location: IOIBUF_X102_Y73_N1
\writedata[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(12),
	o => \writedata[12]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\writedata[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(13),
	o => \writedata[13]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\writedata[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(14),
	o => \writedata[14]~input_o\);

-- Location: IOIBUF_X111_Y73_N8
\writedata[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(15),
	o => \writedata[15]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\writedata[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(16),
	o => \writedata[16]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\writedata[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(17),
	o => \writedata[17]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\writedata[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(18),
	o => \writedata[18]~input_o\);

-- Location: IOIBUF_X89_Y73_N22
\writedata[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(19),
	o => \writedata[19]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\writedata[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(20),
	o => \writedata[20]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\writedata[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(21),
	o => \writedata[21]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\writedata[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(22),
	o => \writedata[22]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\writedata[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(23),
	o => \writedata[23]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\writedata[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(24),
	o => \writedata[24]~input_o\);

-- Location: IOIBUF_X107_Y73_N8
\writedata[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(25),
	o => \writedata[25]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\writedata[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(26),
	o => \writedata[26]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\writedata[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(27),
	o => \writedata[27]~input_o\);

-- Location: IOIBUF_X23_Y73_N8
\writedata[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(28),
	o => \writedata[28]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\writedata[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(29),
	o => \writedata[29]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\writedata[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(30),
	o => \writedata[30]~input_o\);

-- Location: IOIBUF_X105_Y73_N1
\writedata[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(31),
	o => \writedata[31]~input_o\);

-- Location: IOIBUF_X107_Y73_N15
\writedata[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(32),
	o => \writedata[32]~input_o\);

-- Location: IOIBUF_X18_Y73_N15
\writedata[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(33),
	o => \writedata[33]~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\writedata[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(34),
	o => \writedata[34]~input_o\);

-- Location: IOIBUF_X107_Y73_N1
\writedata[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(35),
	o => \writedata[35]~input_o\);

-- Location: M9K_X64_Y70_N0
\registers_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:registers_rtl_0|altsyncram_osg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 64,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 64,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \regwrite~input_o\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X81_Y0_N15
\writedata[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(36),
	o => \writedata[36]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\writedata[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(37),
	o => \writedata[37]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\writedata[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(38),
	o => \writedata[38]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\writedata[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(39),
	o => \writedata[39]~input_o\);

-- Location: IOIBUF_X89_Y0_N8
\writedata[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(40),
	o => \writedata[40]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\writedata[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(41),
	o => \writedata[41]~input_o\);

-- Location: IOIBUF_X67_Y0_N8
\writedata[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(42),
	o => \writedata[42]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\writedata[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(43),
	o => \writedata[43]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\writedata[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(44),
	o => \writedata[44]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\writedata[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(45),
	o => \writedata[45]~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\writedata[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(46),
	o => \writedata[46]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\writedata[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(47),
	o => \writedata[47]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\writedata[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(48),
	o => \writedata[48]~input_o\);

-- Location: IOIBUF_X115_Y37_N22
\writedata[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(49),
	o => \writedata[49]~input_o\);

-- Location: IOIBUF_X115_Y37_N15
\writedata[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(50),
	o => \writedata[50]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\writedata[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(51),
	o => \writedata[51]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\writedata[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(52),
	o => \writedata[52]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\writedata[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(53),
	o => \writedata[53]~input_o\);

-- Location: IOIBUF_X115_Y37_N8
\writedata[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(54),
	o => \writedata[54]~input_o\);

-- Location: IOIBUF_X115_Y37_N1
\writedata[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(55),
	o => \writedata[55]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\writedata[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(56),
	o => \writedata[56]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\writedata[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(57),
	o => \writedata[57]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\writedata[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(58),
	o => \writedata[58]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\writedata[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(59),
	o => \writedata[59]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\writedata[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(60),
	o => \writedata[60]~input_o\);

-- Location: IOIBUF_X89_Y0_N15
\writedata[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(61),
	o => \writedata[61]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\writedata[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(62),
	o => \writedata[62]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\writedata[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(63),
	o => \writedata[63]~input_o\);

-- Location: M9K_X64_Y4_N0
\registers_rtl_0|auto_generated|ram_block1a36\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:registers_rtl_0|altsyncram_osg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 36,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 64,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 36,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 64,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \regwrite~input_o\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \registers_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \registers_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\,
	portbaddr => \registers_rtl_0|auto_generated|ram_block1a36_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \registers_rtl_0|auto_generated|ram_block1a36_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X96_Y0_N1
\readreg2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readreg2(0),
	o => \readreg2[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\readreg2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readreg2(1),
	o => \readreg2[1]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\readreg2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readreg2(2),
	o => \readreg2[2]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\readreg2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readreg2(3),
	o => \readreg2[3]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\readreg2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readreg2(4),
	o => \readreg2[4]~input_o\);

-- Location: M9K_X64_Y69_N0
\registers_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:registers_rtl_1|altsyncram_osg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 64,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 64,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \regwrite~input_o\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y3_N0
\registers_rtl_1|auto_generated|ram_block1a36\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:registers_rtl_1|altsyncram_osg1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 36,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 64,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 36,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 64,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \regwrite~input_o\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \registers_rtl_1|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \registers_rtl_1|auto_generated|ram_block1a36_PORTAADDR_bus\,
	portbaddr => \registers_rtl_1|auto_generated|ram_block1a36_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \registers_rtl_1|auto_generated|ram_block1a36_PORTBDATAOUT_bus\);

ww_data1(0) <= \data1[0]~output_o\;

ww_data1(1) <= \data1[1]~output_o\;

ww_data1(2) <= \data1[2]~output_o\;

ww_data1(3) <= \data1[3]~output_o\;

ww_data1(4) <= \data1[4]~output_o\;

ww_data1(5) <= \data1[5]~output_o\;

ww_data1(6) <= \data1[6]~output_o\;

ww_data1(7) <= \data1[7]~output_o\;

ww_data1(8) <= \data1[8]~output_o\;

ww_data1(9) <= \data1[9]~output_o\;

ww_data1(10) <= \data1[10]~output_o\;

ww_data1(11) <= \data1[11]~output_o\;

ww_data1(12) <= \data1[12]~output_o\;

ww_data1(13) <= \data1[13]~output_o\;

ww_data1(14) <= \data1[14]~output_o\;

ww_data1(15) <= \data1[15]~output_o\;

ww_data1(16) <= \data1[16]~output_o\;

ww_data1(17) <= \data1[17]~output_o\;

ww_data1(18) <= \data1[18]~output_o\;

ww_data1(19) <= \data1[19]~output_o\;

ww_data1(20) <= \data1[20]~output_o\;

ww_data1(21) <= \data1[21]~output_o\;

ww_data1(22) <= \data1[22]~output_o\;

ww_data1(23) <= \data1[23]~output_o\;

ww_data1(24) <= \data1[24]~output_o\;

ww_data1(25) <= \data1[25]~output_o\;

ww_data1(26) <= \data1[26]~output_o\;

ww_data1(27) <= \data1[27]~output_o\;

ww_data1(28) <= \data1[28]~output_o\;

ww_data1(29) <= \data1[29]~output_o\;

ww_data1(30) <= \data1[30]~output_o\;

ww_data1(31) <= \data1[31]~output_o\;

ww_data1(32) <= \data1[32]~output_o\;

ww_data1(33) <= \data1[33]~output_o\;

ww_data1(34) <= \data1[34]~output_o\;

ww_data1(35) <= \data1[35]~output_o\;

ww_data1(36) <= \data1[36]~output_o\;

ww_data1(37) <= \data1[37]~output_o\;

ww_data1(38) <= \data1[38]~output_o\;

ww_data1(39) <= \data1[39]~output_o\;

ww_data1(40) <= \data1[40]~output_o\;

ww_data1(41) <= \data1[41]~output_o\;

ww_data1(42) <= \data1[42]~output_o\;

ww_data1(43) <= \data1[43]~output_o\;

ww_data1(44) <= \data1[44]~output_o\;

ww_data1(45) <= \data1[45]~output_o\;

ww_data1(46) <= \data1[46]~output_o\;

ww_data1(47) <= \data1[47]~output_o\;

ww_data1(48) <= \data1[48]~output_o\;

ww_data1(49) <= \data1[49]~output_o\;

ww_data1(50) <= \data1[50]~output_o\;

ww_data1(51) <= \data1[51]~output_o\;

ww_data1(52) <= \data1[52]~output_o\;

ww_data1(53) <= \data1[53]~output_o\;

ww_data1(54) <= \data1[54]~output_o\;

ww_data1(55) <= \data1[55]~output_o\;

ww_data1(56) <= \data1[56]~output_o\;

ww_data1(57) <= \data1[57]~output_o\;

ww_data1(58) <= \data1[58]~output_o\;

ww_data1(59) <= \data1[59]~output_o\;

ww_data1(60) <= \data1[60]~output_o\;

ww_data1(61) <= \data1[61]~output_o\;

ww_data1(62) <= \data1[62]~output_o\;

ww_data1(63) <= \data1[63]~output_o\;

ww_data2(0) <= \data2[0]~output_o\;

ww_data2(1) <= \data2[1]~output_o\;

ww_data2(2) <= \data2[2]~output_o\;

ww_data2(3) <= \data2[3]~output_o\;

ww_data2(4) <= \data2[4]~output_o\;

ww_data2(5) <= \data2[5]~output_o\;

ww_data2(6) <= \data2[6]~output_o\;

ww_data2(7) <= \data2[7]~output_o\;

ww_data2(8) <= \data2[8]~output_o\;

ww_data2(9) <= \data2[9]~output_o\;

ww_data2(10) <= \data2[10]~output_o\;

ww_data2(11) <= \data2[11]~output_o\;

ww_data2(12) <= \data2[12]~output_o\;

ww_data2(13) <= \data2[13]~output_o\;

ww_data2(14) <= \data2[14]~output_o\;

ww_data2(15) <= \data2[15]~output_o\;

ww_data2(16) <= \data2[16]~output_o\;

ww_data2(17) <= \data2[17]~output_o\;

ww_data2(18) <= \data2[18]~output_o\;

ww_data2(19) <= \data2[19]~output_o\;

ww_data2(20) <= \data2[20]~output_o\;

ww_data2(21) <= \data2[21]~output_o\;

ww_data2(22) <= \data2[22]~output_o\;

ww_data2(23) <= \data2[23]~output_o\;

ww_data2(24) <= \data2[24]~output_o\;

ww_data2(25) <= \data2[25]~output_o\;

ww_data2(26) <= \data2[26]~output_o\;

ww_data2(27) <= \data2[27]~output_o\;

ww_data2(28) <= \data2[28]~output_o\;

ww_data2(29) <= \data2[29]~output_o\;

ww_data2(30) <= \data2[30]~output_o\;

ww_data2(31) <= \data2[31]~output_o\;

ww_data2(32) <= \data2[32]~output_o\;

ww_data2(33) <= \data2[33]~output_o\;

ww_data2(34) <= \data2[34]~output_o\;

ww_data2(35) <= \data2[35]~output_o\;

ww_data2(36) <= \data2[36]~output_o\;

ww_data2(37) <= \data2[37]~output_o\;

ww_data2(38) <= \data2[38]~output_o\;

ww_data2(39) <= \data2[39]~output_o\;

ww_data2(40) <= \data2[40]~output_o\;

ww_data2(41) <= \data2[41]~output_o\;

ww_data2(42) <= \data2[42]~output_o\;

ww_data2(43) <= \data2[43]~output_o\;

ww_data2(44) <= \data2[44]~output_o\;

ww_data2(45) <= \data2[45]~output_o\;

ww_data2(46) <= \data2[46]~output_o\;

ww_data2(47) <= \data2[47]~output_o\;

ww_data2(48) <= \data2[48]~output_o\;

ww_data2(49) <= \data2[49]~output_o\;

ww_data2(50) <= \data2[50]~output_o\;

ww_data2(51) <= \data2[51]~output_o\;

ww_data2(52) <= \data2[52]~output_o\;

ww_data2(53) <= \data2[53]~output_o\;

ww_data2(54) <= \data2[54]~output_o\;

ww_data2(55) <= \data2[55]~output_o\;

ww_data2(56) <= \data2[56]~output_o\;

ww_data2(57) <= \data2[57]~output_o\;

ww_data2(58) <= \data2[58]~output_o\;

ww_data2(59) <= \data2[59]~output_o\;

ww_data2(60) <= \data2[60]~output_o\;

ww_data2(61) <= \data2[61]~output_o\;

ww_data2(62) <= \data2[62]~output_o\;

ww_data2(63) <= \data2[63]~output_o\;
END structure;


