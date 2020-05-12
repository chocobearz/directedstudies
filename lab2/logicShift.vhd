LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;

ENTITY logicShift IS
  GENERIC(n: INTEGER:= 64);
  PORT(
    OP:  IN  STD_LOGIC_VECTOR (1 downto 0);
    A,B: IN  STD_LOGIC_VECTOR(n-1 downto 0);
	 CLR: IN  STD_LOGIC;
    R:   OUT STD_LOGIC_VECTOR(n-1 downto 0)
  );
END logicShift;

ARCHITECTURE LogicFunction OF logicShift IS
SIGNAL lacie: INTEGER;
BEGIN
  lacie <= to_integer(unsigned(B));  
  PROCESS(A, lacie, OP, CLR)
  BEGIN
     IF CLR = '1' THEN
	    R <= (OTHERS => '0');
	  --sll
	  ELSIF OP = "00" THEN
       R <= (STD_LOGIC_VECTOR(shift_left(unsigned(A), lacie)));
	  --srl
	  ELSIF OP = "01" THEN
       R <= (STD_LOGIC_VECTOR(shift_right(unsigned(A), lacie)));
	  --sra
	  ELSIF OP = "10" THEN
       R <= (STD_LOGIC_VECTOR(shift_right(signed(A), lacie)));
	  END IF;
  END PROCESS;
END LogicFunction;
