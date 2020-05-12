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
-- Generated on "04/28/2020 14:43:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          early_forwarding_unit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY early_forwarding_unit_vhd_vec_tst IS
END early_forwarding_unit_vhd_vec_tst;
ARCHITECTURE early_forwarding_unit_arch OF early_forwarding_unit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clr : STD_LOGIC;
SIGNAL EXE_wraddr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL fwdA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL fwdB : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL MEM_wraddr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL RD_wraddr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL src1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL src2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT early_forwarding_unit
	PORT (
	clr : IN STD_LOGIC;
	EXE_wraddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	fwdA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	fwdB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	MEM_wraddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	RD_wraddr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	src1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	src2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : early_forwarding_unit
	PORT MAP (
-- list connections between master ports and signals
	clr => clr,
	EXE_wraddr => EXE_wraddr,
	fwdA => fwdA,
	fwdB => fwdB,
	MEM_wraddr => MEM_wraddr,
	RD_wraddr => RD_wraddr,
	src1 => src1,
	src2 => src2
	);

-- clr
t_prcs_clr: PROCESS
BEGIN
	clr <= '1';
	WAIT FOR 30000 ps;
	clr <= '0';
WAIT;
END PROCESS t_prcs_clr;
-- EXE_wraddr[4]
t_prcs_EXE_wraddr_4: PROCESS
BEGIN
	EXE_wraddr(4) <= '0';
	WAIT FOR 320000 ps;
	EXE_wraddr(4) <= '1';
	WAIT FOR 320000 ps;
	EXE_wraddr(4) <= '0';
WAIT;
END PROCESS t_prcs_EXE_wraddr_4;
-- EXE_wraddr[3]
t_prcs_EXE_wraddr_3: PROCESS
BEGIN
	EXE_wraddr(3) <= '0';
	WAIT FOR 320000 ps;
	EXE_wraddr(3) <= '1';
	WAIT FOR 160000 ps;
	EXE_wraddr(3) <= '0';
	WAIT FOR 60000 ps;
	EXE_wraddr(3) <= '1';
	WAIT FOR 100000 ps;
	EXE_wraddr(3) <= '0';
WAIT;
END PROCESS t_prcs_EXE_wraddr_3;
-- EXE_wraddr[2]
t_prcs_EXE_wraddr_2: PROCESS
BEGIN
	EXE_wraddr(2) <= '0';
	WAIT FOR 320000 ps;
	EXE_wraddr(2) <= '1';
	WAIT FOR 160000 ps;
	EXE_wraddr(2) <= '0';
WAIT;
END PROCESS t_prcs_EXE_wraddr_2;
-- EXE_wraddr[1]
t_prcs_EXE_wraddr_1: PROCESS
BEGIN
	EXE_wraddr(1) <= '0';
	WAIT FOR 320000 ps;
	EXE_wraddr(1) <= '1';
	WAIT FOR 160000 ps;
	EXE_wraddr(1) <= '0';
	WAIT FOR 60000 ps;
	EXE_wraddr(1) <= '1';
	WAIT FOR 100000 ps;
	EXE_wraddr(1) <= '0';
WAIT;
END PROCESS t_prcs_EXE_wraddr_1;
-- EXE_wraddr[0]
t_prcs_EXE_wraddr_0: PROCESS
BEGIN
	EXE_wraddr(0) <= '0';
	WAIT FOR 170000 ps;
	EXE_wraddr(0) <= '1';
	WAIT FOR 310000 ps;
	EXE_wraddr(0) <= '0';
	WAIT FOR 60000 ps;
	EXE_wraddr(0) <= '1';
	WAIT FOR 100000 ps;
	EXE_wraddr(0) <= '0';
WAIT;
END PROCESS t_prcs_EXE_wraddr_0;
-- MEM_wraddr[4]
t_prcs_MEM_wraddr_4: PROCESS
BEGIN
	MEM_wraddr(4) <= '0';
	WAIT FOR 320000 ps;
	MEM_wraddr(4) <= '1';
	WAIT FOR 320000 ps;
	MEM_wraddr(4) <= '0';
WAIT;
END PROCESS t_prcs_MEM_wraddr_4;
-- MEM_wraddr[3]
t_prcs_MEM_wraddr_3: PROCESS
BEGIN
	MEM_wraddr(3) <= '0';
	WAIT FOR 230000 ps;
	MEM_wraddr(3) <= '1';
	WAIT FOR 250000 ps;
	MEM_wraddr(3) <= '0';
	WAIT FOR 60000 ps;
	MEM_wraddr(3) <= '1';
	WAIT FOR 100000 ps;
	MEM_wraddr(3) <= '0';
WAIT;
END PROCESS t_prcs_MEM_wraddr_3;
-- MEM_wraddr[2]
t_prcs_MEM_wraddr_2: PROCESS
BEGIN
	MEM_wraddr(2) <= '0';
	WAIT FOR 320000 ps;
	MEM_wraddr(2) <= '1';
	WAIT FOR 160000 ps;
	MEM_wraddr(2) <= '0';
WAIT;
END PROCESS t_prcs_MEM_wraddr_2;
-- MEM_wraddr[1]
t_prcs_MEM_wraddr_1: PROCESS
BEGIN
	MEM_wraddr(1) <= '0';
	WAIT FOR 230000 ps;
	MEM_wraddr(1) <= '1';
	WAIT FOR 410000 ps;
	MEM_wraddr(1) <= '0';
WAIT;
END PROCESS t_prcs_MEM_wraddr_1;
-- MEM_wraddr[0]
t_prcs_MEM_wraddr_0: PROCESS
BEGIN
	MEM_wraddr(0) <= '0';
	WAIT FOR 170000 ps;
	MEM_wraddr(0) <= '1';
	WAIT FOR 310000 ps;
	MEM_wraddr(0) <= '0';
	WAIT FOR 60000 ps;
	MEM_wraddr(0) <= '1';
	WAIT FOR 100000 ps;
	MEM_wraddr(0) <= '0';
WAIT;
END PROCESS t_prcs_MEM_wraddr_0;
-- RD_wraddr[4]
t_prcs_RD_wraddr_4: PROCESS
BEGIN
	RD_wraddr(4) <= '0';
	WAIT FOR 320000 ps;
	RD_wraddr(4) <= '1';
	WAIT FOR 320000 ps;
	RD_wraddr(4) <= '0';
WAIT;
END PROCESS t_prcs_RD_wraddr_4;
-- RD_wraddr[3]
t_prcs_RD_wraddr_3: PROCESS
BEGIN
	RD_wraddr(3) <= '0';
	WAIT FOR 230000 ps;
	RD_wraddr(3) <= '1';
	WAIT FOR 250000 ps;
	RD_wraddr(3) <= '0';
	WAIT FOR 60000 ps;
	RD_wraddr(3) <= '1';
	WAIT FOR 100000 ps;
	RD_wraddr(3) <= '0';
WAIT;
END PROCESS t_prcs_RD_wraddr_3;
-- RD_wraddr[2]
t_prcs_RD_wraddr_2: PROCESS
BEGIN
	RD_wraddr(2) <= '0';
	WAIT FOR 320000 ps;
	RD_wraddr(2) <= '1';
	WAIT FOR 160000 ps;
	RD_wraddr(2) <= '0';
WAIT;
END PROCESS t_prcs_RD_wraddr_2;
-- RD_wraddr[1]
t_prcs_RD_wraddr_1: PROCESS
BEGIN
	RD_wraddr(1) <= '0';
	WAIT FOR 230000 ps;
	RD_wraddr(1) <= '1';
	WAIT FOR 410000 ps;
	RD_wraddr(1) <= '0';
WAIT;
END PROCESS t_prcs_RD_wraddr_1;
-- RD_wraddr[0]
t_prcs_RD_wraddr_0: PROCESS
BEGIN
	RD_wraddr(0) <= '0';
	WAIT FOR 170000 ps;
	RD_wraddr(0) <= '1';
	WAIT FOR 310000 ps;
	RD_wraddr(0) <= '0';
	WAIT FOR 60000 ps;
	RD_wraddr(0) <= '1';
	WAIT FOR 100000 ps;
	RD_wraddr(0) <= '0';
WAIT;
END PROCESS t_prcs_RD_wraddr_0;
-- src1[4]
t_prcs_src1_4: PROCESS
BEGIN
	src1(4) <= '0';
	WAIT FOR 320000 ps;
	src1(4) <= '1';
	WAIT FOR 320000 ps;
	src1(4) <= '0';
	WAIT FOR 320000 ps;
	src1(4) <= '1';
WAIT;
END PROCESS t_prcs_src1_4;
-- src1[3]
t_prcs_src1_3: PROCESS
BEGIN
	src1(3) <= '1';
	WAIT FOR 160000 ps;
	src1(3) <= '0';
	WAIT FOR 160000 ps;
	src1(3) <= '1';
	WAIT FOR 160000 ps;
	src1(3) <= '0';
	WAIT FOR 160000 ps;
	src1(3) <= '1';
	WAIT FOR 160000 ps;
	src1(3) <= '0';
WAIT;
END PROCESS t_prcs_src1_3;
-- src1[2]
t_prcs_src1_2: PROCESS
BEGIN
	src1(2) <= '0';
	WAIT FOR 320000 ps;
	src1(2) <= '1';
	WAIT FOR 160000 ps;
	src1(2) <= '0';
	WAIT FOR 160000 ps;
	src1(2) <= '1';
	WAIT FOR 160000 ps;
	src1(2) <= '0';
	WAIT FOR 160000 ps;
	src1(2) <= '1';
WAIT;
END PROCESS t_prcs_src1_2;
-- src1[1]
t_prcs_src1_1: PROCESS
BEGIN
	src1(1) <= '0';
	WAIT FOR 480000 ps;
	src1(1) <= '1';
	WAIT FOR 160000 ps;
	src1(1) <= '0';
	WAIT FOR 320000 ps;
	src1(1) <= '1';
WAIT;
END PROCESS t_prcs_src1_1;
-- src1[0]
t_prcs_src1_0: PROCESS
BEGIN
	src1(0) <= '1';
	WAIT FOR 480000 ps;
	src1(0) <= '0';
	WAIT FOR 320000 ps;
	src1(0) <= '1';
WAIT;
END PROCESS t_prcs_src1_0;
-- src2[4]
t_prcs_src2_4: PROCESS
BEGIN
	src2(4) <= '1';
	WAIT FOR 160000 ps;
	src2(4) <= '0';
	WAIT FOR 160000 ps;
	src2(4) <= '1';
	WAIT FOR 480000 ps;
	src2(4) <= '0';
	WAIT FOR 160000 ps;
	src2(4) <= '1';
WAIT;
END PROCESS t_prcs_src2_4;
-- src2[3]
t_prcs_src2_3: PROCESS
BEGIN
	src2(3) <= '1';
	WAIT FOR 320000 ps;
	src2(3) <= '0';
	WAIT FOR 160000 ps;
	src2(3) <= '1';
	WAIT FOR 160000 ps;
	src2(3) <= '0';
	WAIT FOR 160000 ps;
	src2(3) <= '1';
WAIT;
END PROCESS t_prcs_src2_3;
-- src2[2]
t_prcs_src2_2: PROCESS
BEGIN
	src2(2) <= '1';
	WAIT FOR 160000 ps;
	src2(2) <= '0';
	WAIT FOR 160000 ps;
	src2(2) <= '1';
	WAIT FOR 160000 ps;
	src2(2) <= '0';
	WAIT FOR 160000 ps;
	src2(2) <= '1';
	WAIT FOR 320000 ps;
	src2(2) <= '0';
WAIT;
END PROCESS t_prcs_src2_2;
-- src2[1]
t_prcs_src2_1: PROCESS
BEGIN
	src2(1) <= '1';
	WAIT FOR 320000 ps;
	src2(1) <= '0';
	WAIT FOR 160000 ps;
	src2(1) <= '1';
	WAIT FOR 160000 ps;
	src2(1) <= '0';
	WAIT FOR 160000 ps;
	src2(1) <= '1';
	WAIT FOR 160000 ps;
	src2(1) <= '0';
WAIT;
END PROCESS t_prcs_src2_1;
-- src2[0]
t_prcs_src2_0: PROCESS
BEGIN
	src2(0) <= '1';
	WAIT FOR 320000 ps;
	src2(0) <= '0';
	WAIT FOR 160000 ps;
	src2(0) <= '1';
	WAIT FOR 480000 ps;
	src2(0) <= '0';
WAIT;
END PROCESS t_prcs_src2_0;
END early_forwarding_unit_arch;
