LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.numeric_std.all;

ENTITY control_unit IS
  PORT(
    Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite : out STD_LOGIC;
    ALUOp	                                              : out  STD_LOGIC_VECTOR(1 downto 0);
    I                                                     : in  STD_LOGIC_VECTOR(6 downto 0);
    clock,clr, stall, staystall, morestall              : in  STD_LOGIC
    );
END control_unit;

ARCHITECTURE logic_function OF control_unit IS
BEGIN
  PROCESS (clock, I) IS
  BEGIN
    IF (clr = '1') THEN
	   Branch   <= '0';
		MemRead  <= '0';
		MemtoReg <= '0';
		MemWrite <= '0';
		ALUSrc   <= '0';
	   RegWrite <= '0';
	   ALUOp    <= "00";
    ELSIF RISING_EDGE(clock) THEN
	   IF  stall = '1' OR staystall = '1' OR morestall = '1' THEN
		  Branch   <= '0';
		  MemRead  <= '0';
		  MemtoReg <= '0';
		  MemWrite <= '0';
		  ALUSrc   <= '0';
		  RegWrite <= '0';
		  ALUOp    <= "00";
	   ELSIF I(1 downto 0) = "11" THEN
		  IF I(6 downto 2) = "01100" THEN
		    Branch   <= '0';
		    MemRead  <= '0';
		    MemtoReg <= '0';
		    MemWrite <= '0';
		    ALUSrc   <= '0';
			 RegWrite <= '1';
			 ALUOp    <= "10";
		  ELSIF I(6 downto 2) = "00000" THEN          Branch   <= '-';
		    Branch   <= '0';
		    MemRead  <= '1';
		    MemtoReg <= '1';
		    MemWrite <= '0';
		    ALUSrc   <= '1';
			 RegWrite <= '1';
			 ALUOp    <= "00";
		  ELSIF I(6 downto 2) = "01000" THEN
		    Branch   <= '0';
		    MemRead  <= '0';
		    MemtoReg <= '-';
		    MemWrite <= '1';
		    ALUSrc   <= '1';
			 RegWrite <= '0';
			 ALUOp    <= "00";
		  ELSIF I(6 downto 2) = "11000" THEN
		    Branch   <= '1';
		    MemRead  <= '0';
		    MemtoReg <= '-';
		    MemWrite <= '0';
		    ALUSrc   <= '0';
			 RegWrite <= '0';
			 ALUOp    <= "01";
		  ELSIF I(6 downto 2) = "00100" THEN
		    Branch   <= '0';
		    MemRead  <= '0';
		    MemtoReg <= '0';
		    MemWrite <= '0';
		    ALUSrc   <= '1';
			 RegWrite <= '1';
			 ALUOp    <= "11";
        ELSE
		    Branch   <= '-';
		    MemRead  <= '-';
		    MemtoReg <= '-';
		    MemWrite <= '-';
		    ALUSrc   <= '-';
			 RegWrite <= '-';
			 ALUOp    <= "--";
		  END IF;
      ELSE 
        Branch   <= '-';
		  MemRead  <= '-';
		  MemtoReg <= '-';
		  MemWrite <= '-';
		  ALUSrc   <= '-';
		  RegWrite <= '-';
		  ALUOp    <= "--";
      END IF;
    END IF;
  END PROCESS;
END logic_function;