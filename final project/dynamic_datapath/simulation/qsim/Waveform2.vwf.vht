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
-- Generated on "04/30/2020 20:03:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          datapath_test
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY datapath_test_vhd_vec_tst IS
END datapath_test_vhd_vec_tst;
ARCHITECTURE datapath_test_arch OF datapath_test_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL alu11 : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL alu22 : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL bran : STD_LOGIC;
SIGNAL branchaddr : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL car : STD_LOGIC;
SIGNAL clear : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL imm : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL increment : STD_LOGIC;
SIGNAL pc : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pc1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL prdct : STD_LOGIC;
SIGNAL rd1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rd2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL sel1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL sel2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL selec : STD_LOGIC;
SIGNAL stl : STD_LOGIC;
SIGNAL writeaddr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL writedata : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL zer : STD_LOGIC;
COMPONENT datapath_test
	PORT (
	addr : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	alu11 : BUFFER STD_LOGIC_VECTOR(63 DOWNTO 0);
	alu22 : BUFFER STD_LOGIC_VECTOR(63 DOWNTO 0);
	bran : BUFFER STD_LOGIC;
	branchaddr : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	car : BUFFER STD_LOGIC;
	clear : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	imm : BUFFER STD_LOGIC_VECTOR(63 DOWNTO 0);
	increment : BUFFER STD_LOGIC;
	pc : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	pc1 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	prdct : BUFFER STD_LOGIC;
	rd1 : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	rd2 : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	sel1 : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	sel2 : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	selec : BUFFER STD_LOGIC;
	stl : BUFFER STD_LOGIC;
	writeaddr : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	writedata : BUFFER STD_LOGIC_VECTOR(63 DOWNTO 0);
	zer : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : datapath_test
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	alu11 => alu11,
	alu22 => alu22,
	bran => bran,
	branchaddr => branchaddr,
	car => car,
	clear => clear,
	clock => clock,
	imm => imm,
	increment => increment,
	pc => pc,
	pc1 => pc1,
	prdct => prdct,
	rd1 => rd1,
	rd2 => rd2,
	sel1 => sel1,
	sel2 => sel2,
	selec => selec,
	stl => stl,
	writeaddr => writeaddr,
	writedata => writedata,
	zer => zer
	);

-- clear
t_prcs_clear: PROCESS
BEGIN
	clear <= '1';
	WAIT FOR 40000 ps;
	clear <= '0';
WAIT;
END PROCESS t_prcs_clear;

-- clock
t_prcs_clock: PROCESS
BEGIN
	FOR i IN 1 TO 72
	LOOP
		clock <= '0';
		WAIT FOR 55000 ps;
		clock <= '1';
		WAIT FOR 55000 ps;
	END LOOP;
	clock <= '0';
	WAIT FOR 55000 ps;
	clock <= '1';
WAIT;
END PROCESS t_prcs_clock;
END datapath_test_arch;
