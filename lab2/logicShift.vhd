LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;

ENTITY logicShift IS
  GENERIC(n: INTEGER:= 64);
  PORT(
    OP:  IN  STD_LOGIC_VECTOR (1 downto 0);
    A,B: IN  STD_LOGIC_VECTOR(n-1 downto 0);
    R:   OUT STD_LOGIC_VECTOR(n-1 downto 0)
  );
END logicShift;

ARCHITECTURE LogicFunction OF logicShift IS
SIGNAL lacie: INTEGER;
BEGIN
  lacie <= to_integer(unsigned(B));  
  PROCESS(A, lacie, OP)
  BEGIN
	  --sll
	  IF OP = "00" THEN
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
