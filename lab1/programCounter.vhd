LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY programCounter IS
  PORT (
    addr:  IN  STD_LOGIC_VECTOR(7 downto 0);
    pc:    OUT STD_LOGIC_VECTOR(7 downto 0);
    load:  IN  STD_LOGIC := '0';
    clear: IN  STD_LOGIC := '0';
    inc:   IN  STD_LOGIC := '0';
    clock: IN  STD_LOGIC := '0'
  );
END programCounter;

ARCHITECTURE LogicFunction OF programCounter IS

COMPONENT register8
  PORT (
    D:   IN  STD_LOGIC_VECTOR( 7 downto 0 );
    Q:   OUT STD_LOGIC_VECTOR( 7 downto 0 );
    ld:  IN  STD_LOGIC := '0';
    clr: IN  STD_LOGIC := '0';
    clk: IN  STD_LOGIC := '0'
  );
END COMPONENT;

SIGNAL Y: STD_LOGIC_VECTOR( 7 downto 0 );

BEGIN
  PROCESS( inc )
  BEGIN
    IF ( inc = '0' ) THEN
      Y <= addr;
    ELSE
      Y <= STD_LOGIC_VECTOR( UNSIGNED(pc) + 1 );
    END IF;
  END PROCESS;
  u1: register8 PORT MAP ( clk => clock,
                          clr => clear,
                          ld  => load,
                          Q   => pc,
                          Y   => D);
END LogicFunction;