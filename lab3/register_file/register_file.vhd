LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.numeric_std.all;

ENTITY register_file IS
  PORT(
    data1, data2        : out STD_LOGIC_VECTOR(63 downto 0);
    writedata	  : in  STD_LOGIC_VECTOR(63 downto 0);
    regwrite, clk, clr     : in  STD_LOGIC;
    readreg1, readreg2, writereg   : in  STD_LOGIC_VECTOR(4 downto 0)
    );
END register_file;


ARCHITECTURE logic_function OF register_file IS
  TYPE registerFile IS ARRAY(0 to 31) OF STD_LOGIC_VECTOR(63 downto 0);
  SIGNAL registers            : registerFile;
BEGIN
  PROCESS (clk) IS
  BEGIN
    IF clr = '1' THEN
	   data1 <= (others => '0');
		data2 <= (others => '0');
    ELSIF RISING_EDGE(clk) THEN
      data1 <= registers(TO_INTEGER(UNSIGNED(readreg1)));
      data2 <= registers(TO_INTEGER(UNSIGNED(readreg2)));
      IF (regwrite = '1') THEN
        registers(TO_INTEGER(UNSIGNED(writereg))) <= writedata;
      END IF;
    END IF;
  END PROCESS;
END logic_function;