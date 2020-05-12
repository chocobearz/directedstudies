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
-- Generated on "04/05/2020 11:38:38"
                                                             
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
SIGNAL address : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL alu1 : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL alu2 : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL aluop : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL aluresul : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL car : STD_LOGIC;
SIGNAL clear : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL datamemadd : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL datamemout : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL inc : STD_LOGIC;
SIGNAL load : STD_LOGIC;
SIGNAL memsel : STD_LOGIC;
SIGNAL rd1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rd2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rden : STD_LOGIC;
SIGNAL wrdata : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL wren : STD_LOGIC;
SIGNAL writeaddr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL writedata : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL zer : STD_LOGIC;
COMPONENT datapath_test
	PORT (
	address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	alu1 : BUFFER STD_LOGIC_VECTOR(63 DOWNTO 0);
	alu2 : BUFFER STD_LOGIC_VECTOR(63 DOWNTO 0);
	aluop : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	aluresul : BUFFER STD_LOGIC_VECTOR(63 DOWNTO 0);
	car : BUFFER STD_LOGIC;
	clear : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	datamemadd : BUFFER STD_LOGIC_VECTOR(63 DOWNTO 0);
	datamemout : BUFFER STD_LOGIC_VECTOR(63 DOWNTO 0);
	inc : IN STD_LOGIC;
	load : IN STD_LOGIC;
	memsel : BUFFER STD_LOGIC;
	rd1 : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	rd2 : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	rden : BUFFER STD_LOGIC;
	wrdata : BUFFER STD_LOGIC_VECTOR(63 DOWNTO 0);
	wren : BUFFER STD_LOGIC;
	writeaddr : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	writedata : BUFFER STD_LOGIC_VECTOR(63 DOWNTO 0);
	zer : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : datapath_test
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	alu1 => alu1,
	alu2 => alu2,
	aluop => aluop,
	aluresul => aluresul,
	car => car,
	clear => clear,
	clock => clock,
	datamemadd => datamemadd,
	datamemout => datamemout,
	inc => inc,
	load => load,
	memsel => memsel,
	rd1 => rd1,
	rd2 => rd2,
	rden => rden,
	wrdata => wrdata,
	wren => wren,
	writeaddr => writeaddr,
	writedata => writedata,
	zer => zer
	);
-- address[7]
t_prcs_address_7: PROCESS
BEGIN
	address(7) <= '0';
WAIT;
END PROCESS t_prcs_address_7;
-- address[6]
t_prcs_address_6: PROCESS
BEGIN
	address(6) <= '0';
WAIT;
END PROCESS t_prcs_address_6;
-- address[5]
t_prcs_address_5: PROCESS
BEGIN
	address(5) <= '0';
WAIT;
END PROCESS t_prcs_address_5;
-- address[4]
t_prcs_address_4: PROCESS
BEGIN
	address(4) <= '0';
WAIT;
END PROCESS t_prcs_address_4;
-- address[3]
t_prcs_address_3: PROCESS
BEGIN
	address(3) <= '0';
WAIT;
END PROCESS t_prcs_address_3;
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
	address(2) <= '0';
WAIT;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
	address(1) <= '0';
WAIT;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
	address(0) <= '0';
WAIT;
END PROCESS t_prcs_address_0;

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
LOOP
	clock <= '0';
	WAIT FOR 55000 ps;
	clock <= '1';
	WAIT FOR 55000 ps;
	IF (NOW >= 5500000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- inc
t_prcs_inc: PROCESS
BEGIN
	inc <= '0';
WAIT;
END PROCESS t_prcs_inc;

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '1';
WAIT;
END PROCESS t_prcs_load;
END datapath_test_arch;
