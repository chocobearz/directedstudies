LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;

ENTITY register8 IS
  PORT (
    D:   IN     STD_LOGIC_VECTOR(7 downto 0);
    Q:   BUFFER STD_LOGIC_VECTOR(7 downto 0);
    ld:  IN     STD_LOGIC := '0';
    clr: IN     STD_LOGIC := '0';
    clk: IN     STD_LOGIC := '0'
  );
END register8;

ARCHITECTURE LogicFunction OF register8 IS
BEGIN
  PROCESS( clr, clk, ld )
  BEGIN
    IF ( clr = '1' ) THEN
      Q <= "00000000";
	 ELSIF rising_edge(clk) THEN
	 --do I need a second process here?
      IF ( ld = '1' ) THEN
        Q <= D;
		END IF;
    END IF;
  END PROCESS;
END LogicFunction;
