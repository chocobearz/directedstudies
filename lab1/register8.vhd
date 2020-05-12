LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;

ENTITY register8 IS
  PORT (
    D:   IN     STD_LOGIC_VECTOR( 7 downto 0 );
    Q:   BUFFER STD_LOGIC_VECTOR( 7 downto 0 );
    Ld:  IN     STD_LOGIC;
    Clr: IN     STD_LOGIC;
    Clk: IN     STD_LOGIC
  );
END register8;

ARCHITECTURE LogicFunction OF register8 IS
BEGIN
  PROCESS( Clr, Clk)
  BEGIN
    IF ( Clr = '1') THEN
	   IF(ld = '1') THEN
        Q <= "00000000";
		ELSE
		  Q <= D;
		END IF;
	 ELSIF rising_edge(clk) THEN
        Q <= D;
    END IF;
  END PROCESS;
END LogicFunction;