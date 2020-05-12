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
-- Generated on "04/25/2020 19:09:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          instruction_fetch
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY instruction_fetch_vhd_vec_tst IS
END instruction_fetch_vhd_vec_tst;
ARCHITECTURE instruction_fetch_arch OF instruction_fetch_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL inc : STD_LOGIC;
SIGNAL inst : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ld : STD_LOGIC;
SIGNAL pc : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL why : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT instruction_fetch
	PORT (
	addr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	inc : IN STD_LOGIC;
	inst : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	ld : IN STD_LOGIC;
	pc : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	why : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : instruction_fetch
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	clk => clk,
	clr => clr,
	inc => inc,
	inst => inst,
	ld => ld,
	pc => pc,
	why => why
	);
-- addr[7]
t_prcs_addr_7: PROCESS
BEGIN
	addr(7) <= '1';
	WAIT FOR 160000 ps;
	addr(7) <= '0';
	WAIT FOR 320000 ps;
	addr(7) <= '1';
	WAIT FOR 160000 ps;
	addr(7) <= '0';
	WAIT FOR 320000 ps;
	addr(7) <= '1';
WAIT;
END PROCESS t_prcs_addr_7;
-- addr[6]
t_prcs_addr_6: PROCESS
BEGIN
	addr(6) <= '1';
	WAIT FOR 400000 ps;
	addr(6) <= '0';
	WAIT FOR 160000 ps;
	addr(6) <= '1';
	WAIT FOR 80000 ps;
	addr(6) <= '0';
	WAIT FOR 160000 ps;
	addr(6) <= '1';
	WAIT FOR 80000 ps;
	addr(6) <= '0';
	WAIT FOR 80000 ps;
	addr(6) <= '1';
WAIT;
END PROCESS t_prcs_addr_6;
-- addr[5]
t_prcs_addr_5: PROCESS
BEGIN
	addr(5) <= '0';
	WAIT FOR 80000 ps;
	addr(5) <= '1';
	WAIT FOR 80000 ps;
	addr(5) <= '0';
	WAIT FOR 80000 ps;
	addr(5) <= '1';
	WAIT FOR 160000 ps;
	addr(5) <= '0';
	WAIT FOR 160000 ps;
	addr(5) <= '1';
	WAIT FOR 80000 ps;
	addr(5) <= '0';
	WAIT FOR 240000 ps;
	addr(5) <= '1';
WAIT;
END PROCESS t_prcs_addr_5;
-- addr[4]
t_prcs_addr_4: PROCESS
BEGIN
	addr(4) <= '1';
	WAIT FOR 320000 ps;
	addr(4) <= '0';
	WAIT FOR 80000 ps;
	addr(4) <= '1';
	WAIT FOR 80000 ps;
	addr(4) <= '0';
	WAIT FOR 80000 ps;
	addr(4) <= '1';
	WAIT FOR 400000 ps;
	addr(4) <= '0';
WAIT;
END PROCESS t_prcs_addr_4;
-- addr[3]
t_prcs_addr_3: PROCESS
BEGIN
	addr(3) <= '0';
	WAIT FOR 80000 ps;
	addr(3) <= '1';
	WAIT FOR 240000 ps;
	addr(3) <= '0';
	WAIT FOR 80000 ps;
	addr(3) <= '1';
	WAIT FOR 80000 ps;
	addr(3) <= '0';
	WAIT FOR 80000 ps;
	addr(3) <= '1';
	WAIT FOR 240000 ps;
	addr(3) <= '0';
	WAIT FOR 80000 ps;
	addr(3) <= '1';
WAIT;
END PROCESS t_prcs_addr_3;
-- addr[2]
t_prcs_addr_2: PROCESS
BEGIN
	addr(2) <= '1';
	WAIT FOR 80000 ps;
	addr(2) <= '0';
	WAIT FOR 80000 ps;
	addr(2) <= '1';
	WAIT FOR 160000 ps;
	addr(2) <= '0';
	WAIT FOR 160000 ps;
	addr(2) <= '1';
	WAIT FOR 160000 ps;
	addr(2) <= '0';
	WAIT FOR 80000 ps;
	addr(2) <= '1';
	WAIT FOR 80000 ps;
	addr(2) <= '0';
	WAIT FOR 160000 ps;
	addr(2) <= '1';
WAIT;
END PROCESS t_prcs_addr_2;
-- addr[1]
t_prcs_addr_1: PROCESS
BEGIN
	addr(1) <= '0';
	WAIT FOR 80000 ps;
	addr(1) <= '1';
	WAIT FOR 80000 ps;
	addr(1) <= '0';
	WAIT FOR 80000 ps;
	addr(1) <= '1';
	WAIT FOR 160000 ps;
	addr(1) <= '0';
	WAIT FOR 240000 ps;
	addr(1) <= '1';
	WAIT FOR 160000 ps;
	addr(1) <= '0';
	WAIT FOR 80000 ps;
	addr(1) <= '1';
	WAIT FOR 80000 ps;
	addr(1) <= '0';
WAIT;
END PROCESS t_prcs_addr_1;
-- addr[0]
t_prcs_addr_0: PROCESS
BEGIN
	addr(0) <= '0';
	WAIT FOR 400000 ps;
	addr(0) <= '1';
	WAIT FOR 160000 ps;
	addr(0) <= '0';
	WAIT FOR 80000 ps;
	addr(0) <= '1';
	WAIT FOR 80000 ps;
	addr(0) <= '0';
	WAIT FOR 160000 ps;
	addr(0) <= '1';
WAIT;
END PROCESS t_prcs_addr_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clk <= '0';
		WAIT FOR 40000 ps;
		clk <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- clr
t_prcs_clr: PROCESS
BEGIN
	clr <= '1';
	WAIT FOR 10000 ps;
	clr <= '0';
	WAIT FOR 390000 ps;
	clr <= '1';
	WAIT FOR 30000 ps;
	clr <= '0';
WAIT;
END PROCESS t_prcs_clr;

-- inc
t_prcs_inc: PROCESS
BEGIN
	inc <= '0';
	WAIT FOR 400000 ps;
	inc <= '1';
	WAIT FOR 30000 ps;
	inc <= '0';
WAIT;
END PROCESS t_prcs_inc;

-- ld
t_prcs_ld: PROCESS
BEGIN
	ld <= '1';
	WAIT FOR 400000 ps;
	ld <= '0';
	WAIT FOR 30000 ps;
	ld <= '1';
WAIT;
END PROCESS t_prcs_ld;
END instruction_fetch_arch;