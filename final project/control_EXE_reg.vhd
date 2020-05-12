LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;

ENTITY control_EXE_reg IS
  PORT(
    clear, clock                                          : IN  STD_LOGIC;
    MemRead_in, MemtoReg_in, MemWrite_in, RegWrite_in     : IN  STD_LOGIC;
    MemRead_out, MemtoReg_out, MemWrite_out, RegWrite_out : OUT STD_LOGIC
    );
END control_EXE_reg;

ARCHITECTURE LogicFunction OF control_EXE_reg IS
BEGIN
  PROCESS( Clear, Clock)
  BEGIN
    IF ( Clear = '1' ) THEN
	 	RegWrite_out <= '0';
		MemWrite_out <= '0';
		MemRead_out  <= '0';
		MemtoReg_out <= '0';
	 ELSIF rising_edge(clock) THEN
	 	RegWrite_out <= RegWrite_in;
		MemWrite_out <= MemWrite_in;
		MemRead_out  <= MemRead_in;
		MemtoReg_out <= MemtoReg_in;
    END IF;
  END PROCESS;
END LogicFunction;