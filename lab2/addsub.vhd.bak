LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

ENTITY addsub IS
  GENERIC(n: INTEGER:= 64);
  PORT(
    OP:   IN     STD_LOGIC;
    A,B:  IN     STD_LOGIC_VECTOR(n-1 downto 0);
    R:    BUFFER STD_LOGIC_VECTOR(n-1 downto 0);
    COUT: OUT    STD_LOGIC
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
  SIGNAL result:STD_LOGIC_VECTOR(n-1 downto 0);
  SIGNAL carry: STD_LOGIC;
  BEGIN
    --take 2's complement when operation is 1 for subtraction
    bsig <= STD_LOGIC_VECTOR(UNSIGNED(NOT B) + 1) WHEN OP = '1' ELSE
            B;
    lacie(0) <= '0';
    FA: for i in 0 to n-1 GENERATE
      U1: fulladder PORT MAP(A => A(i),
                   B => bsig(i),
                   CIN => lacie(i),
                   SUM => result(i),
                   COUT => lacie(i+1)
						 );
    END GENERATE;
	 COUT   <= '1' when (A(n-1) = bsig(n-1)) AND (result(n-1) /= A(n-1)) ELSE
	            lacie(n);
	 R(n-1) <= A(n-1) when (A(n-1) = bsig(n-1)) AND (result(n-1) /= A(n-1)) ELSE
	           result(n-1);
	 R(n-2 downto 0) <= result(n-2 downto 0);
END LogicFunction;