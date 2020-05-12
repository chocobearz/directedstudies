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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/28/2020 15:09:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ALU_branch
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ALU_branch_vhd_vec_tst IS
END ALU_branch_vhd_vec_tst;
ARCHITECTURE ALU_branch_arch OF ALU_branch_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL inputA : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL inputB : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL opcode : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL result : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL z : STD_LOGIC;
COMPONENT ALU_branch
	PORT (
	c : OUT STD_LOGIC;
	clr : IN STD_LOGIC;
	inputA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	inputB : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	result : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
	z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ALU_branch
	PORT MAP (
-- list connections between master ports and signals
	c => c,
	clr => clr,
	inputA => inputA,
	inputB => inputB,
	opcode => opcode,
	result => result,
	z => z
	);

-- clr
t_prcs_clr: PROCESS
BEGIN
	clr <= '1';
	WAIT FOR 40000 ps;
	clr <= '0';
WAIT;
END PROCESS t_prcs_clr;
-- inputA[63]
t_prcs_inputA_63: PROCESS
BEGIN
	inputA(63) <= '0';
WAIT;
END PROCESS t_prcs_inputA_63;
-- inputA[62]
t_prcs_inputA_62: PROCESS
BEGIN
	inputA(62) <= '0';
WAIT;
END PROCESS t_prcs_inputA_62;
-- inputA[61]
t_prcs_inputA_61: PROCESS
BEGIN
	inputA(61) <= '0';
WAIT;
END PROCESS t_prcs_inputA_61;
-- inputA[60]
t_prcs_inputA_60: PROCESS
BEGIN
	inputA(60) <= '0';
WAIT;
END PROCESS t_prcs_inputA_60;
-- inputA[59]
t_prcs_inputA_59: PROCESS
BEGIN
	inputA(59) <= '0';
WAIT;
END PROCESS t_prcs_inputA_59;
-- inputA[58]
t_prcs_inputA_58: PROCESS
BEGIN
	inputA(58) <= '0';
WAIT;
END PROCESS t_prcs_inputA_58;
-- inputA[57]
t_prcs_inputA_57: PROCESS
BEGIN
	inputA(57) <= '0';
WAIT;
END PROCESS t_prcs_inputA_57;
-- inputA[56]
t_prcs_inputA_56: PROCESS
BEGIN
	inputA(56) <= '0';
WAIT;
END PROCESS t_prcs_inputA_56;
-- inputA[55]
t_prcs_inputA_55: PROCESS
BEGIN
	inputA(55) <= '0';
WAIT;
END PROCESS t_prcs_inputA_55;
-- inputA[54]
t_prcs_inputA_54: PROCESS
BEGIN
	inputA(54) <= '0';
WAIT;
END PROCESS t_prcs_inputA_54;
-- inputA[53]
t_prcs_inputA_53: PROCESS
BEGIN
	inputA(53) <= '0';
WAIT;
END PROCESS t_prcs_inputA_53;
-- inputA[52]
t_prcs_inputA_52: PROCESS
BEGIN
	inputA(52) <= '0';
WAIT;
END PROCESS t_prcs_inputA_52;
-- inputA[51]
t_prcs_inputA_51: PROCESS
BEGIN
	inputA(51) <= '0';
WAIT;
END PROCESS t_prcs_inputA_51;
-- inputA[50]
t_prcs_inputA_50: PROCESS
BEGIN
	inputA(50) <= '0';
WAIT;
END PROCESS t_prcs_inputA_50;
-- inputA[49]
t_prcs_inputA_49: PROCESS
BEGIN
	inputA(49) <= '0';
WAIT;
END PROCESS t_prcs_inputA_49;
-- inputA[48]
t_prcs_inputA_48: PROCESS
BEGIN
	inputA(48) <= '0';
WAIT;
END PROCESS t_prcs_inputA_48;
-- inputA[47]
t_prcs_inputA_47: PROCESS
BEGIN
	inputA(47) <= '0';
WAIT;
END PROCESS t_prcs_inputA_47;
-- inputA[46]
t_prcs_inputA_46: PROCESS
BEGIN
	inputA(46) <= '0';
WAIT;
END PROCESS t_prcs_inputA_46;
-- inputA[45]
t_prcs_inputA_45: PROCESS
BEGIN
	inputA(45) <= '0';
WAIT;
END PROCESS t_prcs_inputA_45;
-- inputA[44]
t_prcs_inputA_44: PROCESS
BEGIN
	inputA(44) <= '0';
WAIT;
END PROCESS t_prcs_inputA_44;
-- inputA[43]
t_prcs_inputA_43: PROCESS
BEGIN
	inputA(43) <= '0';
WAIT;
END PROCESS t_prcs_inputA_43;
-- inputA[42]
t_prcs_inputA_42: PROCESS
BEGIN
	inputA(42) <= '0';
WAIT;
END PROCESS t_prcs_inputA_42;
-- inputA[41]
t_prcs_inputA_41: PROCESS
BEGIN
	inputA(41) <= '0';
WAIT;
END PROCESS t_prcs_inputA_41;
-- inputA[40]
t_prcs_inputA_40: PROCESS
BEGIN
	inputA(40) <= '0';
WAIT;
END PROCESS t_prcs_inputA_40;
-- inputA[39]
t_prcs_inputA_39: PROCESS
BEGIN
	inputA(39) <= '0';
WAIT;
END PROCESS t_prcs_inputA_39;
-- inputA[38]
t_prcs_inputA_38: PROCESS
BEGIN
	inputA(38) <= '0';
WAIT;
END PROCESS t_prcs_inputA_38;
-- inputA[37]
t_prcs_inputA_37: PROCESS
BEGIN
	inputA(37) <= '0';
WAIT;
END PROCESS t_prcs_inputA_37;
-- inputA[36]
t_prcs_inputA_36: PROCESS
BEGIN
	inputA(36) <= '0';
WAIT;
END PROCESS t_prcs_inputA_36;
-- inputA[35]
t_prcs_inputA_35: PROCESS
BEGIN
	inputA(35) <= '0';
WAIT;
END PROCESS t_prcs_inputA_35;
-- inputA[34]
t_prcs_inputA_34: PROCESS
BEGIN
	inputA(34) <= '0';
WAIT;
END PROCESS t_prcs_inputA_34;
-- inputA[33]
t_prcs_inputA_33: PROCESS
BEGIN
	inputA(33) <= '0';
WAIT;
END PROCESS t_prcs_inputA_33;
-- inputA[32]
t_prcs_inputA_32: PROCESS
BEGIN
	inputA(32) <= '0';
WAIT;
END PROCESS t_prcs_inputA_32;
-- inputA[31]
t_prcs_inputA_31: PROCESS
BEGIN
	inputA(31) <= '0';
WAIT;
END PROCESS t_prcs_inputA_31;
-- inputA[30]
t_prcs_inputA_30: PROCESS
BEGIN
	inputA(30) <= '0';
WAIT;
END PROCESS t_prcs_inputA_30;
-- inputA[29]
t_prcs_inputA_29: PROCESS
BEGIN
	inputA(29) <= '0';
WAIT;
END PROCESS t_prcs_inputA_29;
-- inputA[28]
t_prcs_inputA_28: PROCESS
BEGIN
	inputA(28) <= '0';
WAIT;
END PROCESS t_prcs_inputA_28;
-- inputA[27]
t_prcs_inputA_27: PROCESS
BEGIN
	inputA(27) <= '0';
WAIT;
END PROCESS t_prcs_inputA_27;
-- inputA[26]
t_prcs_inputA_26: PROCESS
BEGIN
	inputA(26) <= '0';
WAIT;
END PROCESS t_prcs_inputA_26;
-- inputA[25]
t_prcs_inputA_25: PROCESS
BEGIN
	inputA(25) <= '0';
WAIT;
END PROCESS t_prcs_inputA_25;
-- inputA[24]
t_prcs_inputA_24: PROCESS
BEGIN
	inputA(24) <= '0';
WAIT;
END PROCESS t_prcs_inputA_24;
-- inputA[23]
t_prcs_inputA_23: PROCESS
BEGIN
	inputA(23) <= '0';
WAIT;
END PROCESS t_prcs_inputA_23;
-- inputA[22]
t_prcs_inputA_22: PROCESS
BEGIN
	inputA(22) <= '0';
WAIT;
END PROCESS t_prcs_inputA_22;
-- inputA[21]
t_prcs_inputA_21: PROCESS
BEGIN
	inputA(21) <= '0';
WAIT;
END PROCESS t_prcs_inputA_21;
-- inputA[20]
t_prcs_inputA_20: PROCESS
BEGIN
	inputA(20) <= '0';
WAIT;
END PROCESS t_prcs_inputA_20;
-- inputA[19]
t_prcs_inputA_19: PROCESS
BEGIN
	inputA(19) <= '0';
WAIT;
END PROCESS t_prcs_inputA_19;
-- inputA[18]
t_prcs_inputA_18: PROCESS
BEGIN
	inputA(18) <= '0';
WAIT;
END PROCESS t_prcs_inputA_18;
-- inputA[17]
t_prcs_inputA_17: PROCESS
BEGIN
	inputA(17) <= '0';
WAIT;
END PROCESS t_prcs_inputA_17;
-- inputA[16]
t_prcs_inputA_16: PROCESS
BEGIN
	inputA(16) <= '0';
WAIT;
END PROCESS t_prcs_inputA_16;
-- inputA[15]
t_prcs_inputA_15: PROCESS
BEGIN
	inputA(15) <= '0';
WAIT;
END PROCESS t_prcs_inputA_15;
-- inputA[14]
t_prcs_inputA_14: PROCESS
BEGIN
	inputA(14) <= '0';
WAIT;
END PROCESS t_prcs_inputA_14;
-- inputA[13]
t_prcs_inputA_13: PROCESS
BEGIN
	inputA(13) <= '0';
WAIT;
END PROCESS t_prcs_inputA_13;
-- inputA[12]
t_prcs_inputA_12: PROCESS
BEGIN
	inputA(12) <= '0';
WAIT;
END PROCESS t_prcs_inputA_12;
-- inputA[11]
t_prcs_inputA_11: PROCESS
BEGIN
	inputA(11) <= '0';
WAIT;
END PROCESS t_prcs_inputA_11;
-- inputA[10]
t_prcs_inputA_10: PROCESS
BEGIN
	inputA(10) <= '0';
WAIT;
END PROCESS t_prcs_inputA_10;
-- inputA[9]
t_prcs_inputA_9: PROCESS
BEGIN
	inputA(9) <= '0';
WAIT;
END PROCESS t_prcs_inputA_9;
-- inputA[8]
t_prcs_inputA_8: PROCESS
BEGIN
	inputA(8) <= '0';
WAIT;
END PROCESS t_prcs_inputA_8;
-- inputA[7]
t_prcs_inputA_7: PROCESS
BEGIN
	inputA(7) <= '0';
WAIT;
END PROCESS t_prcs_inputA_7;
-- inputA[6]
t_prcs_inputA_6: PROCESS
BEGIN
	inputA(6) <= '0';
WAIT;
END PROCESS t_prcs_inputA_6;
-- inputA[5]
t_prcs_inputA_5: PROCESS
BEGIN
	inputA(5) <= '0';
WAIT;
END PROCESS t_prcs_inputA_5;
-- inputA[4]
t_prcs_inputA_4: PROCESS
BEGIN
	inputA(4) <= '0';
WAIT;
END PROCESS t_prcs_inputA_4;
-- inputA[3]
t_prcs_inputA_3: PROCESS
BEGIN
	inputA(3) <= '0';
WAIT;
END PROCESS t_prcs_inputA_3;
-- inputA[2]
t_prcs_inputA_2: PROCESS
BEGIN
	inputA(2) <= '0';
WAIT;
END PROCESS t_prcs_inputA_2;
-- inputA[1]
t_prcs_inputA_1: PROCESS
BEGIN
	inputA(1) <= '1';
	WAIT FOR 750000 ps;
	inputA(1) <= '0';
	WAIT FOR 160000 ps;
	inputA(1) <= '1';
WAIT;
END PROCESS t_prcs_inputA_1;
-- inputA[0]
t_prcs_inputA_0: PROCESS
BEGIN
	inputA(0) <= '1';
	WAIT FOR 750000 ps;
	inputA(0) <= '0';
	WAIT FOR 160000 ps;
	inputA(0) <= '1';
WAIT;
END PROCESS t_prcs_inputA_0;
-- inputB[63]
t_prcs_inputB_63: PROCESS
BEGIN
	inputB(63) <= '0';
WAIT;
END PROCESS t_prcs_inputB_63;
-- inputB[62]
t_prcs_inputB_62: PROCESS
BEGIN
	inputB(62) <= '0';
WAIT;
END PROCESS t_prcs_inputB_62;
-- inputB[61]
t_prcs_inputB_61: PROCESS
BEGIN
	inputB(61) <= '0';
WAIT;
END PROCESS t_prcs_inputB_61;
-- inputB[60]
t_prcs_inputB_60: PROCESS
BEGIN
	inputB(60) <= '0';
WAIT;
END PROCESS t_prcs_inputB_60;
-- inputB[59]
t_prcs_inputB_59: PROCESS
BEGIN
	inputB(59) <= '0';
WAIT;
END PROCESS t_prcs_inputB_59;
-- inputB[58]
t_prcs_inputB_58: PROCESS
BEGIN
	inputB(58) <= '0';
WAIT;
END PROCESS t_prcs_inputB_58;
-- inputB[57]
t_prcs_inputB_57: PROCESS
BEGIN
	inputB(57) <= '0';
WAIT;
END PROCESS t_prcs_inputB_57;
-- inputB[56]
t_prcs_inputB_56: PROCESS
BEGIN
	inputB(56) <= '0';
WAIT;
END PROCESS t_prcs_inputB_56;
-- inputB[55]
t_prcs_inputB_55: PROCESS
BEGIN
	inputB(55) <= '0';
WAIT;
END PROCESS t_prcs_inputB_55;
-- inputB[54]
t_prcs_inputB_54: PROCESS
BEGIN
	inputB(54) <= '0';
WAIT;
END PROCESS t_prcs_inputB_54;
-- inputB[53]
t_prcs_inputB_53: PROCESS
BEGIN
	inputB(53) <= '0';
WAIT;
END PROCESS t_prcs_inputB_53;
-- inputB[52]
t_prcs_inputB_52: PROCESS
BEGIN
	inputB(52) <= '0';
WAIT;
END PROCESS t_prcs_inputB_52;
-- inputB[51]
t_prcs_inputB_51: PROCESS
BEGIN
	inputB(51) <= '0';
WAIT;
END PROCESS t_prcs_inputB_51;
-- inputB[50]
t_prcs_inputB_50: PROCESS
BEGIN
	inputB(50) <= '0';
WAIT;
END PROCESS t_prcs_inputB_50;
-- inputB[49]
t_prcs_inputB_49: PROCESS
BEGIN
	inputB(49) <= '0';
WAIT;
END PROCESS t_prcs_inputB_49;
-- inputB[48]
t_prcs_inputB_48: PROCESS
BEGIN
	inputB(48) <= '0';
WAIT;
END PROCESS t_prcs_inputB_48;
-- inputB[47]
t_prcs_inputB_47: PROCESS
BEGIN
	inputB(47) <= '0';
WAIT;
END PROCESS t_prcs_inputB_47;
-- inputB[46]
t_prcs_inputB_46: PROCESS
BEGIN
	inputB(46) <= '0';
WAIT;
END PROCESS t_prcs_inputB_46;
-- inputB[45]
t_prcs_inputB_45: PROCESS
BEGIN
	inputB(45) <= '0';
WAIT;
END PROCESS t_prcs_inputB_45;
-- inputB[44]
t_prcs_inputB_44: PROCESS
BEGIN
	inputB(44) <= '0';
WAIT;
END PROCESS t_prcs_inputB_44;
-- inputB[43]
t_prcs_inputB_43: PROCESS
BEGIN
	inputB(43) <= '0';
WAIT;
END PROCESS t_prcs_inputB_43;
-- inputB[42]
t_prcs_inputB_42: PROCESS
BEGIN
	inputB(42) <= '0';
WAIT;
END PROCESS t_prcs_inputB_42;
-- inputB[41]
t_prcs_inputB_41: PROCESS
BEGIN
	inputB(41) <= '0';
WAIT;
END PROCESS t_prcs_inputB_41;
-- inputB[40]
t_prcs_inputB_40: PROCESS
BEGIN
	inputB(40) <= '0';
WAIT;
END PROCESS t_prcs_inputB_40;
-- inputB[39]
t_prcs_inputB_39: PROCESS
BEGIN
	inputB(39) <= '0';
WAIT;
END PROCESS t_prcs_inputB_39;
-- inputB[38]
t_prcs_inputB_38: PROCESS
BEGIN
	inputB(38) <= '0';
WAIT;
END PROCESS t_prcs_inputB_38;
-- inputB[37]
t_prcs_inputB_37: PROCESS
BEGIN
	inputB(37) <= '0';
WAIT;
END PROCESS t_prcs_inputB_37;
-- inputB[36]
t_prcs_inputB_36: PROCESS
BEGIN
	inputB(36) <= '0';
WAIT;
END PROCESS t_prcs_inputB_36;
-- inputB[35]
t_prcs_inputB_35: PROCESS
BEGIN
	inputB(35) <= '0';
WAIT;
END PROCESS t_prcs_inputB_35;
-- inputB[34]
t_prcs_inputB_34: PROCESS
BEGIN
	inputB(34) <= '0';
WAIT;
END PROCESS t_prcs_inputB_34;
-- inputB[33]
t_prcs_inputB_33: PROCESS
BEGIN
	inputB(33) <= '0';
WAIT;
END PROCESS t_prcs_inputB_33;
-- inputB[32]
t_prcs_inputB_32: PROCESS
BEGIN
	inputB(32) <= '0';
WAIT;
END PROCESS t_prcs_inputB_32;
-- inputB[31]
t_prcs_inputB_31: PROCESS
BEGIN
	inputB(31) <= '0';
WAIT;
END PROCESS t_prcs_inputB_31;
-- inputB[30]
t_prcs_inputB_30: PROCESS
BEGIN
	inputB(30) <= '0';
WAIT;
END PROCESS t_prcs_inputB_30;
-- inputB[29]
t_prcs_inputB_29: PROCESS
BEGIN
	inputB(29) <= '0';
WAIT;
END PROCESS t_prcs_inputB_29;
-- inputB[28]
t_prcs_inputB_28: PROCESS
BEGIN
	inputB(28) <= '0';
WAIT;
END PROCESS t_prcs_inputB_28;
-- inputB[27]
t_prcs_inputB_27: PROCESS
BEGIN
	inputB(27) <= '0';
WAIT;
END PROCESS t_prcs_inputB_27;
-- inputB[26]
t_prcs_inputB_26: PROCESS
BEGIN
	inputB(26) <= '0';
WAIT;
END PROCESS t_prcs_inputB_26;
-- inputB[25]
t_prcs_inputB_25: PROCESS
BEGIN
	inputB(25) <= '0';
WAIT;
END PROCESS t_prcs_inputB_25;
-- inputB[24]
t_prcs_inputB_24: PROCESS
BEGIN
	inputB(24) <= '0';
WAIT;
END PROCESS t_prcs_inputB_24;
-- inputB[23]
t_prcs_inputB_23: PROCESS
BEGIN
	inputB(23) <= '0';
WAIT;
END PROCESS t_prcs_inputB_23;
-- inputB[22]
t_prcs_inputB_22: PROCESS
BEGIN
	inputB(22) <= '0';
WAIT;
END PROCESS t_prcs_inputB_22;
-- inputB[21]
t_prcs_inputB_21: PROCESS
BEGIN
	inputB(21) <= '0';
WAIT;
END PROCESS t_prcs_inputB_21;
-- inputB[20]
t_prcs_inputB_20: PROCESS
BEGIN
	inputB(20) <= '0';
WAIT;
END PROCESS t_prcs_inputB_20;
-- inputB[19]
t_prcs_inputB_19: PROCESS
BEGIN
	inputB(19) <= '0';
WAIT;
END PROCESS t_prcs_inputB_19;
-- inputB[18]
t_prcs_inputB_18: PROCESS
BEGIN
	inputB(18) <= '0';
WAIT;
END PROCESS t_prcs_inputB_18;
-- inputB[17]
t_prcs_inputB_17: PROCESS
BEGIN
	inputB(17) <= '0';
WAIT;
END PROCESS t_prcs_inputB_17;
-- inputB[16]
t_prcs_inputB_16: PROCESS
BEGIN
	inputB(16) <= '0';
WAIT;
END PROCESS t_prcs_inputB_16;
-- inputB[15]
t_prcs_inputB_15: PROCESS
BEGIN
	inputB(15) <= '0';
WAIT;
END PROCESS t_prcs_inputB_15;
-- inputB[14]
t_prcs_inputB_14: PROCESS
BEGIN
	inputB(14) <= '0';
WAIT;
END PROCESS t_prcs_inputB_14;
-- inputB[13]
t_prcs_inputB_13: PROCESS
BEGIN
	inputB(13) <= '0';
WAIT;
END PROCESS t_prcs_inputB_13;
-- inputB[12]
t_prcs_inputB_12: PROCESS
BEGIN
	inputB(12) <= '0';
WAIT;
END PROCESS t_prcs_inputB_12;
-- inputB[11]
t_prcs_inputB_11: PROCESS
BEGIN
	inputB(11) <= '0';
WAIT;
END PROCESS t_prcs_inputB_11;
-- inputB[10]
t_prcs_inputB_10: PROCESS
BEGIN
	inputB(10) <= '0';
WAIT;
END PROCESS t_prcs_inputB_10;
-- inputB[9]
t_prcs_inputB_9: PROCESS
BEGIN
	inputB(9) <= '0';
WAIT;
END PROCESS t_prcs_inputB_9;
-- inputB[8]
t_prcs_inputB_8: PROCESS
BEGIN
	inputB(8) <= '0';
WAIT;
END PROCESS t_prcs_inputB_8;
-- inputB[7]
t_prcs_inputB_7: PROCESS
BEGIN
	inputB(7) <= '0';
WAIT;
END PROCESS t_prcs_inputB_7;
-- inputB[6]
t_prcs_inputB_6: PROCESS
BEGIN
	inputB(6) <= '0';
WAIT;
END PROCESS t_prcs_inputB_6;
-- inputB[5]
t_prcs_inputB_5: PROCESS
BEGIN
	inputB(5) <= '0';
WAIT;
END PROCESS t_prcs_inputB_5;
-- inputB[4]
t_prcs_inputB_4: PROCESS
BEGIN
	inputB(4) <= '0';
WAIT;
END PROCESS t_prcs_inputB_4;
-- inputB[3]
t_prcs_inputB_3: PROCESS
BEGIN
	inputB(3) <= '0';
WAIT;
END PROCESS t_prcs_inputB_3;
-- inputB[2]
t_prcs_inputB_2: PROCESS
BEGIN
	inputB(2) <= '0';
	WAIT FOR 580000 ps;
	inputB(2) <= '1';
	WAIT FOR 170000 ps;
	inputB(2) <= '0';
WAIT;
END PROCESS t_prcs_inputB_2;
-- inputB[1]
t_prcs_inputB_1: PROCESS
BEGIN
	inputB(1) <= '0';
	WAIT FOR 240000 ps;
	inputB(1) <= '1';
	WAIT FOR 340000 ps;
	inputB(1) <= '0';
	WAIT FOR 170000 ps;
	inputB(1) <= '1';
	WAIT FOR 160000 ps;
	inputB(1) <= '0';
WAIT;
END PROCESS t_prcs_inputB_1;
-- inputB[0]
t_prcs_inputB_0: PROCESS
BEGIN
	inputB(0) <= '1';
	WAIT FOR 580000 ps;
	inputB(0) <= '0';
	WAIT FOR 170000 ps;
	inputB(0) <= '1';
	WAIT FOR 160000 ps;
	inputB(0) <= '0';
WAIT;
END PROCESS t_prcs_inputB_0;
-- opcode[3]
t_prcs_opcode_3: PROCESS
BEGIN
	opcode(3) <= '0';
WAIT;
END PROCESS t_prcs_opcode_3;
-- opcode[2]
t_prcs_opcode_2: PROCESS
BEGIN
	opcode(2) <= '0';
WAIT;
END PROCESS t_prcs_opcode_2;
-- opcode[1]
t_prcs_opcode_1: PROCESS
BEGIN
	opcode(1) <= '0';
WAIT;
END PROCESS t_prcs_opcode_1;
-- opcode[0]
t_prcs_opcode_0: PROCESS
BEGIN
	opcode(0) <= '0';
WAIT;
END PROCESS t_prcs_opcode_0;
END ALU_branch_arch;
