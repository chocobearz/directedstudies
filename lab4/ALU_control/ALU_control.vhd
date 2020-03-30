LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.numeric_std.all;

ENTITY ALU_control IS
  PORT(
    Opcode : out STD_LOGIC_VECTOR(3 downto 0);
    ALUOp  : in  STD_LOGIC_VECTOR(1 downto 0);
    Funct7 : in  STD_LOGIC_VECTOR(6 downto 0);
	 Funct3 : in  STD_LOGIC_VECTOR(2 downto 0)
    );
END ALU_control;

ARCHITECTURE logic_function OF ALU_control IS
BEGIN
  PROCESS (ALUOp, Funct7, Funct3) IS
  BEGIN
	 IF (ALUOp = "00" OR ((ALUOp = "11" OR ALUOp = "10") AND Funct7 = "0000000" AND Funct3 = "000")) THEN
	   Opcode <= "0000";
	 ELSIF (ALUOp = "01" OR (ALUOp = "10" AND Funct7 = "0100000" AND Funct3 = "000")) THEN
	   Opcode <= "0010";
	 ELSIF ((ALUOp = "11" OR ALUOp = "10") AND Funct7 = "0000000" AND Funct3 = "111") THEN
	   Opcode <= "0111";
	 ELSIF ((ALUOp = "11" OR ALUOp = "10") AND Funct7 = "0000000" AND Funct3 = "110") THEN
	   Opcode <= "0110";
	 ELSIF ((ALUOp = "11" OR ALUOp = "10") AND Funct7 = "0000000" AND Funct3 = "100") THEN
      Opcode <= "0100";
	 ELSIF ((ALUOp = "10" OR ALUOp = "10") AND Funct7 = "0000000" AND Funct3 = "001") THEN
      Opcode <= "0001";
	 ELSIF (((ALUOp = "11" AND Funct7 = "0010011") OR (ALUOp = "11" AND Funct7 = "0100000"))AND Funct3 = "101") THEN
	   Opcode <= "0011";
	 ELSIF ((ALUOp = "11" OR ALUOp = "10") AND Funct7 = "0000000" AND Funct3 = "101") THEN
	   Opcode <= "0101";
    ELSE
	   Opcode <= "----";
    END IF;
  END PROCESS;
END logic_function;