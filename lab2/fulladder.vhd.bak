LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;

ENTITY fulladder IS
  PORT(
    A,B, CIN: IN  STD_LOGIC;
    SUM,COUT: OUT STD_LOGIC
  );
 END fulladder;

ARCHITECTURE LogicFunction OF fulladder IS
  BEGIN
    SUM  <= (A XOR B) XOR CIN;
    COUT <= (A AND B) OR (CIN AND A) OR (CIN AND B);
END LogicFunction;