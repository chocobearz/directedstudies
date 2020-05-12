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
-- Generated on "04/22/2020 20:45:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          hazard_detection_unit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY hazard_detection_unit_vhd_vec_tst IS
END hazard_detection_unit_vhd_vec_tst;
ARCHITECTURE hazard_detection_unit_arch OF hazard_detection_unit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL actual : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL hazard : STD_LOGIC;
SIGNAL predicted : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT hazard_detection_unit
	PORT (
	actual : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	clock : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	hazard : OUT STD_LOGIC;
	predicted : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : hazard_detection_unit
	PORT MAP (
-- list connections between master ports and signals
	actual => actual,
	clock => clock,
	clr => clr,
	hazard => hazard,
	predicted => predicted
	);
-- actual[7]
t_prcs_actual_7: PROCESS
BEGIN
	actual(7) <= '0';
	WAIT FOR 290000 ps;
	actual(7) <= '1';
	WAIT FOR 230000 ps;
	actual(7) <= '0';
	WAIT FOR 280000 ps;
	actual(7) <= '1';
	WAIT FOR 80000 ps;
	actual(7) <= '0';
WAIT;
END PROCESS t_prcs_actual_7;
-- actual[6]
t_prcs_actual_6: PROCESS
BEGIN
	actual(6) <= '0';
	WAIT FOR 800000 ps;
	actual(6) <= '1';
WAIT;
END PROCESS t_prcs_actual_6;
-- actual[5]
t_prcs_actual_5: PROCESS
BEGIN
	actual(5) <= '0';
	WAIT FOR 290000 ps;
	actual(5) <= '1';
	WAIT FOR 230000 ps;
	actual(5) <= '0';
	WAIT FOR 280000 ps;
	actual(5) <= '1';
	WAIT FOR 80000 ps;
	actual(5) <= '0';
WAIT;
END PROCESS t_prcs_actual_5;
-- actual[4]
t_prcs_actual_4: PROCESS
BEGIN
	actual(4) <= '0';
	WAIT FOR 290000 ps;
	actual(4) <= '1';
	WAIT FOR 230000 ps;
	actual(4) <= '0';
	WAIT FOR 280000 ps;
	actual(4) <= '1';
WAIT;
END PROCESS t_prcs_actual_4;
-- actual[3]
t_prcs_actual_3: PROCESS
BEGIN
	actual(3) <= '1';
	WAIT FOR 290000 ps;
	actual(3) <= '0';
	WAIT FOR 230000 ps;
	actual(3) <= '1';
	WAIT FOR 360000 ps;
	actual(3) <= '0';
WAIT;
END PROCESS t_prcs_actual_3;
-- actual[2]
t_prcs_actual_2: PROCESS
BEGIN
	actual(2) <= '1';
WAIT;
END PROCESS t_prcs_actual_2;
-- actual[1]
t_prcs_actual_1: PROCESS
BEGIN
	actual(1) <= '1';
	WAIT FOR 880000 ps;
	actual(1) <= '0';
WAIT;
END PROCESS t_prcs_actual_1;
-- actual[0]
t_prcs_actual_0: PROCESS
BEGIN
	actual(0) <= '0';
	WAIT FOR 290000 ps;
	actual(0) <= '1';
	WAIT FOR 230000 ps;
	actual(0) <= '0';
	WAIT FOR 280000 ps;
	actual(0) <= '1';
	WAIT FOR 80000 ps;
	actual(0) <= '0';
WAIT;
END PROCESS t_prcs_actual_0;

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

-- clr
t_prcs_clr: PROCESS
BEGIN
	clr <= '1';
	WAIT FOR 20000 ps;
	clr <= '0';
WAIT;
END PROCESS t_prcs_clr;
-- predicted[7]
t_prcs_predicted_7: PROCESS
BEGIN
	predicted(7) <= '0';
WAIT;
END PROCESS t_prcs_predicted_7;
-- predicted[6]
t_prcs_predicted_6: PROCESS
BEGIN
	predicted(6) <= '1';
	WAIT FOR 240000 ps;
	predicted(6) <= '0';
	WAIT FOR 560000 ps;
	predicted(6) <= '1';
WAIT;
END PROCESS t_prcs_predicted_6;
-- predicted[5]
t_prcs_predicted_5: PROCESS
BEGIN
	predicted(5) <= '0';
	WAIT FOR 620000 ps;
	predicted(5) <= '1';
	WAIT FOR 180000 ps;
	predicted(5) <= '0';
WAIT;
END PROCESS t_prcs_predicted_5;
-- predicted[4]
t_prcs_predicted_4: PROCESS
BEGIN
	predicted(4) <= '1';
	WAIT FOR 240000 ps;
	predicted(4) <= '0';
	WAIT FOR 560000 ps;
	predicted(4) <= '1';
WAIT;
END PROCESS t_prcs_predicted_4;
-- predicted[3]
t_prcs_predicted_3: PROCESS
BEGIN
	predicted(3) <= '1';
	WAIT FOR 800000 ps;
	predicted(3) <= '0';
WAIT;
END PROCESS t_prcs_predicted_3;
-- predicted[2]
t_prcs_predicted_2: PROCESS
BEGIN
	predicted(2) <= '1';
	WAIT FOR 620000 ps;
	predicted(2) <= '0';
	WAIT FOR 180000 ps;
	predicted(2) <= '1';
WAIT;
END PROCESS t_prcs_predicted_2;
-- predicted[1]
t_prcs_predicted_1: PROCESS
BEGIN
	predicted(1) <= '1';
	WAIT FOR 620000 ps;
	predicted(1) <= '0';
WAIT;
END PROCESS t_prcs_predicted_1;
-- predicted[0]
t_prcs_predicted_0: PROCESS
BEGIN
	predicted(0) <= '1';
	WAIT FOR 240000 ps;
	predicted(0) <= '0';
	WAIT FOR 380000 ps;
	predicted(0) <= '1';
	WAIT FOR 180000 ps;
	predicted(0) <= '0';
WAIT;
END PROCESS t_prcs_predicted_0;
END hazard_detection_unit_arch;
