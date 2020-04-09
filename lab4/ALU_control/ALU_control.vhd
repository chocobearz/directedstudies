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
  --ADD
   -- if store or load, or r-type with func7 = 0000000 and funct3 = 000 , or i-type and funct 3 = 000
	 IF (ALUOp = "00" OR ( ((ALUOp = "10"AND Funct7 = "0000000") OR ALUOp = "11") AND Funct3 = "000") ) THEN
	   Opcode <= "0000";
	--SUB
	-- if branch or r-type with funct7 = 0100000 and funct3 = 000
	 ELSIF (ALUOp = "01" OR (ALUOp = "10" AND Funct7 = "0100000" AND Funct3 = "000")) THEN
	   Opcode <= "0010";
	-- AND
	-- r or i type and funct3 = 111
	 ELSIF ((ALUOp = "11" OR ALUOp = "10") AND Funct3 = "111") THEN
	   Opcode <= "0111";
	-- OR
	-- r or i type and funct3 = 110
	 ELSIF ((ALUOp = "11" OR ALUOp = "10") AND Funct3 = "110") THEN
	   Opcode <= "0110";
	-- XOR
	-- r type and funct7 = 0110011 or i type, and funct3 = 100
	 ELSIF ((ALUOp = "11" OR (ALUOp = "10" AND Funct7 = "0110011")) AND Funct3 = "100") THEN
      Opcode <= "0100";
	-- SLL
	-- r or i type and funct3 = 001
	 ELSIF ((ALUOp = "10" OR ALUOp = "11") AND Funct3 = "001") THEN
      Opcode <= "0001";
	-- SRA
	-- r and funct7 = 0010011 or r and funct7 = 0100000, and funct3 =101
	 ELSIF (((ALUOp = "10" AND Funct7 = "0010011") OR (ALUOp = "11" AND Funct7 = "0100000"))AND Funct3 = "101") THEN
	   Opcode <= "0011";
	-- SRL
	-- r or i type and funct7 = 0000000 and funct3 = 101
	 ELSIF ((ALUOp = "11" OR ALUOp = "10") AND Funct7 = "0000000" AND Funct3 = "101") THEN
	   Opcode <= "0101";
	-- anything else we have don't care, this is not an option
    ELSE
	   Opcode <= "----";
    END IF;
  END PROCESS;
END logic_function;