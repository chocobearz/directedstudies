LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.all;

ENTITY ALU_branch IS
  GENERIC(n: INTEGER:= 64);
  PORT(
    inputA,inputB: IN  STD_LOGIC_VECTOR(n-1 downto 0);
    result:        OUT STD_LOGIC_VECTOR(n-1 downto 0);
	 z,c:           OUT STD_LOGIC;
	 clr:           IN  STD_LOGIC
  );
END ALU_branch;

ARCHITECTURE LogicFunction OF ALU_branch IS
COMPONENT addsub IS
  PORT(
    OP, CLR:   IN  STD_LOGIC;
    A,B:  IN  STD_LOGIC_VECTOR(n-1 downto 0);
    R:    OUT STD_LOGIC_VECTOR(n-1 downto 0);
    COUT:    OUT STD_LOGIC
  );
END COMPONENT;

SIGNAL diffout     : STD_LOGIC;
SIGNAL diff, r     : STD_LOGIC_VECTOR(n-1 downto 0);
CONSTANT all_zeros : STD_LOGIC_VECTOR(n-1 downto 0) := (others => '0');
BEGIN

U1: addsub PORT MAP(OP => '1',
                    A => inputA,
                    B => inputB,
                    R => diff,
                    COUT => diffout,
						  clr => CLR
          );
			 
  PROCESS( clr, inputB, inputA)
  BEGIN
    IF( clr = '1') THEN
	   z <= '0';
	   c <= '0';
	   result <= (OTHERS => '0');
	 ELSE
     r <= diff;
     --need to set carry to 1 when subtracting 0 from a positive
     IF (inputB = "0000000000000000000000000000000000000000000000000000000000000000"
	    AND inputA /= "0000000000000000000000000000000000000000000000000000000000000000"
	    AND inputA(63) = '0') THEN
	    c <= '1';
     ELSE
	    c <= diffout;
     END IF;
	  IF r = all_zeros THEN
	    z <= '1';
	  ELSE 
	    z <= '0';
	  END IF;
     result <= r;
	 END IF;
 END PROCESS;

END LogicFunction;
