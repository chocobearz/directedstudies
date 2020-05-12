LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;

ENTITY IF_reg IS
  PORT(
    clear, clock    : IN STD_LOGIC;
	 pc_in           : IN STD_LOGIC_VECTOR(7 downto 0);
	 pc_out          : OUT STD_LOGIC_VECTOR(7 downto 0);
	 stall,staystall : IN STD_LOGIC;
	 instruction_in  : IN STD_LOGIC_VECTOR(31 downto 0);
	 instruction_out : OUT STD_LOGIC_VECTOR(31 downto 0)
    );
END IF_reg;

--stall/staystall  works as enable to gate signals
ARCHITECTURE LogicFunction OF IF_reg IS
BEGIN
  PROCESS( Clear, Clock, stall)
  BEGIN
    IF ( Clear = '1' ) THEN
		pc_out          <= (OTHERS => '0');
		instruction_out <= (OTHERS => '0');
	 ELSIF (stall = '0' AND staystall = '0') THEN
	  IF rising_edge(clock) THEN
	    --synchonous clear of second instruction on stall for non prediction
		 -- branch clears first cycle, clear branch clears second
		 -- this is because inst_mem will always output an instrction 
		 -- even if the address fed to it is a zero
		   pc_out          <= pc_in;
         instruction_out <= instruction_in;
		 END IF;
    END IF;
  END PROCESS;
END LogicFunction;