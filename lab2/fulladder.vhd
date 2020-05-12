LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;

ENTITY fulladder IS
  PORT(
    A,B, CIN, CLR: IN  STD_LOGIC;
    SUM,COUT: OUT STD_LOGIC
  );
 END fulladder;

ARCHITECTURE LogicFunction OF fulladder IS
  BEGIN
  PROCESS(A, B, CIN, CLR)
  BEGIN
    IF CLR = '1' THEN
	   SUM <= '0';
		COUT <= '0';
	 ELSE
      SUM  <= (A XOR B) XOR CIN;
      COUT <= (A AND B) OR (CIN AND A) OR (CIN AND B);
	 END IF;
  END PROCESS;
END LogicFunction;