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
-- Generated on "04/29/2020 22:36:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          dynamic_prediction_unit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY dynamic_prediction_unit_vhd_vec_tst IS
END dynamic_prediction_unit_vhd_vec_tst;
ARCHITECTURE dynamic_prediction_unit_arch OF dynamic_prediction_unit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL branch : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL predict : STD_LOGIC;
SIGNAL taken : STD_LOGIC;
COMPONENT dynamic_prediction_unit
	PORT (
	branch : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	predict : OUT STD_LOGIC;
	taken : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : dynamic_prediction_unit
	PORT MAP (
-- list connections between master ports and signals
	branch => branch,
	clock => clock,
	clr => clr,
	predict => predict,
	taken => taken
	);

-- branch
t_prcs_branch: PROCESS
BEGIN
	branch <= '1';
	WAIT FOR 160000 ps;
	branch <= '0';
	WAIT FOR 160000 ps;
	branch <= '1';
	WAIT FOR 200000 ps;
	branch <= '0';
	WAIT FOR 120000 ps;
	branch <= '1';
	WAIT FOR 80000 ps;
	branch <= '0';
	WAIT FOR 80000 ps;
	branch <= '1';
WAIT;
END PROCESS t_prcs_branch;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- clr
t_prcs_clr: PROCESS
BEGIN
	clr <= '1';
	WAIT FOR 10000 ps;
	clr <= '0';
WAIT;
END PROCESS t_prcs_clr;

-- taken
t_prcs_taken: PROCESS
BEGIN
	taken <= '0';
	WAIT FOR 50000 ps;
	taken <= '1';
	WAIT FOR 70000 ps;
	taken <= '0';
	WAIT FOR 530000 ps;
	taken <= '1';
	WAIT FOR 20000 ps;
	taken <= '0';
	WAIT FOR 140000 ps;
	taken <= '1';
	WAIT FOR 30000 ps;
	taken <= '0';
	WAIT FOR 50000 ps;
	taken <= '1';
	WAIT FOR 50000 ps;
	taken <= '0';
WAIT;
END PROCESS t_prcs_taken;
END dynamic_prediction_unit_arch;
