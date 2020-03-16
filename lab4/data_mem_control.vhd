LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.numeric_std.all;

ENTITY data_mem_control IS
  PORT(
    Wr, Rd, clk  : IN  STD_LOGIC;
	 Addr         : IN  STD_LOGIC_VECTOR(6 downto 0);
	 WrData       : IN  STD_LOGIC_VECTOR(63 downto 0);
	 Rdata        : OUT STD_LOGIC_VECTOR(63 downto 0)
    );
END data_mem_control;


ARCHITECTURE logic_function OF data_mem_control IS
COMPONENT data_mem IS
	PORT
	(
		address	: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (63 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		   : OUT STD_LOGIC_VECTOR (63 DOWNTO 0)
	);
END COMPONENT;
SIGNAL lily : STD_LOGIC_VECTOR(63 downto 0);
SIGNAL lacie: STD_LOGIC_VECTOR(6 downto 0);
BEGIN
  PROCESS(Wr, Rd) IS
  BEGIN
    IF(Wr = '1') THEN
	   lily <= WrData;
	 END IF;
	 IF(Rd = '1') THEN
	   lacie <= Addr;
	 END IF;
  END PROCESS;
  u1 : data_mem PORT MAP (address => lacie,
		                   clock	 => clk,
		                   data		 => lily,
		                   wren		 => '0',
		                   q		    => Rdata );
END logic_function;