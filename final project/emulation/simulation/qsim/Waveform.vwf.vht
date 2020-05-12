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
-- Generated on "05/01/2020 00:14:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          datapath
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY datapath_vhd_vec_tst IS
END datapath_vhd_vec_tst;
ARCHITECTURE datapath_arch OF datapath_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bra : STD_LOGIC;
SIGNAL car : STD_LOGIC;
SIGNAL clear : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL inputA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL InputB : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL PC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL result : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL zer : STD_LOGIC;
COMPONENT datapath
	PORT (
	bra : BUFFER STD_LOGIC;
	car : BUFFER STD_LOGIC;
	clear : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	inputA : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	InputB : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	PC : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	result : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	zer : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : datapath
	PORT MAP (
-- list connections between master ports and signals
	bra => bra,
	car => car,
	clear => clear,
	clock => clock,
	inputA => inputA,
	InputB => InputB,
	PC => PC,
	result => result,
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
	FOR i IN 1 TO 9
	LOOP
		clock <= '0';
		WAIT FOR 55000 ps;
		clock <= '1';
		WAIT FOR 55000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;
END datapath_arch;
