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
-- Generated on "04/25/2020 18:55:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          register8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY register8_vhd_vec_tst IS
END register8_vhd_vec_tst;
ARCHITECTURE register8_arch OF register8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL Clr : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Ld : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT register8
	PORT (
	Clk : IN STD_LOGIC;
	Clr : IN STD_LOGIC;
	D : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Ld : IN STD_LOGIC;
	Q : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : register8
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	Clr => Clr,
	D => D,
	Ld => Ld,
	Q => Q
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		Clk <= '0';
		WAIT FOR 40000 ps;
		Clk <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	Clk <= '0';
WAIT;
END PROCESS t_prcs_Clk;

-- Clr
t_prcs_Clr: PROCESS
BEGIN
	Clr <= '1';
	WAIT FOR 20000 ps;
	Clr <= '0';
	WAIT FOR 370000 ps;
	Clr <= '1';
	WAIT FOR 110000 ps;
	Clr <= '0';
WAIT;
END PROCESS t_prcs_Clr;
-- D[7]
t_prcs_D_7: PROCESS
BEGIN
	D(7) <= '0';
WAIT;
END PROCESS t_prcs_D_7;
-- D[6]
t_prcs_D_6: PROCESS
BEGIN
	D(6) <= '0';
WAIT;
END PROCESS t_prcs_D_6;
-- D[5]
t_prcs_D_5: PROCESS
BEGIN
	D(5) <= '0';
WAIT;
END PROCESS t_prcs_D_5;
-- D[4]
t_prcs_D_4: PROCESS
BEGIN
	D(4) <= '0';
WAIT;
END PROCESS t_prcs_D_4;
-- D[3]
t_prcs_D_3: PROCESS
BEGIN
	D(3) <= '0';
	WAIT FOR 640000 ps;
	D(3) <= '1';
WAIT;
END PROCESS t_prcs_D_3;
-- D[2]
t_prcs_D_2: PROCESS
BEGIN
	D(2) <= '0';
	WAIT FOR 320000 ps;
	D(2) <= '1';
	WAIT FOR 320000 ps;
	D(2) <= '0';
	WAIT FOR 320000 ps;
	D(2) <= '1';
WAIT;
END PROCESS t_prcs_D_2;
-- D[1]
t_prcs_D_1: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		D(1) <= '0';
		WAIT FOR 160000 ps;
		D(1) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	D(1) <= '0';
WAIT;
END PROCESS t_prcs_D_1;
-- D[0]
t_prcs_D_0: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		D(0) <= '0';
		WAIT FOR 80000 ps;
		D(0) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	D(0) <= '0';
WAIT;
END PROCESS t_prcs_D_0;

-- Ld
t_prcs_Ld: PROCESS
BEGIN
	Ld <= '1';
	WAIT FOR 390000 ps;
	Ld <= '0';
	WAIT FOR 110000 ps;
	Ld <= '1';
WAIT;
END PROCESS t_prcs_Ld;
END register8_arch;
