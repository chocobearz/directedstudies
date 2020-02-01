LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

--overflow??
ENTITY addsub IS
  GENERIC(n: INTEGER:= 64);
  PORT(
    OP:   IN  STD_LOGIC;
    A,B:  IN  STD_LOGIC_VECTOR(n-1 downto 0);
    R:    OUT STD_LOGIC_VECTOR(n-1 downto 0);
    COUT: OUT STD_LOGIC
  );
 END addsub;

ARCHITECTURE LogicFunction OF addsub IS
  COMPONENT fulladder IS
    PORT(
      A,B, CIN: IN  STD_LOGIC;
      SUM,COUT: OUT STD_LOGIC
    );
  END COMPONENT;
  SIGNAL bsig:  STD_LOGIC_VECTOR(n-1 downto 0);
  SIGNAL lacie: STD_LOGIC_VECTOR(n downto 0);
  BEGIN
    --take 2's complement when operation is 1 for subtraction
    bsig <= STD_LOGIC_VECTOR(UNSIGNED(NOT B) + 1) WHEN OP = '1' ELSE
            B;
    lacie(0) <= '0';
    COUT <= lacie(n);
    FA: for i in 0 to n-1 GENERATE
      U1: fulladder PORT MAP(A => A(i),
                   B => bsig(i),
                   CIN => lacie(i),
                   SUM => R(i),
                   COUT => lacie(i+1)
						 );
    END GENERATE;
END LogicFunction;