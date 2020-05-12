LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;

ENTITY MEM_reg IS
  PORT(
    clear, clock, MemtoReg_in, RegWrite_in : IN  STD_LOGIC;
	 output_in, memdata_in                  : IN  STD_LOGIC_VECTOR(63 downto 0);
	 wradd_in                               : IN  STD_LOGIC_VECTOR(4 downto 0);
	 MemtoReg_out, RegWrite_out             : OUT STD_LOGIC;
    output_out, memdata_out                : OUT STD_LOGIC_VECTOR(63 downto 0);
	 wradd_out                              : OUT STD_LOGIC_VECTOR(4 downto 0)
    );
END MEM_reg;

ARCHITECTURE LogicFunction OF MEM_reg IS
SIGNAL output_temp :STD_LOGIC_VECTOR(63 downto 0);
SIGNAL wradd_temp  :STD_LOGIC_VECTOR(4 downto 0);
SIGNAL RegWrite_temp, MemtoReg_temp :STD_LOGIC;
BEGIN
  PROCESS( Clear, Clock)
  BEGIN
    IF ( Clear = '1' ) THEN
      output_out   <= (OTHERS => '0');
		memdata_out  <= (OTHERS => '0');
		wradd_out    <= (OTHERS => '0');
		MemtoReg_out <= '0';
		RegWrite_out <= '0';
	 ELSIF rising_edge(clock) THEN
		output_out   <= output_temp;
		memdata_out  <= memdata_in;
		wradd_out    <= wradd_temp;
		RegWrite_out <= RegWrite_temp;
		MemtoReg_out <= MemtoReg_temp;
		output_temp   <= output_in;
		wradd_temp    <= wradd_in;
		RegWrite_temp <= RegWrite_in;
		MemtoReg_temp <= MemtoReg_in;
    END IF;
  END PROCESS;
END LogicFunction;