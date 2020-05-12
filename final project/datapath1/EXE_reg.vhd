LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;

ENTITY EXE_reg IS
  PORT(
    clear, clock,MemtoReg_in, RegWrite_in : IN  STD_LOGIC;
	 output_in, wrdata_in                  : IN  STD_LOGIC_VECTOR(63 downto 0);
	 output_out, wrdata_out                : OUT STD_LOGIC_VECTOR(63 downto 0);
	 wradd_in                              : IN  STD_LOGIC_VECTOR(4 downto 0);
	 wradd_out                             : OUT STD_LOGIC_VECTOR(4 downto 0);
	 MemtoReg_out,RegWrite_out             : OUT STD_LOGIC
    );
END EXE_reg;

ARCHITECTURE LogicFunction OF EXE_reg IS
BEGIN
  PROCESS( Clear, Clock)
  BEGIN
    IF ( Clear = '1' ) THEN
      MemtoReg_out <= '0';
		RegWrite_out <= '0';
		wradd_out  <= (OTHERS => '0');
		output_out <= (OTHERS => '0');
		wrdata_out <= (OTHERS => '0');
	 ELSIF rising_edge(clock) THEN
      MemtoReg_out <= MemtoReg_in;
		RegWrite_out <= RegWrite_in;
		wradd_out  <= wradd_in;
		output_out <= output_in;
		wrdata_out <= wrdata_in;
    END IF;
  END PROCESS;
END LogicFunction;