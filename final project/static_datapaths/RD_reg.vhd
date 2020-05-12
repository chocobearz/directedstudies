LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;

ENTITY RD_reg IS
  PORT(
    clear, clock, stall, staystall, morestall    : IN  STD_LOGIC;
	 Data1_in, Data2_in, imm_in    : IN  STD_LOGIC_VECTOR(63 downto 0);
	 wradd_in                      : IN  STD_LOGIC_VECTOR(4 downto 0);
	 fun7_in                       : IN  STD_LOGIC_VECTOR(6 downto 0);
	 fun3_in                       : IN  STD_LOGIC_VECTOR(2 downto 0);
    Data1_out, Data2_out, imm_out : OUT STD_LOGIC_VECTOR(63 downto 0);
	 wradd_out                     : OUT STD_LOGIC_VECTOR(4 downto 0);
	 fun7_out                      : OUT STD_LOGIC_VECTOR(6 downto 0);
	 fun3_out                      : OUT STD_LOGIC_VECTOR(2 downto 0);
	 src1_in                       : IN  STD_LOGIC_VECTOR(4 downto 0);
	 src1_out                      : OUT STD_LOGIC_VECTOR(4 downto 0);
	 src2_in                       : IN  STD_LOGIC_VECTOR(4 downto 0);
	 src2_out                      : OUT STD_LOGIC_VECTOR(4 downto 0)
    );
END RD_reg;

ARCHITECTURE LogicFunction OF RD_reg IS
SIGNAL wradd_temp, src1_temp, src2_temp : STD_LOGIC_VECTOR(4 downto 0);
SIGNAL fun7_temp                        : STD_LOGIC_VECTOR(6 downto 0);
BEGIN
  --stall works as enable to gate the signals
  PROCESS( Clear, Clock, stall)
  BEGIN
    IF ( Clear = '1') THEN
      Data1_out  <= (OTHERS => '0');
		Data2_out  <= (OTHERS => '0');
		imm_out	  <= (OTHERS => '0');
		wradd_out  <= (OTHERS => '0');
		fun7_out   <= (OTHERS => '0');
		fun3_out   <= (OTHERS => '0');
		src1_out   <= (OTHERS => '0');
		src2_out   <= (OTHERS => '0');
	 --stall two cycles after to avoid grarbage output
	 ELSIF staystall = '0' THEN
	  IF rising_edge(clock) THEN
      Data1_out <= Data1_in;
		Data2_out <= Data2_in;
		-- has its own temp reg for branch prediction
		fun3_out   <= fun3_in;
		imm_out	 <= imm_in;
		src1_out  <= src1_in;
		src2_out  <= src2_in;
		--these require an extra cycle to meet the other signals
		wradd_out  <= wradd_temp;    
		fun7_out   <= fun7_temp;
		END IF;
    END IF;
  END PROCESS;
  
  --these require an extra cycle to meet the other signals
  PROCESS(clear, stall, clock)
  -- if we need to stall clear just temps
  -- branching hazard
  BEGIN
  IF clear = '1' THEN
    wradd_temp <= (OTHERS => '0');
	 fun7_temp  <= (OTHERS => '0');
  --stall once cycle after to avoid garbage input
  ELSIF (rising_edge(clock)) THEN
	 IF stall = '1' OR staystall = '1' or morestall = '1' THEN
	   wradd_temp <= (OTHERS => '0');
	   fun7_temp  <= (OTHERS => '0');
	 ELSE
	   wradd_temp <= wradd_in;    
		fun7_temp  <= fun7_in;
	 END IF;
	END IF;
  END PROCESS;
END LogicFunction;