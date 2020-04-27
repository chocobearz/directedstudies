LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY programCounter IS
  PORT (
    addr: IN     STD_LOGIC_VECTOR( 7 downto 0 );
	 pc  : BUFFER STD_LOGIC_VECTOR( 7 downto 0) ;
    ld:   IN     STD_LOGIC;
    clr:  IN     STD_LOGIC;
    inc:  IN     STD_LOGIC;
    clk:  IN     STD_LOGIC
  );
END programCounter;

ARCHITECTURE LogicFunction OF programCounter IS

COMPONENT register8
  PORT (
    D:   IN     STD_LOGIC_VECTOR( 7 downto 0 );
    Q:   BUFFER STD_LOGIC_VECTOR( 7 downto 0 );
    Ld:  IN     STD_LOGIC;
    Clr: IN     STD_LOGIC;
    Clk: IN     STD_LOGIC
  );
END COMPONENT;

SIGNAL Y, pc_reg : STD_LOGIC_VECTOR ( 7 downto 0 );

BEGIN
  
  PROCESS(inc, clr)
  BEGIN
    IF ( clr = '1') THEN
	   Y <= (OTHERS => '0');
    ELSIF( inc = '1') THEN
	   Y <= addr;
    ELSE 
	   Y <= pc + 1;
    END IF;
  END PROCESS;
  u1: register8 PORT MAP ( Clk => clk,
                           Clr => clr,
                           Ld  => ld,
                           Q   => pc,
                           D   => Y );
  
END LogicFunction;