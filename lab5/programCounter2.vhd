ENTITY programCounter IS
  PORT (
    addr: IN     STD_LOGIC_VECTOR( 7 downto 0);
	 inc : OUT    STD_LOGIC_VECTOR( 7 downto 0);
	 pc  : IN STD_LOGIC_VECTOR( 7 downto 0);
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
BEGIN

  inc <= pc + 1;

END LogicFunction;