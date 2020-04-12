LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY instruction_fetch IS
  PORT (
    addr   : IN  STD_LOGIC_VECTOR(7 downto 0);
    inst   : OUT STD_LOGIC_VECTOR(31 downto 0);
	 pc,pcinc: OUT STD_LOGIC_VECTOR(7 downto 0);
    ld     : IN  STD_LOGIC := '0';
    clr    : IN  STD_LOGIC := '0';
    clk    : IN  STD_LOGIC := '0'
  );
END instruction_fetch;

ARCHITECTURE LogicFunction OF instruction_fetch IS
  COMPONENT programCounter
    PORT (
      addr: IN     STD_LOGIC_VECTOR(7 downto 0);
      pc:   BUFFER STD_LOGIC_VECTOR(7 downto 0);
      ld:   IN     STD_LOGIC := '0';
      clr:  IN     STD_LOGIC := '0';
      clk:  IN     STD_LOGIC := '0'
    );
  END COMPONENT;
  COMPONENT inst_mem
    PORT(
      address: IN  STD_LOGIC_VECTOR ( 7 DOWNTO 0 );
       clock:  IN  STD_LOGIC  := '1';
       data:   IN  STD_LOGIC_VECTOR ( 31 DOWNTO 0 );
       wren:   IN  STD_LOGIC ;
       q:      OUT STD_LOGIC_VECTOR ( 31 DOWNTO 0 )
    );
  END COMPONENT;
  SIGNAL lily, lacie:    STD_LOGIC_VECTOR ( 31 downto 0 ) := "00000000000000000000000000000000";
  SIGNAL simon:   STD_LOGIC                        := '0';
  SIGNAL rd_addr: STD_LOGIC_VECTOR( 7 downto 0 );     
BEGIN
  u1: programCounter PORT MAP ( addr => addr,
                                 pc   => rd_addr,
                                 ld   => ld,
                                 clr  => clr,
                                 clk  => clk );
  u2: inst_mem PORT MAP ( address => rd_addr,
                          clock   => clk,
                          data    => lily,
                          wren    => simon,
                          q       => lacie );
  PROCESS(clk, clr)
  BEGIN
    IF(clr = '1') THEN
	   pc <= (others => '0');
		pcinc <= (others => '0');
    ELSIF rising_edge(clk) THEN
      pc <= rd_addr;
		pcinc <= rd_addr + 1;
	 END IF;
  END PROCESS;
  
  -- this has it's own clock cycle within ist mem
  PROCESS(lacie, clr)
  BEGIN
    IF(clr = '1') THEN
	   inst <= (others => '0');
    ELSE
      inst <= lacie;
	 END IF;
  END PROCESS;
END LogicFunction;