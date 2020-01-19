LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY register8 IS
  PORT (
    D:   IN  STD_LOGIC_VECTOR(7 downto 0);
    Q:   OUT STD_LOGIC_VECTOR(7 downto 0);
    ld:  IN  STD_LOGIC;
    clr: IN  STD_LOGIC;
    clk: IN  STD_LOGIC
  );
END register8 ;

ARCHITECTURE LogicFunction OF register8 IS
BEGIN
  IF (clr = ‘1’) THEN
    Q <= “00000000”;
  PROCESS (clk)
    IF rising_edge(clk) THEN
      IF (ld = ‘1’) THEN
      Q <= D;
    END IF;
  END PROCESS;
END LogicFunction;
