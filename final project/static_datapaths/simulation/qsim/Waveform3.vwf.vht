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
-- Generated on "04/25/2020 21:29:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          RD_reg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RD_reg_vhd_vec_tst IS
END RD_reg_vhd_vec_tst;
ARCHITECTURE RD_reg_arch OF RD_reg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clear : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL Data1_in : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL Data1_out : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL Data2_in : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL Data2_out : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL f3temp : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL f7temp : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL fun3_in : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL fun3_out : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL fun7_in : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL fun7_out : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL imm_in : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL imm_out : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL pc_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pc_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pctemp : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL s1temp : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL s2temp : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL src1_in : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL src1_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL src2_in : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL src2_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL stall : STD_LOGIC;
SIGNAL wradd_in : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL wradd_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL wrtemp : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT RD_reg
	PORT (
	clear : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	Data1_in : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	Data1_out : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
	Data2_in : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	Data2_out : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
	f3temp : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	f7temp : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	fun3_in : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	fun3_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	fun7_in : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	fun7_out : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	imm_in : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
	imm_out : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
	pc_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	pc_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	pctemp : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	s1temp : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	s2temp : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	src1_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	src1_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	src2_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	src2_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	stall : IN STD_LOGIC;
	wradd_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	wradd_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	wrtemp : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : RD_reg
	PORT MAP (
-- list connections between master ports and signals
	clear => clear,
	clock => clock,
	Data1_in => Data1_in,
	Data1_out => Data1_out,
	Data2_in => Data2_in,
	Data2_out => Data2_out,
	f3temp => f3temp,
	f7temp => f7temp,
	fun3_in => fun3_in,
	fun3_out => fun3_out,
	fun7_in => fun7_in,
	fun7_out => fun7_out,
	imm_in => imm_in,
	imm_out => imm_out,
	pc_in => pc_in,
	pc_out => pc_out,
	pctemp => pctemp,
	s1temp => s1temp,
	s2temp => s2temp,
	src1_in => src1_in,
	src1_out => src1_out,
	src2_in => src2_in,
	src2_out => src2_out,
	stall => stall,
	wradd_in => wradd_in,
	wradd_out => wradd_out,
	wrtemp => wrtemp
	);

-- clear
t_prcs_clear: PROCESS
BEGIN
	clear <= '1';
	WAIT FOR 30000 ps;
	clear <= '0';
WAIT;
END PROCESS t_prcs_clear;

-- clock
t_prcs_clock: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clock <= '0';
		WAIT FOR 40000 ps;
		clock <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;
-- Data1_in[63]
t_prcs_Data1_in_63: PROCESS
BEGIN
	Data1_in(63) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(63) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(63) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(63) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(63) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_63;
-- Data1_in[62]
t_prcs_Data1_in_62: PROCESS
BEGIN
	Data1_in(62) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(62) <= '0';
	WAIT FOR 480000 ps;
	Data1_in(62) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_62;
-- Data1_in[61]
t_prcs_Data1_in_61: PROCESS
BEGIN
	Data1_in(61) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(61) <= '1';
	WAIT FOR 480000 ps;
	Data1_in(61) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(61) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(61) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_61;
-- Data1_in[60]
t_prcs_Data1_in_60: PROCESS
BEGIN
	Data1_in(60) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(60) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(60) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(60) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(60) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(60) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_60;
-- Data1_in[59]
t_prcs_Data1_in_59: PROCESS
BEGIN
	Data1_in(59) <= '1';
	WAIT FOR 480000 ps;
	Data1_in(59) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(59) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_59;
-- Data1_in[58]
t_prcs_Data1_in_58: PROCESS
BEGIN
	Data1_in(58) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(58) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(58) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_58;
-- Data1_in[57]
t_prcs_Data1_in_57: PROCESS
BEGIN
	Data1_in(57) <= '1';
	WAIT FOR 800000 ps;
	Data1_in(57) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_57;
-- Data1_in[56]
t_prcs_Data1_in_56: PROCESS
BEGIN
	Data1_in(56) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(56) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(56) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(56) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_56;
-- Data1_in[55]
t_prcs_Data1_in_55: PROCESS
BEGIN
	Data1_in(55) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(55) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(55) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(55) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(55) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(55) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_55;
-- Data1_in[54]
t_prcs_Data1_in_54: PROCESS
BEGIN
	Data1_in(54) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(54) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(54) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(54) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(54) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_54;
-- Data1_in[53]
t_prcs_Data1_in_53: PROCESS
BEGIN
	Data1_in(53) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(53) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(53) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(53) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_53;
-- Data1_in[52]
t_prcs_Data1_in_52: PROCESS
BEGIN
	Data1_in(52) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(52) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_52;
-- Data1_in[51]
t_prcs_Data1_in_51: PROCESS
BEGIN
	Data1_in(51) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(51) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(51) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(51) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_51;
-- Data1_in[50]
t_prcs_Data1_in_50: PROCESS
BEGIN
	Data1_in(50) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(50) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(50) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(50) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(50) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_50;
-- Data1_in[49]
t_prcs_Data1_in_49: PROCESS
BEGIN
	Data1_in(49) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(49) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(49) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(49) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(49) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_49;
-- Data1_in[48]
t_prcs_Data1_in_48: PROCESS
BEGIN
	Data1_in(48) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(48) <= '1';
	WAIT FOR 480000 ps;
	Data1_in(48) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(48) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_48;
-- Data1_in[47]
t_prcs_Data1_in_47: PROCESS
BEGIN
	Data1_in(47) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(47) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(47) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_47;
-- Data1_in[46]
t_prcs_Data1_in_46: PROCESS
BEGIN
	Data1_in(46) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(46) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(46) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(46) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(46) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_46;
-- Data1_in[45]
t_prcs_Data1_in_45: PROCESS
BEGIN
	Data1_in(45) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(45) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(45) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_45;
-- Data1_in[44]
t_prcs_Data1_in_44: PROCESS
BEGIN
	Data1_in(44) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(44) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(44) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(44) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(44) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_44;
-- Data1_in[43]
t_prcs_Data1_in_43: PROCESS
BEGIN
	Data1_in(43) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(43) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(43) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(43) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_43;
-- Data1_in[42]
t_prcs_Data1_in_42: PROCESS
BEGIN
	Data1_in(42) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(42) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(42) <= '1';
	WAIT FOR 480000 ps;
	Data1_in(42) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(42) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_42;
-- Data1_in[41]
t_prcs_Data1_in_41: PROCESS
BEGIN
	Data1_in(41) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(41) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(41) <= '0';
	WAIT FOR 640000 ps;
	Data1_in(41) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_41;
-- Data1_in[40]
t_prcs_Data1_in_40: PROCESS
BEGIN
	Data1_in(40) <= '1';
	WAIT FOR 480000 ps;
	Data1_in(40) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(40) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_40;
-- Data1_in[39]
t_prcs_Data1_in_39: PROCESS
BEGIN
	Data1_in(39) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(39) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(39) <= '0';
	WAIT FOR 480000 ps;
	Data1_in(39) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(39) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_39;
-- Data1_in[38]
t_prcs_Data1_in_38: PROCESS
BEGIN
	Data1_in(38) <= '1';
	WAIT FOR 640000 ps;
	Data1_in(38) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_38;
-- Data1_in[37]
t_prcs_Data1_in_37: PROCESS
BEGIN
	Data1_in(37) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(37) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_37;
-- Data1_in[36]
t_prcs_Data1_in_36: PROCESS
BEGIN
	Data1_in(36) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_36;
-- Data1_in[35]
t_prcs_Data1_in_35: PROCESS
BEGIN
	Data1_in(35) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(35) <= '0';
	WAIT FOR 480000 ps;
	Data1_in(35) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_35;
-- Data1_in[34]
t_prcs_Data1_in_34: PROCESS
BEGIN
	Data1_in(34) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(34) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(34) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(34) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_34;
-- Data1_in[33]
t_prcs_Data1_in_33: PROCESS
BEGIN
	Data1_in(33) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(33) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(33) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(33) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(33) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_33;
-- Data1_in[32]
t_prcs_Data1_in_32: PROCESS
BEGIN
	Data1_in(32) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(32) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(32) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(32) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(32) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_32;
-- Data1_in[31]
t_prcs_Data1_in_31: PROCESS
BEGIN
	Data1_in(31) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(31) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(31) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(31) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_31;
-- Data1_in[30]
t_prcs_Data1_in_30: PROCESS
BEGIN
	Data1_in(30) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(30) <= '1';
	WAIT FOR 480000 ps;
	Data1_in(30) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_30;
-- Data1_in[29]
t_prcs_Data1_in_29: PROCESS
BEGIN
	Data1_in(29) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(29) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(29) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(29) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(29) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(29) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_29;
-- Data1_in[28]
t_prcs_Data1_in_28: PROCESS
BEGIN
	Data1_in(28) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_28;
-- Data1_in[27]
t_prcs_Data1_in_27: PROCESS
BEGIN
	Data1_in(27) <= '0';
	WAIT FOR 480000 ps;
	Data1_in(27) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(27) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(27) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_27;
-- Data1_in[26]
t_prcs_Data1_in_26: PROCESS
BEGIN
	Data1_in(26) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(26) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(26) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(26) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(26) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(26) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_26;
-- Data1_in[25]
t_prcs_Data1_in_25: PROCESS
BEGIN
	Data1_in(25) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(25) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(25) <= '0';
	WAIT FOR 640000 ps;
	Data1_in(25) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_25;
-- Data1_in[24]
t_prcs_Data1_in_24: PROCESS
BEGIN
	Data1_in(24) <= '1';
	WAIT FOR 640000 ps;
	Data1_in(24) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(24) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(24) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_24;
-- Data1_in[23]
t_prcs_Data1_in_23: PROCESS
BEGIN
	Data1_in(23) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(23) <= '0';
	WAIT FOR 480000 ps;
	Data1_in(23) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_23;
-- Data1_in[22]
t_prcs_Data1_in_22: PROCESS
BEGIN
	Data1_in(22) <= '0';
	WAIT FOR 640000 ps;
	Data1_in(22) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(22) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(22) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_22;
-- Data1_in[21]
t_prcs_Data1_in_21: PROCESS
BEGIN
	Data1_in(21) <= '0';
	WAIT FOR 800000 ps;
	Data1_in(21) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_21;
-- Data1_in[20]
t_prcs_Data1_in_20: PROCESS
BEGIN
	Data1_in(20) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(20) <= '1';
	WAIT FOR 480000 ps;
	Data1_in(20) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_20;
-- Data1_in[19]
t_prcs_Data1_in_19: PROCESS
BEGIN
	Data1_in(19) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(19) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(19) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(19) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_19;
-- Data1_in[18]
t_prcs_Data1_in_18: PROCESS
BEGIN
	Data1_in(18) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(18) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(18) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_18;
-- Data1_in[17]
t_prcs_Data1_in_17: PROCESS
BEGIN
	Data1_in(17) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(17) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(17) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(17) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(17) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_17;
-- Data1_in[16]
t_prcs_Data1_in_16: PROCESS
BEGIN
	Data1_in(16) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(16) <= '1';
	WAIT FOR 800000 ps;
	Data1_in(16) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_16;
-- Data1_in[15]
t_prcs_Data1_in_15: PROCESS
BEGIN
	Data1_in(15) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(15) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(15) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(15) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(15) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_15;
-- Data1_in[14]
t_prcs_Data1_in_14: PROCESS
BEGIN
	Data1_in(14) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(14) <= '1';
	WAIT FOR 480000 ps;
	Data1_in(14) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(14) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(14) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_14;
-- Data1_in[13]
t_prcs_Data1_in_13: PROCESS
BEGIN
	Data1_in(13) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(13) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(13) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(13) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_13;
-- Data1_in[12]
t_prcs_Data1_in_12: PROCESS
BEGIN
	Data1_in(12) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(12) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(12) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(12) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(12) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_12;
-- Data1_in[11]
t_prcs_Data1_in_11: PROCESS
BEGIN
	Data1_in(11) <= '0';
	WAIT FOR 480000 ps;
	Data1_in(11) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(11) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(11) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_11;
-- Data1_in[10]
t_prcs_Data1_in_10: PROCESS
BEGIN
	Data1_in(10) <= '1';
	WAIT FOR 480000 ps;
	Data1_in(10) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(10) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_10;
-- Data1_in[9]
t_prcs_Data1_in_9: PROCESS
BEGIN
	Data1_in(9) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_9;
-- Data1_in[8]
t_prcs_Data1_in_8: PROCESS
BEGIN
	Data1_in(8) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(8) <= '1';
	WAIT FOR 640000 ps;
	Data1_in(8) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_8;
-- Data1_in[7]
t_prcs_Data1_in_7: PROCESS
BEGIN
	Data1_in(7) <= '1';
	WAIT FOR 480000 ps;
	Data1_in(7) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(7) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_7;
-- Data1_in[6]
t_prcs_Data1_in_6: PROCESS
BEGIN
	Data1_in(6) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(6) <= '0';
	WAIT FOR 480000 ps;
	Data1_in(6) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_6;
-- Data1_in[5]
t_prcs_Data1_in_5: PROCESS
BEGIN
	Data1_in(5) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(5) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(5) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_5;
-- Data1_in[4]
t_prcs_Data1_in_4: PROCESS
BEGIN
	Data1_in(4) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(4) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(4) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(4) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(4) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(4) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_4;
-- Data1_in[3]
t_prcs_Data1_in_3: PROCESS
BEGIN
	Data1_in(3) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(3) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(3) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(3) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(3) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_3;
-- Data1_in[2]
t_prcs_Data1_in_2: PROCESS
BEGIN
	Data1_in(2) <= '1';
	WAIT FOR 160000 ps;
	Data1_in(2) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(2) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(2) <= '0';
WAIT;
END PROCESS t_prcs_Data1_in_2;
-- Data1_in[1]
t_prcs_Data1_in_1: PROCESS
BEGIN
	Data1_in(1) <= '0';
	WAIT FOR 640000 ps;
	Data1_in(1) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_1;
-- Data1_in[0]
t_prcs_Data1_in_0: PROCESS
BEGIN
	Data1_in(0) <= '0';
	WAIT FOR 320000 ps;
	Data1_in(0) <= '1';
	WAIT FOR 320000 ps;
	Data1_in(0) <= '0';
	WAIT FOR 160000 ps;
	Data1_in(0) <= '1';
WAIT;
END PROCESS t_prcs_Data1_in_0;
-- Data2_in[63]
t_prcs_Data2_in_63: PROCESS
BEGIN
	Data2_in(63) <= '1';
	WAIT FOR 480000 ps;
	Data2_in(63) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(63) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(63) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_63;
-- Data2_in[62]
t_prcs_Data2_in_62: PROCESS
BEGIN
	Data2_in(62) <= '1';
	WAIT FOR 960000 ps;
	Data2_in(62) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_62;
-- Data2_in[61]
t_prcs_Data2_in_61: PROCESS
BEGIN
	Data2_in(61) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(61) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(61) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(61) <= '1';
	WAIT FOR 480000 ps;
	Data2_in(61) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_61;
-- Data2_in[60]
t_prcs_Data2_in_60: PROCESS
BEGIN
	Data2_in(60) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(60) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_60;
-- Data2_in[59]
t_prcs_Data2_in_59: PROCESS
BEGIN
	Data2_in(59) <= '1';
	WAIT FOR 480000 ps;
	Data2_in(59) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(59) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(59) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(59) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_59;
-- Data2_in[58]
t_prcs_Data2_in_58: PROCESS
BEGIN
	Data2_in(58) <= '1';
	WAIT FOR 480000 ps;
	Data2_in(58) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(58) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_58;
-- Data2_in[57]
t_prcs_Data2_in_57: PROCESS
BEGIN
	Data2_in(57) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(57) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(57) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_57;
-- Data2_in[56]
t_prcs_Data2_in_56: PROCESS
BEGIN
	Data2_in(56) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(56) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(56) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(56) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_56;
-- Data2_in[55]
t_prcs_Data2_in_55: PROCESS
BEGIN
	Data2_in(55) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(55) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(55) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_55;
-- Data2_in[54]
t_prcs_Data2_in_54: PROCESS
BEGIN
	Data2_in(54) <= '0';
	WAIT FOR 800000 ps;
	Data2_in(54) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_54;
-- Data2_in[53]
t_prcs_Data2_in_53: PROCESS
BEGIN
	Data2_in(53) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(53) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(53) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(53) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(53) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(53) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_53;
-- Data2_in[52]
t_prcs_Data2_in_52: PROCESS
BEGIN
	Data2_in(52) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(52) <= '1';
	WAIT FOR 640000 ps;
	Data2_in(52) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_52;
-- Data2_in[51]
t_prcs_Data2_in_51: PROCESS
BEGIN
	Data2_in(51) <= '1';
	WAIT FOR 800000 ps;
	Data2_in(51) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_51;
-- Data2_in[50]
t_prcs_Data2_in_50: PROCESS
BEGIN
	Data2_in(50) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(50) <= '1';
	WAIT FOR 640000 ps;
	Data2_in(50) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(50) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_50;
-- Data2_in[49]
t_prcs_Data2_in_49: PROCESS
BEGIN
	Data2_in(49) <= '1';
	WAIT FOR 480000 ps;
	Data2_in(49) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(49) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(49) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_49;
-- Data2_in[48]
t_prcs_Data2_in_48: PROCESS
BEGIN
	Data2_in(48) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(48) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(48) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(48) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_48;
-- Data2_in[47]
t_prcs_Data2_in_47: PROCESS
BEGIN
	Data2_in(47) <= '0';
	WAIT FOR 480000 ps;
	Data2_in(47) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(47) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(47) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_47;
-- Data2_in[46]
t_prcs_Data2_in_46: PROCESS
BEGIN
	Data2_in(46) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(46) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(46) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(46) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(46) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_46;
-- Data2_in[45]
t_prcs_Data2_in_45: PROCESS
BEGIN
	Data2_in(45) <= '1';
	WAIT FOR 480000 ps;
	Data2_in(45) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_45;
-- Data2_in[44]
t_prcs_Data2_in_44: PROCESS
BEGIN
	Data2_in(44) <= '1';
	WAIT FOR 640000 ps;
	Data2_in(44) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(44) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_44;
-- Data2_in[43]
t_prcs_Data2_in_43: PROCESS
BEGIN
	Data2_in(43) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(43) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(43) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(43) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(43) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(43) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_43;
-- Data2_in[42]
t_prcs_Data2_in_42: PROCESS
BEGIN
	Data2_in(42) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(42) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(42) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(42) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(42) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(42) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_42;
-- Data2_in[41]
t_prcs_Data2_in_41: PROCESS
BEGIN
	Data2_in(41) <= '1';
	WAIT FOR 640000 ps;
	Data2_in(41) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_41;
-- Data2_in[40]
t_prcs_Data2_in_40: PROCESS
BEGIN
	Data2_in(40) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(40) <= '1';
	WAIT FOR 640000 ps;
	Data2_in(40) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(40) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_40;
-- Data2_in[39]
t_prcs_Data2_in_39: PROCESS
BEGIN
	Data2_in(39) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(39) <= '0';
	WAIT FOR 480000 ps;
	Data2_in(39) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_39;
-- Data2_in[38]
t_prcs_Data2_in_38: PROCESS
BEGIN
	Data2_in(38) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(38) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(38) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(38) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_38;
-- Data2_in[37]
t_prcs_Data2_in_37: PROCESS
BEGIN
	Data2_in(37) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(37) <= '1';
	WAIT FOR 800000 ps;
	Data2_in(37) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_37;
-- Data2_in[36]
t_prcs_Data2_in_36: PROCESS
BEGIN
	Data2_in(36) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(36) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(36) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(36) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(36) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_36;
-- Data2_in[35]
t_prcs_Data2_in_35: PROCESS
BEGIN
	Data2_in(35) <= '1';
	WAIT FOR 480000 ps;
	Data2_in(35) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(35) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(35) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_35;
-- Data2_in[34]
t_prcs_Data2_in_34: PROCESS
BEGIN
	Data2_in(34) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(34) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(34) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(34) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(34) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(34) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_34;
-- Data2_in[33]
t_prcs_Data2_in_33: PROCESS
BEGIN
	Data2_in(33) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(33) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(33) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(33) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_33;
-- Data2_in[32]
t_prcs_Data2_in_32: PROCESS
BEGIN
	Data2_in(32) <= '1';
	WAIT FOR 480000 ps;
	Data2_in(32) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(32) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_32;
-- Data2_in[31]
t_prcs_Data2_in_31: PROCESS
BEGIN
	Data2_in(31) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(31) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(31) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_31;
-- Data2_in[30]
t_prcs_Data2_in_30: PROCESS
BEGIN
	Data2_in(30) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(30) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(30) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(30) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_30;
-- Data2_in[29]
t_prcs_Data2_in_29: PROCESS
BEGIN
	Data2_in(29) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(29) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(29) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(29) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(29) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_29;
-- Data2_in[28]
t_prcs_Data2_in_28: PROCESS
BEGIN
	Data2_in(28) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(28) <= '0';
	WAIT FOR 480000 ps;
	Data2_in(28) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(28) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_28;
-- Data2_in[27]
t_prcs_Data2_in_27: PROCESS
BEGIN
	Data2_in(27) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(27) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(27) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(27) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(27) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(27) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_27;
-- Data2_in[26]
t_prcs_Data2_in_26: PROCESS
BEGIN
	Data2_in(26) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(26) <= '0';
	WAIT FOR 480000 ps;
	Data2_in(26) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(26) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_26;
-- Data2_in[25]
t_prcs_Data2_in_25: PROCESS
BEGIN
	Data2_in(25) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(25) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(25) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(25) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(25) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_25;
-- Data2_in[24]
t_prcs_Data2_in_24: PROCESS
BEGIN
	Data2_in(24) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(24) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(24) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(24) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(24) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_24;
-- Data2_in[23]
t_prcs_Data2_in_23: PROCESS
BEGIN
	Data2_in(23) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(23) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(23) <= '0';
	WAIT FOR 480000 ps;
	Data2_in(23) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_23;
-- Data2_in[22]
t_prcs_Data2_in_22: PROCESS
BEGIN
	Data2_in(22) <= '0';
	WAIT FOR 480000 ps;
	Data2_in(22) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(22) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_22;
-- Data2_in[21]
t_prcs_Data2_in_21: PROCESS
BEGIN
	Data2_in(21) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(21) <= '0';
	WAIT FOR 480000 ps;
	Data2_in(21) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(21) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_21;
-- Data2_in[20]
t_prcs_Data2_in_20: PROCESS
BEGIN
	Data2_in(20) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(20) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(20) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(20) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(20) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_20;
-- Data2_in[19]
t_prcs_Data2_in_19: PROCESS
BEGIN
	Data2_in(19) <= '0';
	WAIT FOR 480000 ps;
	Data2_in(19) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(19) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(19) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_19;
-- Data2_in[18]
t_prcs_Data2_in_18: PROCESS
BEGIN
	Data2_in(18) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(18) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(18) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(18) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(18) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(18) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_18;
-- Data2_in[17]
t_prcs_Data2_in_17: PROCESS
BEGIN
	Data2_in(17) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(17) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(17) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(17) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(17) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_17;
-- Data2_in[16]
t_prcs_Data2_in_16: PROCESS
BEGIN
	Data2_in(16) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(16) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(16) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_16;
-- Data2_in[15]
t_prcs_Data2_in_15: PROCESS
BEGIN
	Data2_in(15) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(15) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(15) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_15;
-- Data2_in[14]
t_prcs_Data2_in_14: PROCESS
BEGIN
	Data2_in(14) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(14) <= '0';
	WAIT FOR 480000 ps;
	Data2_in(14) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(14) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_14;
-- Data2_in[13]
t_prcs_Data2_in_13: PROCESS
BEGIN
	Data2_in(13) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(13) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(13) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(13) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_13;
-- Data2_in[12]
t_prcs_Data2_in_12: PROCESS
BEGIN
	Data2_in(12) <= '0';
	WAIT FOR 480000 ps;
	Data2_in(12) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(12) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_12;
-- Data2_in[11]
t_prcs_Data2_in_11: PROCESS
BEGIN
	Data2_in(11) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(11) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(11) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(11) <= '1';
	WAIT FOR 480000 ps;
	Data2_in(11) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_11;
-- Data2_in[10]
t_prcs_Data2_in_10: PROCESS
BEGIN
	Data2_in(10) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(10) <= '0';
	WAIT FOR 480000 ps;
	Data2_in(10) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_10;
-- Data2_in[9]
t_prcs_Data2_in_9: PROCESS
BEGIN
	Data2_in(9) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(9) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(9) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(9) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_9;
-- Data2_in[8]
t_prcs_Data2_in_8: PROCESS
BEGIN
	Data2_in(8) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(8) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_8;
-- Data2_in[7]
t_prcs_Data2_in_7: PROCESS
BEGIN
	Data2_in(7) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(7) <= '0';
	WAIT FOR 160000 ps;
	Data2_in(7) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(7) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(7) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_7;
-- Data2_in[6]
t_prcs_Data2_in_6: PROCESS
BEGIN
	Data2_in(6) <= '0';
	WAIT FOR 320000 ps;
	Data2_in(6) <= '1';
	WAIT FOR 480000 ps;
	Data2_in(6) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_6;
-- Data2_in[5]
t_prcs_Data2_in_5: PROCESS
BEGIN
	Data2_in(5) <= '0';
	WAIT FOR 480000 ps;
	Data2_in(5) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(5) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_5;
-- Data2_in[4]
t_prcs_Data2_in_4: PROCESS
BEGIN
	Data2_in(4) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(4) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_4;
-- Data2_in[3]
t_prcs_Data2_in_3: PROCESS
BEGIN
	Data2_in(3) <= '0';
	WAIT FOR 640000 ps;
	Data2_in(3) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(3) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_3;
-- Data2_in[2]
t_prcs_Data2_in_2: PROCESS
BEGIN
	Data2_in(2) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(2) <= '0';
	WAIT FOR 480000 ps;
	Data2_in(2) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(2) <= '0';
WAIT;
END PROCESS t_prcs_Data2_in_2;
-- Data2_in[1]
t_prcs_Data2_in_1: PROCESS
BEGIN
	Data2_in(1) <= '1';
	WAIT FOR 320000 ps;
	Data2_in(1) <= '0';
	WAIT FOR 640000 ps;
	Data2_in(1) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_1;
-- Data2_in[0]
t_prcs_Data2_in_0: PROCESS
BEGIN
	Data2_in(0) <= '1';
	WAIT FOR 160000 ps;
	Data2_in(0) <= '0';
	WAIT FOR 640000 ps;
	Data2_in(0) <= '1';
WAIT;
END PROCESS t_prcs_Data2_in_0;
-- fun3_in[2]
t_prcs_fun3_in_2: PROCESS
BEGIN
	fun3_in(2) <= '1';
	WAIT FOR 640000 ps;
	fun3_in(2) <= '0';
WAIT;
END PROCESS t_prcs_fun3_in_2;
-- fun3_in[1]
t_prcs_fun3_in_1: PROCESS
BEGIN
	fun3_in(1) <= '0';
	WAIT FOR 640000 ps;
	fun3_in(1) <= '1';
	WAIT FOR 320000 ps;
	fun3_in(1) <= '0';
WAIT;
END PROCESS t_prcs_fun3_in_1;
-- fun3_in[0]
t_prcs_fun3_in_0: PROCESS
BEGIN
	fun3_in(0) <= '1';
	WAIT FOR 320000 ps;
	fun3_in(0) <= '0';
WAIT;
END PROCESS t_prcs_fun3_in_0;
-- fun7_in[6]
t_prcs_fun7_in_6: PROCESS
BEGIN
	fun7_in(6) <= '0';
	WAIT FOR 480000 ps;
	fun7_in(6) <= '1';
	WAIT FOR 160000 ps;
	fun7_in(6) <= '0';
	WAIT FOR 160000 ps;
	fun7_in(6) <= '1';
	WAIT FOR 160000 ps;
	fun7_in(6) <= '0';
WAIT;
END PROCESS t_prcs_fun7_in_6;
-- fun7_in[5]
t_prcs_fun7_in_5: PROCESS
BEGIN
	fun7_in(5) <= '1';
	WAIT FOR 320000 ps;
	fun7_in(5) <= '0';
	WAIT FOR 480000 ps;
	fun7_in(5) <= '1';
	WAIT FOR 160000 ps;
	fun7_in(5) <= '0';
WAIT;
END PROCESS t_prcs_fun7_in_5;
-- fun7_in[4]
t_prcs_fun7_in_4: PROCESS
BEGIN
	fun7_in(4) <= '0';
	WAIT FOR 160000 ps;
	fun7_in(4) <= '1';
	WAIT FOR 160000 ps;
	fun7_in(4) <= '0';
	WAIT FOR 160000 ps;
	fun7_in(4) <= '1';
	WAIT FOR 160000 ps;
	fun7_in(4) <= '0';
	WAIT FOR 320000 ps;
	fun7_in(4) <= '1';
WAIT;
END PROCESS t_prcs_fun7_in_4;
-- fun7_in[3]
t_prcs_fun7_in_3: PROCESS
BEGIN
	fun7_in(3) <= '1';
	WAIT FOR 160000 ps;
	fun7_in(3) <= '0';
	WAIT FOR 320000 ps;
	fun7_in(3) <= '1';
	WAIT FOR 320000 ps;
	fun7_in(3) <= '0';
WAIT;
END PROCESS t_prcs_fun7_in_3;
-- fun7_in[2]
t_prcs_fun7_in_2: PROCESS
BEGIN
	fun7_in(2) <= '0';
	WAIT FOR 160000 ps;
	fun7_in(2) <= '1';
	WAIT FOR 640000 ps;
	fun7_in(2) <= '0';
	WAIT FOR 160000 ps;
	fun7_in(2) <= '1';
WAIT;
END PROCESS t_prcs_fun7_in_2;
-- fun7_in[1]
t_prcs_fun7_in_1: PROCESS
BEGIN
	fun7_in(1) <= '0';
	WAIT FOR 320000 ps;
	fun7_in(1) <= '1';
	WAIT FOR 320000 ps;
	fun7_in(1) <= '0';
	WAIT FOR 160000 ps;
	fun7_in(1) <= '1';
	WAIT FOR 160000 ps;
	fun7_in(1) <= '0';
WAIT;
END PROCESS t_prcs_fun7_in_1;
-- fun7_in[0]
t_prcs_fun7_in_0: PROCESS
BEGIN
	fun7_in(0) <= '1';
	WAIT FOR 800000 ps;
	fun7_in(0) <= '0';
	WAIT FOR 160000 ps;
	fun7_in(0) <= '1';
WAIT;
END PROCESS t_prcs_fun7_in_0;
-- imm_in[63]
t_prcs_imm_in_63: PROCESS
BEGIN
	imm_in(63) <= '0';
	WAIT FOR 160000 ps;
	imm_in(63) <= '1';
	WAIT FOR 160000 ps;
	imm_in(63) <= '0';
	WAIT FOR 160000 ps;
	imm_in(63) <= '1';
	WAIT FOR 160000 ps;
	imm_in(63) <= '0';
	WAIT FOR 160000 ps;
	imm_in(63) <= '1';
	WAIT FOR 160000 ps;
	imm_in(63) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_63;
-- imm_in[62]
t_prcs_imm_in_62: PROCESS
BEGIN
	imm_in(62) <= '0';
	WAIT FOR 160000 ps;
	imm_in(62) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_62;
-- imm_in[61]
t_prcs_imm_in_61: PROCESS
BEGIN
	imm_in(61) <= '1';
	WAIT FOR 480000 ps;
	imm_in(61) <= '0';
	WAIT FOR 160000 ps;
	imm_in(61) <= '1';
	WAIT FOR 320000 ps;
	imm_in(61) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_61;
-- imm_in[60]
t_prcs_imm_in_60: PROCESS
BEGIN
	imm_in(60) <= '0';
	WAIT FOR 320000 ps;
	imm_in(60) <= '1';
	WAIT FOR 320000 ps;
	imm_in(60) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_60;
-- imm_in[59]
t_prcs_imm_in_59: PROCESS
BEGIN
	imm_in(59) <= '0';
	WAIT FOR 160000 ps;
	imm_in(59) <= '1';
	WAIT FOR 800000 ps;
	imm_in(59) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_59;
-- imm_in[58]
t_prcs_imm_in_58: PROCESS
BEGIN
	imm_in(58) <= '1';
	WAIT FOR 160000 ps;
	imm_in(58) <= '0';
	WAIT FOR 160000 ps;
	imm_in(58) <= '1';
	WAIT FOR 160000 ps;
	imm_in(58) <= '0';
	WAIT FOR 480000 ps;
	imm_in(58) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_58;
-- imm_in[57]
t_prcs_imm_in_57: PROCESS
BEGIN
	imm_in(57) <= '0';
	WAIT FOR 160000 ps;
	imm_in(57) <= '1';
	WAIT FOR 160000 ps;
	imm_in(57) <= '0';
	WAIT FOR 320000 ps;
	imm_in(57) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_57;
-- imm_in[56]
t_prcs_imm_in_56: PROCESS
BEGIN
	imm_in(56) <= '1';
	WAIT FOR 160000 ps;
	imm_in(56) <= '0';
	WAIT FOR 160000 ps;
	imm_in(56) <= '1';
	WAIT FOR 320000 ps;
	imm_in(56) <= '0';
	WAIT FOR 160000 ps;
	imm_in(56) <= '1';
	WAIT FOR 160000 ps;
	imm_in(56) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_56;
-- imm_in[55]
t_prcs_imm_in_55: PROCESS
BEGIN
	imm_in(55) <= '1';
	WAIT FOR 160000 ps;
	imm_in(55) <= '0';
	WAIT FOR 160000 ps;
	imm_in(55) <= '1';
	WAIT FOR 480000 ps;
	imm_in(55) <= '0';
	WAIT FOR 160000 ps;
	imm_in(55) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_55;
-- imm_in[54]
t_prcs_imm_in_54: PROCESS
BEGIN
	imm_in(54) <= '1';
	WAIT FOR 480000 ps;
	imm_in(54) <= '0';
	WAIT FOR 160000 ps;
	imm_in(54) <= '1';
	WAIT FOR 160000 ps;
	imm_in(54) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_54;
-- imm_in[53]
t_prcs_imm_in_53: PROCESS
BEGIN
	imm_in(53) <= '0';
	WAIT FOR 160000 ps;
	imm_in(53) <= '1';
	WAIT FOR 160000 ps;
	imm_in(53) <= '0';
	WAIT FOR 320000 ps;
	imm_in(53) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_53;
-- imm_in[52]
t_prcs_imm_in_52: PROCESS
BEGIN
	imm_in(52) <= '0';
	WAIT FOR 160000 ps;
	imm_in(52) <= '1';
	WAIT FOR 160000 ps;
	imm_in(52) <= '0';
	WAIT FOR 160000 ps;
	imm_in(52) <= '1';
	WAIT FOR 320000 ps;
	imm_in(52) <= '0';
	WAIT FOR 160000 ps;
	imm_in(52) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_52;
-- imm_in[51]
t_prcs_imm_in_51: PROCESS
BEGIN
	imm_in(51) <= '1';
	WAIT FOR 320000 ps;
	imm_in(51) <= '0';
	WAIT FOR 160000 ps;
	imm_in(51) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_51;
-- imm_in[50]
t_prcs_imm_in_50: PROCESS
BEGIN
	imm_in(50) <= '0';
	WAIT FOR 160000 ps;
	imm_in(50) <= '1';
	WAIT FOR 320000 ps;
	imm_in(50) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_50;
-- imm_in[49]
t_prcs_imm_in_49: PROCESS
BEGIN
	imm_in(49) <= '0';
	WAIT FOR 320000 ps;
	imm_in(49) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_49;
-- imm_in[48]
t_prcs_imm_in_48: PROCESS
BEGIN
	imm_in(48) <= '1';
	WAIT FOR 160000 ps;
	imm_in(48) <= '0';
	WAIT FOR 160000 ps;
	imm_in(48) <= '1';
	WAIT FOR 160000 ps;
	imm_in(48) <= '0';
	WAIT FOR 160000 ps;
	imm_in(48) <= '1';
	WAIT FOR 160000 ps;
	imm_in(48) <= '0';
	WAIT FOR 160000 ps;
	imm_in(48) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_48;
-- imm_in[47]
t_prcs_imm_in_47: PROCESS
BEGIN
	imm_in(47) <= '0';
	WAIT FOR 320000 ps;
	imm_in(47) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_47;
-- imm_in[46]
t_prcs_imm_in_46: PROCESS
BEGIN
	imm_in(46) <= '0';
	WAIT FOR 800000 ps;
	imm_in(46) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_46;
-- imm_in[45]
t_prcs_imm_in_45: PROCESS
BEGIN
	imm_in(45) <= '0';
	WAIT FOR 160000 ps;
	imm_in(45) <= '1';
	WAIT FOR 480000 ps;
	imm_in(45) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_45;
-- imm_in[44]
t_prcs_imm_in_44: PROCESS
BEGIN
	imm_in(44) <= '1';
	WAIT FOR 320000 ps;
	imm_in(44) <= '0';
	WAIT FOR 480000 ps;
	imm_in(44) <= '1';
	WAIT FOR 160000 ps;
	imm_in(44) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_44;
-- imm_in[43]
t_prcs_imm_in_43: PROCESS
BEGIN
	imm_in(43) <= '0';
	WAIT FOR 640000 ps;
	imm_in(43) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_43;
-- imm_in[42]
t_prcs_imm_in_42: PROCESS
BEGIN
	imm_in(42) <= '1';
	WAIT FOR 480000 ps;
	imm_in(42) <= '0';
	WAIT FOR 160000 ps;
	imm_in(42) <= '1';
	WAIT FOR 320000 ps;
	imm_in(42) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_42;
-- imm_in[41]
t_prcs_imm_in_41: PROCESS
BEGIN
	imm_in(41) <= '0';
	WAIT FOR 320000 ps;
	imm_in(41) <= '1';
	WAIT FOR 160000 ps;
	imm_in(41) <= '0';
	WAIT FOR 160000 ps;
	imm_in(41) <= '1';
	WAIT FOR 160000 ps;
	imm_in(41) <= '0';
	WAIT FOR 160000 ps;
	imm_in(41) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_41;
-- imm_in[40]
t_prcs_imm_in_40: PROCESS
BEGIN
	imm_in(40) <= '0';
	WAIT FOR 320000 ps;
	imm_in(40) <= '1';
	WAIT FOR 160000 ps;
	imm_in(40) <= '0';
	WAIT FOR 160000 ps;
	imm_in(40) <= '1';
	WAIT FOR 320000 ps;
	imm_in(40) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_40;
-- imm_in[39]
t_prcs_imm_in_39: PROCESS
BEGIN
	imm_in(39) <= '1';
	WAIT FOR 160000 ps;
	imm_in(39) <= '0';
	WAIT FOR 320000 ps;
	imm_in(39) <= '1';
	WAIT FOR 320000 ps;
	imm_in(39) <= '0';
	WAIT FOR 160000 ps;
	imm_in(39) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_39;
-- imm_in[38]
t_prcs_imm_in_38: PROCESS
BEGIN
	imm_in(38) <= '1';
	WAIT FOR 480000 ps;
	imm_in(38) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_38;
-- imm_in[37]
t_prcs_imm_in_37: PROCESS
BEGIN
	imm_in(37) <= '0';
	WAIT FOR 160000 ps;
	imm_in(37) <= '1';
	WAIT FOR 160000 ps;
	imm_in(37) <= '0';
	WAIT FOR 480000 ps;
	imm_in(37) <= '1';
	WAIT FOR 160000 ps;
	imm_in(37) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_37;
-- imm_in[36]
t_prcs_imm_in_36: PROCESS
BEGIN
	imm_in(36) <= '1';
	WAIT FOR 640000 ps;
	imm_in(36) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_36;
-- imm_in[35]
t_prcs_imm_in_35: PROCESS
BEGIN
	imm_in(35) <= '0';
	WAIT FOR 160000 ps;
	imm_in(35) <= '1';
	WAIT FOR 640000 ps;
	imm_in(35) <= '0';
	WAIT FOR 160000 ps;
	imm_in(35) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_35;
-- imm_in[34]
t_prcs_imm_in_34: PROCESS
BEGIN
	imm_in(34) <= '0';
	WAIT FOR 320000 ps;
	imm_in(34) <= '1';
	WAIT FOR 160000 ps;
	imm_in(34) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_34;
-- imm_in[33]
t_prcs_imm_in_33: PROCESS
BEGIN
	imm_in(33) <= '0';
	WAIT FOR 320000 ps;
	imm_in(33) <= '1';
	WAIT FOR 160000 ps;
	imm_in(33) <= '0';
	WAIT FOR 160000 ps;
	imm_in(33) <= '1';
	WAIT FOR 160000 ps;
	imm_in(33) <= '0';
	WAIT FOR 160000 ps;
	imm_in(33) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_33;
-- imm_in[32]
t_prcs_imm_in_32: PROCESS
BEGIN
	imm_in(32) <= '0';
	WAIT FOR 320000 ps;
	imm_in(32) <= '1';
	WAIT FOR 480000 ps;
	imm_in(32) <= '0';
	WAIT FOR 160000 ps;
	imm_in(32) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_32;
-- imm_in[31]
t_prcs_imm_in_31: PROCESS
BEGIN
	imm_in(31) <= '0';
	WAIT FOR 320000 ps;
	imm_in(31) <= '1';
	WAIT FOR 320000 ps;
	imm_in(31) <= '0';
	WAIT FOR 160000 ps;
	imm_in(31) <= '1';
	WAIT FOR 160000 ps;
	imm_in(31) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_31;
-- imm_in[30]
t_prcs_imm_in_30: PROCESS
BEGIN
	imm_in(30) <= '1';
	WAIT FOR 160000 ps;
	imm_in(30) <= '0';
	WAIT FOR 320000 ps;
	imm_in(30) <= '1';
	WAIT FOR 480000 ps;
	imm_in(30) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_30;
-- imm_in[29]
t_prcs_imm_in_29: PROCESS
BEGIN
	imm_in(29) <= '0';
	WAIT FOR 320000 ps;
	imm_in(29) <= '1';
	WAIT FOR 320000 ps;
	imm_in(29) <= '0';
	WAIT FOR 160000 ps;
	imm_in(29) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_29;
-- imm_in[28]
t_prcs_imm_in_28: PROCESS
BEGIN
	imm_in(28) <= '0';
	WAIT FOR 160000 ps;
	imm_in(28) <= '1';
	WAIT FOR 160000 ps;
	imm_in(28) <= '0';
	WAIT FOR 160000 ps;
	imm_in(28) <= '1';
	WAIT FOR 160000 ps;
	imm_in(28) <= '0';
	WAIT FOR 160000 ps;
	imm_in(28) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_28;
-- imm_in[27]
t_prcs_imm_in_27: PROCESS
BEGIN
	imm_in(27) <= '0';
	WAIT FOR 320000 ps;
	imm_in(27) <= '1';
	WAIT FOR 160000 ps;
	imm_in(27) <= '0';
	WAIT FOR 160000 ps;
	imm_in(27) <= '1';
	WAIT FOR 160000 ps;
	imm_in(27) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_27;
-- imm_in[26]
t_prcs_imm_in_26: PROCESS
BEGIN
	imm_in(26) <= '0';
	WAIT FOR 160000 ps;
	imm_in(26) <= '1';
	WAIT FOR 320000 ps;
	imm_in(26) <= '0';
	WAIT FOR 320000 ps;
	imm_in(26) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_26;
-- imm_in[25]
t_prcs_imm_in_25: PROCESS
BEGIN
	imm_in(25) <= '0';
	WAIT FOR 160000 ps;
	imm_in(25) <= '1';
	WAIT FOR 320000 ps;
	imm_in(25) <= '0';
	WAIT FOR 160000 ps;
	imm_in(25) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_25;
-- imm_in[24]
t_prcs_imm_in_24: PROCESS
BEGIN
	imm_in(24) <= '0';
	WAIT FOR 480000 ps;
	imm_in(24) <= '1';
	WAIT FOR 320000 ps;
	imm_in(24) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_24;
-- imm_in[23]
t_prcs_imm_in_23: PROCESS
BEGIN
	imm_in(23) <= '0';
	WAIT FOR 160000 ps;
	imm_in(23) <= '1';
	WAIT FOR 480000 ps;
	imm_in(23) <= '0';
	WAIT FOR 160000 ps;
	imm_in(23) <= '1';
	WAIT FOR 160000 ps;
	imm_in(23) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_23;
-- imm_in[22]
t_prcs_imm_in_22: PROCESS
BEGIN
	imm_in(22) <= '0';
	WAIT FOR 160000 ps;
	imm_in(22) <= '1';
	WAIT FOR 480000 ps;
	imm_in(22) <= '0';
	WAIT FOR 160000 ps;
	imm_in(22) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_22;
-- imm_in[21]
t_prcs_imm_in_21: PROCESS
BEGIN
	imm_in(21) <= '1';
	WAIT FOR 480000 ps;
	imm_in(21) <= '0';
	WAIT FOR 160000 ps;
	imm_in(21) <= '1';
	WAIT FOR 160000 ps;
	imm_in(21) <= '0';
	WAIT FOR 160000 ps;
	imm_in(21) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_21;
-- imm_in[20]
t_prcs_imm_in_20: PROCESS
BEGIN
	imm_in(20) <= '1';
	WAIT FOR 160000 ps;
	imm_in(20) <= '0';
	WAIT FOR 160000 ps;
	imm_in(20) <= '1';
	WAIT FOR 320000 ps;
	imm_in(20) <= '0';
	WAIT FOR 160000 ps;
	imm_in(20) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_20;
-- imm_in[19]
t_prcs_imm_in_19: PROCESS
BEGIN
	imm_in(19) <= '0';
	WAIT FOR 160000 ps;
	imm_in(19) <= '1';
	WAIT FOR 160000 ps;
	imm_in(19) <= '0';
	WAIT FOR 160000 ps;
	imm_in(19) <= '1';
	WAIT FOR 320000 ps;
	imm_in(19) <= '0';
	WAIT FOR 160000 ps;
	imm_in(19) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_19;
-- imm_in[18]
t_prcs_imm_in_18: PROCESS
BEGIN
	imm_in(18) <= '1';
	WAIT FOR 480000 ps;
	imm_in(18) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_18;
-- imm_in[17]
t_prcs_imm_in_17: PROCESS
BEGIN
	imm_in(17) <= '1';
	WAIT FOR 640000 ps;
	imm_in(17) <= '0';
	WAIT FOR 160000 ps;
	imm_in(17) <= '1';
	WAIT FOR 160000 ps;
	imm_in(17) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_17;
-- imm_in[16]
t_prcs_imm_in_16: PROCESS
BEGIN
	imm_in(16) <= '1';
	WAIT FOR 160000 ps;
	imm_in(16) <= '0';
	WAIT FOR 480000 ps;
	imm_in(16) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_16;
-- imm_in[15]
t_prcs_imm_in_15: PROCESS
BEGIN
	imm_in(15) <= '0';
	WAIT FOR 640000 ps;
	imm_in(15) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_15;
-- imm_in[14]
t_prcs_imm_in_14: PROCESS
BEGIN
	imm_in(14) <= '1';
	WAIT FOR 640000 ps;
	imm_in(14) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_14;
-- imm_in[13]
t_prcs_imm_in_13: PROCESS
BEGIN
	imm_in(13) <= '1';
	WAIT FOR 160000 ps;
	imm_in(13) <= '0';
	WAIT FOR 160000 ps;
	imm_in(13) <= '1';
	WAIT FOR 320000 ps;
	imm_in(13) <= '0';
	WAIT FOR 320000 ps;
	imm_in(13) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_13;
-- imm_in[12]
t_prcs_imm_in_12: PROCESS
BEGIN
	imm_in(12) <= '1';
	WAIT FOR 160000 ps;
	imm_in(12) <= '0';
	WAIT FOR 320000 ps;
	imm_in(12) <= '1';
	WAIT FOR 160000 ps;
	imm_in(12) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_12;
-- imm_in[11]
t_prcs_imm_in_11: PROCESS
BEGIN
	imm_in(11) <= '1';
	WAIT FOR 320000 ps;
	imm_in(11) <= '0';
	WAIT FOR 320000 ps;
	imm_in(11) <= '1';
	WAIT FOR 160000 ps;
	imm_in(11) <= '0';
	WAIT FOR 160000 ps;
	imm_in(11) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_11;
-- imm_in[10]
t_prcs_imm_in_10: PROCESS
BEGIN
	imm_in(10) <= '0';
	WAIT FOR 480000 ps;
	imm_in(10) <= '1';
	WAIT FOR 160000 ps;
	imm_in(10) <= '0';
	WAIT FOR 160000 ps;
	imm_in(10) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_10;
-- imm_in[9]
t_prcs_imm_in_9: PROCESS
BEGIN
	imm_in(9) <= '1';
	WAIT FOR 160000 ps;
	imm_in(9) <= '0';
	WAIT FOR 160000 ps;
	imm_in(9) <= '1';
	WAIT FOR 160000 ps;
	imm_in(9) <= '0';
	WAIT FOR 320000 ps;
	imm_in(9) <= '1';
	WAIT FOR 160000 ps;
	imm_in(9) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_9;
-- imm_in[8]
t_prcs_imm_in_8: PROCESS
BEGIN
	imm_in(8) <= '0';
	WAIT FOR 320000 ps;
	imm_in(8) <= '1';
	WAIT FOR 640000 ps;
	imm_in(8) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_8;
-- imm_in[7]
t_prcs_imm_in_7: PROCESS
BEGIN
	imm_in(7) <= '0';
	WAIT FOR 320000 ps;
	imm_in(7) <= '1';
	WAIT FOR 160000 ps;
	imm_in(7) <= '0';
	WAIT FOR 160000 ps;
	imm_in(7) <= '1';
	WAIT FOR 160000 ps;
	imm_in(7) <= '0';
	WAIT FOR 160000 ps;
	imm_in(7) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_7;
-- imm_in[6]
t_prcs_imm_in_6: PROCESS
BEGIN
	imm_in(6) <= '0';
	WAIT FOR 160000 ps;
	imm_in(6) <= '1';
	WAIT FOR 320000 ps;
	imm_in(6) <= '0';
	WAIT FOR 160000 ps;
	imm_in(6) <= '1';
	WAIT FOR 160000 ps;
	imm_in(6) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_6;
-- imm_in[5]
t_prcs_imm_in_5: PROCESS
BEGIN
	imm_in(5) <= '1';
	WAIT FOR 160000 ps;
	imm_in(5) <= '0';
	WAIT FOR 320000 ps;
	imm_in(5) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_5;
-- imm_in[4]
t_prcs_imm_in_4: PROCESS
BEGIN
	imm_in(4) <= '0';
	WAIT FOR 160000 ps;
	imm_in(4) <= '1';
	WAIT FOR 480000 ps;
	imm_in(4) <= '0';
	WAIT FOR 160000 ps;
	imm_in(4) <= '1';
	WAIT FOR 160000 ps;
	imm_in(4) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_4;
-- imm_in[3]
t_prcs_imm_in_3: PROCESS
BEGIN
	imm_in(3) <= '1';
	WAIT FOR 320000 ps;
	imm_in(3) <= '0';
	WAIT FOR 640000 ps;
	imm_in(3) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_3;
-- imm_in[2]
t_prcs_imm_in_2: PROCESS
BEGIN
	imm_in(2) <= '0';
	WAIT FOR 160000 ps;
	imm_in(2) <= '1';
	WAIT FOR 320000 ps;
	imm_in(2) <= '0';
	WAIT FOR 160000 ps;
	imm_in(2) <= '1';
	WAIT FOR 160000 ps;
	imm_in(2) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_2;
-- imm_in[1]
t_prcs_imm_in_1: PROCESS
BEGIN
	imm_in(1) <= '1';
	WAIT FOR 160000 ps;
	imm_in(1) <= '0';
	WAIT FOR 480000 ps;
	imm_in(1) <= '1';
WAIT;
END PROCESS t_prcs_imm_in_1;
-- imm_in[0]
t_prcs_imm_in_0: PROCESS
BEGIN
	imm_in(0) <= '1';
	WAIT FOR 800000 ps;
	imm_in(0) <= '0';
WAIT;
END PROCESS t_prcs_imm_in_0;
-- pc_in[7]
t_prcs_pc_in_7: PROCESS
BEGIN
	pc_in(7) <= '0';
	WAIT FOR 160000 ps;
	pc_in(7) <= '1';
	WAIT FOR 160000 ps;
	pc_in(7) <= '0';
	WAIT FOR 480000 ps;
	pc_in(7) <= '1';
WAIT;
END PROCESS t_prcs_pc_in_7;
-- pc_in[6]
t_prcs_pc_in_6: PROCESS
BEGIN
	pc_in(6) <= '0';
	WAIT FOR 320000 ps;
	pc_in(6) <= '1';
	WAIT FOR 160000 ps;
	pc_in(6) <= '0';
	WAIT FOR 160000 ps;
	pc_in(6) <= '1';
	WAIT FOR 160000 ps;
	pc_in(6) <= '0';
WAIT;
END PROCESS t_prcs_pc_in_6;
-- pc_in[5]
t_prcs_pc_in_5: PROCESS
BEGIN
	pc_in(5) <= '0';
	WAIT FOR 640000 ps;
	pc_in(5) <= '1';
WAIT;
END PROCESS t_prcs_pc_in_5;
-- pc_in[4]
t_prcs_pc_in_4: PROCESS
BEGIN
	pc_in(4) <= '0';
	WAIT FOR 160000 ps;
	pc_in(4) <= '1';
	WAIT FOR 320000 ps;
	pc_in(4) <= '0';
	WAIT FOR 160000 ps;
	pc_in(4) <= '1';
	WAIT FOR 320000 ps;
	pc_in(4) <= '0';
WAIT;
END PROCESS t_prcs_pc_in_4;
-- pc_in[3]
t_prcs_pc_in_3: PROCESS
BEGIN
	pc_in(3) <= '0';
	WAIT FOR 160000 ps;
	pc_in(3) <= '1';
	WAIT FOR 320000 ps;
	pc_in(3) <= '0';
	WAIT FOR 160000 ps;
	pc_in(3) <= '1';
WAIT;
END PROCESS t_prcs_pc_in_3;
-- pc_in[2]
t_prcs_pc_in_2: PROCESS
BEGIN
	pc_in(2) <= '1';
	WAIT FOR 320000 ps;
	pc_in(2) <= '0';
	WAIT FOR 640000 ps;
	pc_in(2) <= '1';
WAIT;
END PROCESS t_prcs_pc_in_2;
-- pc_in[1]
t_prcs_pc_in_1: PROCESS
BEGIN
	pc_in(1) <= '0';
	WAIT FOR 160000 ps;
	pc_in(1) <= '1';
	WAIT FOR 160000 ps;
	pc_in(1) <= '0';
	WAIT FOR 320000 ps;
	pc_in(1) <= '1';
	WAIT FOR 160000 ps;
	pc_in(1) <= '0';
WAIT;
END PROCESS t_prcs_pc_in_1;
-- pc_in[0]
t_prcs_pc_in_0: PROCESS
BEGIN
	pc_in(0) <= '1';
	WAIT FOR 320000 ps;
	pc_in(0) <= '0';
	WAIT FOR 320000 ps;
	pc_in(0) <= '1';
WAIT;
END PROCESS t_prcs_pc_in_0;
-- src1_in[4]
t_prcs_src1_in_4: PROCESS
BEGIN
	src1_in(4) <= '1';
	WAIT FOR 160000 ps;
	src1_in(4) <= '0';
	WAIT FOR 320000 ps;
	src1_in(4) <= '1';
	WAIT FOR 160000 ps;
	src1_in(4) <= '0';
	WAIT FOR 160000 ps;
	src1_in(4) <= '1';
WAIT;
END PROCESS t_prcs_src1_in_4;
-- src1_in[3]
t_prcs_src1_in_3: PROCESS
BEGIN
	src1_in(3) <= '1';
	WAIT FOR 640000 ps;
	src1_in(3) <= '0';
WAIT;
END PROCESS t_prcs_src1_in_3;
-- src1_in[2]
t_prcs_src1_in_2: PROCESS
BEGIN
	src1_in(2) <= '1';
	WAIT FOR 480000 ps;
	src1_in(2) <= '0';
	WAIT FOR 320000 ps;
	src1_in(2) <= '1';
WAIT;
END PROCESS t_prcs_src1_in_2;
-- src1_in[1]
t_prcs_src1_in_1: PROCESS
BEGIN
	src1_in(1) <= '0';
	WAIT FOR 160000 ps;
	src1_in(1) <= '1';
	WAIT FOR 160000 ps;
	src1_in(1) <= '0';
	WAIT FOR 320000 ps;
	src1_in(1) <= '1';
	WAIT FOR 320000 ps;
	src1_in(1) <= '0';
WAIT;
END PROCESS t_prcs_src1_in_1;
-- src1_in[0]
t_prcs_src1_in_0: PROCESS
BEGIN
	src1_in(0) <= '0';
	WAIT FOR 320000 ps;
	src1_in(0) <= '1';
	WAIT FOR 480000 ps;
	src1_in(0) <= '0';
	WAIT FOR 160000 ps;
	src1_in(0) <= '1';
WAIT;
END PROCESS t_prcs_src1_in_0;
-- src2_in[4]
t_prcs_src2_in_4: PROCESS
BEGIN
	src2_in(4) <= '0';
	WAIT FOR 160000 ps;
	src2_in(4) <= '1';
	WAIT FOR 160000 ps;
	src2_in(4) <= '0';
	WAIT FOR 160000 ps;
	src2_in(4) <= '1';
	WAIT FOR 320000 ps;
	src2_in(4) <= '0';
	WAIT FOR 160000 ps;
	src2_in(4) <= '1';
WAIT;
END PROCESS t_prcs_src2_in_4;
-- src2_in[3]
t_prcs_src2_in_3: PROCESS
BEGIN
	src2_in(3) <= '1';
	WAIT FOR 160000 ps;
	src2_in(3) <= '0';
	WAIT FOR 160000 ps;
	src2_in(3) <= '1';
	WAIT FOR 480000 ps;
	src2_in(3) <= '0';
	WAIT FOR 160000 ps;
	src2_in(3) <= '1';
WAIT;
END PROCESS t_prcs_src2_in_3;
-- src2_in[2]
t_prcs_src2_in_2: PROCESS
BEGIN
	src2_in(2) <= '1';
	WAIT FOR 320000 ps;
	src2_in(2) <= '0';
	WAIT FOR 160000 ps;
	src2_in(2) <= '1';
	WAIT FOR 320000 ps;
	src2_in(2) <= '0';
WAIT;
END PROCESS t_prcs_src2_in_2;
-- src2_in[1]
t_prcs_src2_in_1: PROCESS
BEGIN
	src2_in(1) <= '1';
	WAIT FOR 320000 ps;
	src2_in(1) <= '0';
	WAIT FOR 320000 ps;
	src2_in(1) <= '1';
	WAIT FOR 160000 ps;
	src2_in(1) <= '0';
	WAIT FOR 160000 ps;
	src2_in(1) <= '1';
WAIT;
END PROCESS t_prcs_src2_in_1;
-- src2_in[0]
t_prcs_src2_in_0: PROCESS
BEGIN
	src2_in(0) <= '0';
	WAIT FOR 160000 ps;
	src2_in(0) <= '1';
	WAIT FOR 480000 ps;
	src2_in(0) <= '0';
	WAIT FOR 320000 ps;
	src2_in(0) <= '1';
WAIT;
END PROCESS t_prcs_src2_in_0;

-- stall
t_prcs_stall: PROCESS
BEGIN
	stall <= '0';
	WAIT FOR 360000 ps;
	stall <= '1';
	WAIT FOR 80000 ps;
	stall <= '0';
WAIT;
END PROCESS t_prcs_stall;
-- wradd_in[4]
t_prcs_wradd_in_4: PROCESS
BEGIN
	wradd_in(4) <= '0';
	WAIT FOR 480000 ps;
	wradd_in(4) <= '1';
	WAIT FOR 320000 ps;
	wradd_in(4) <= '0';
	WAIT FOR 160000 ps;
	wradd_in(4) <= '1';
WAIT;
END PROCESS t_prcs_wradd_in_4;
-- wradd_in[3]
t_prcs_wradd_in_3: PROCESS
BEGIN
	wradd_in(3) <= '1';
	WAIT FOR 160000 ps;
	wradd_in(3) <= '0';
	WAIT FOR 480000 ps;
	wradd_in(3) <= '1';
	WAIT FOR 160000 ps;
	wradd_in(3) <= '0';
	WAIT FOR 160000 ps;
	wradd_in(3) <= '1';
WAIT;
END PROCESS t_prcs_wradd_in_3;
-- wradd_in[2]
t_prcs_wradd_in_2: PROCESS
BEGIN
	wradd_in(2) <= '0';
	WAIT FOR 480000 ps;
	wradd_in(2) <= '1';
WAIT;
END PROCESS t_prcs_wradd_in_2;
-- wradd_in[1]
t_prcs_wradd_in_1: PROCESS
BEGIN
	wradd_in(1) <= '1';
	WAIT FOR 320000 ps;
	wradd_in(1) <= '0';
	WAIT FOR 160000 ps;
	wradd_in(1) <= '1';
	WAIT FOR 320000 ps;
	wradd_in(1) <= '0';
	WAIT FOR 160000 ps;
	wradd_in(1) <= '1';
WAIT;
END PROCESS t_prcs_wradd_in_1;
-- wradd_in[0]
t_prcs_wradd_in_0: PROCESS
BEGIN
	wradd_in(0) <= '1';
	WAIT FOR 480000 ps;
	wradd_in(0) <= '0';
	WAIT FOR 480000 ps;
	wradd_in(0) <= '1';
WAIT;
END PROCESS t_prcs_wradd_in_0;
END RD_reg_arch;
