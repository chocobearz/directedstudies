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
     --sll
	  lacie <= to_integer(unsigned(B));
R <= (STD_LOGIC_VECTOR(shift_left(unsigned(A), lacie))) WHEN OP = "00" ELSE
     --srl
     (STD_LOGIC_VECTOR(shift_right(unsigned(A), lacie))) WHEN OP = "01" ELSE
     --sra
     (STD_LOGIC_VECTOR(shift_right(signed(A), lacie))) WHEN OP = "10";
	  --ASSERT false REPORT "something went wrong, incorrect operation type";
     --error for 11?

END LogicFunction;
