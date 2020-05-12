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
-- Generated on "04/30/2020 05:08:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          datapathfew
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY datapathfew_vhd_vec_tst IS
END datapathfew_vhd_vec_tst;
ARCHITECTURE datapathfew_arch OF datapathfew_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addcheck : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL addr : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL addr1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL alu1 : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL alu2 : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL bran : STD_LOGIC;
SIGNAL car : STD_LOGIC;
SIGNAL clear : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL f3 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL f32 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL hi : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL hmm : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL imm : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL increment : STD_LOGIC;
SIGNAL opcode : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL pc : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pccheck : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pctempo : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL prdct : STD_LOGIC;
SIGNAL rd1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rd2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL sel1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL sel2 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL selec : STD_LOGIC;
SIGNAL static_type : STD_LOGIC;
SIGNAL stl : STD_LOGIC;
SIGNAL test : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL writeaddr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL writedata : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL zer : STD_LOGIC;
COMPONENT datapathfew
	PORT (
	addcheck : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	addr : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	addr1 : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	alu1 : BUFFER STD_LOGIC_VECTOR(63 DOWNTO 0);
	alu2 : BUFFER STD_LOGIC_VECTOR(63 DOWNTO 0);
	bran : BUFFER STD_LOGIC;
	car : BUFFER STD_LOGIC;
	clear : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	f3 : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	f32 : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	hi : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	hmm : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	imm : BUFFER STD_LOGIC_VECTOR(63 DOWNTO 0);
	increment : BUFFER STD_LOGIC;
	opcode : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	pc : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	pccheck : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	pctempo : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	prdct : BUFFER STD_LOGIC;
	rd1 : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	rd2 : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	sel1 : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	sel2 : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0);
	selec : BUFFER STD_LOGIC;
	static_type : IN STD_LOGIC;
	stl : BUFFER STD_LOGIC;
	test : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	writeaddr : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	writedata : BUFFER STD_LOGIC_VECTOR(63 DOWNTO 0);
	zer : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : datapathfew
	PORT MAP (
-- list connections between master ports and signals
	addcheck => addcheck,
	addr => addr,
	addr1 => addr1,
	alu1 => alu1,
	alu2 => alu2,
	bran => bran,
	car => car,
	clear => clear,
	clock => clock,
	f3 => f3,
	f32 => f32,
	hi => hi,
	hmm => hmm,
	imm => imm,
	increment => increment,
	opcode => opcode,
	pc => pc,
	pccheck => pccheck,
	pctempo => pctempo,
	prdct => prdct,
	rd1 => rd1,
	rd2 => rd2,
	sel1 => sel1,
	sel2 => sel2,
	selec => selec,
	static_type => static_type,
	stl => stl,
	test => test,
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

-- static_type
t_prcs_static_type: PROCESS
BEGIN
	static_type <= '1';
WAIT;
END PROCESS t_prcs_static_type;
END datapathfew_arch;
