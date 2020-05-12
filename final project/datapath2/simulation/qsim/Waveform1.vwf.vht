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
-- Generated on "04/30/2020 10:32:15"
                                                             
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
SIGNAL clear : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
COMPONENT datapath
	PORT (
	clear : IN STD_LOGIC;
	clock : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : datapath
	PORT MAP (
-- list connections between master ports and signals
	clear => clear,
	clock => clock
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
	FOR i IN 1 TO 181
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
END datapath_arch;
