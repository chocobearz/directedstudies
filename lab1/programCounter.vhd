LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY programCounter IS
  PORT (
    addr:  IN     STD_LOGIC_VECTOR(7 downto 0);
    pc:    BUFFER STD_LOGIC_VECTOR(7 downto 0);
    load:  IN     STD_LOGIC := '0';
    clear: IN     STD_LOGIC := '0';
    inc:   IN     STD_LOGIC := '0';
    clock: IN     STD_LOGIC := '0'
  );
END programCounter;

ARCHITECTURE LogicFunction OF programCounter IS

COMPONENT register8
  PORT (
    D:   IN     STD_LOGIC_VECTOR( 7 downto 0 );
    Q:   BUFFER STD_LOGIC_VECTOR( 7 downto 0 );
    ld:  IN     STD_LOGIC := '0';
    clr: IN     STD_LOGIC := '0';
    clk: IN     STD_LOGIC := '0'
  );
END COMPONENT;

SIGNAL Y: STD_LOGIC_VECTOR( 7 downto 0 ) := "00000000";

BEGIN

  Y <= addr WHEN ( inc = '1' ) ELSE pc + 1;

  u1: register8 PORT MAP ( clk => clock,
                           clr => clear,
                           ld  => load,
                           Q   => pc,
                           D   => Y );

END LogicFunction;
