LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;

ENTITY control_RD_reg IS
  PORT(
    clear, clock, ALUSrc_in, RegWrite_in, stall, staystall, morestall      : IN  STD_LOGIC;
    Branch_in, MemRead_in, MemtoReg_in, MemWrite_in  : IN  STD_LOGIC;
    ALUOp_in	                                      : IN  STD_LOGIC_VECTOR(1 downto 0);
	 ALUSrc_out, RegWrite_out, MemWrite_out           : OUT STD_LOGIC;
    Branch_out, MemRead_out, MemtoReg_out            : OUT STD_LOGIC;
    ALUOp_out	                                      : OUT STD_LOGIC_VECTOR(1 downto 0)
    );
END control_RD_reg;

ARCHITECTURE LogicFunction OF control_RD_reg IS
BEGIN
  PROCESS( Clear, Clock)
  BEGIN
    IF Clear = '1' THEN
	   ALUSrc_out   <= '0';
		RegWrite_out <= '0';
		MemWrite_out <= '0';
		Branch_out   <= '0';
		MemRead_out  <= '0';
		MemtoReg_out <= '0';
		ALUOp_out    <= "00";
	 ELSIF stall = '1' THEN
	   --reset branch one hazard is found
	   Branch_out <= '0';
	 ELSIF stall = '0' AND staystall = '0' AND morestall = '0'  THEN
	   IF rising_edge(clock) THEN
	   ALUSrc_out   <= ALUSrc_in;
		RegWrite_out <= RegWrite_in;
		MemWrite_out <= MemWrite_in;
		Branch_out   <= Branch_in;
		MemRead_out  <= MemRead_in;
		MemtoReg_out <= MemtoReg_in;
		ALUOp_out    <= ALUOp_in;
	  END IF;
    END IF;
  END PROCESS;
END LogicFunction;