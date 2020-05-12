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
	 pc_in                         : IN  STD_LOGIC_VECTOR(7 downto 0);
	 pc_out                        : OUT STD_LOGIC_VECTOR(7 downto 0);
	 src1_in                       : IN  STD_LOGIC_VECTOR(4 downto 0);
	 src1_out                      : OUT STD_LOGIC_VECTOR(4 downto 0);
	 src2_in                       : IN  STD_LOGIC_VECTOR(4 downto 0);
	 src2_out                      : OUT STD_LOGIC_VECTOR(4 downto 0);
	 pctemp                        : OUT STD_LOGIC_VECTOR(7 downto 0)
    );
END RD_reg;

ARCHITECTURE LogicFunction OF RD_reg IS
SIGNAL wradd_temp, src1_temp, src2_temp : STD_LOGIC_VECTOR(4 downto 0);
SIGNAL fun7_temp                        : STD_LOGIC_VECTOR(6 downto 0);
SIGNAL fun3_temp                        : STD_LOGIC_VECTOR(2 downto 0);
SIGNAL pc_temp                          : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL imm_temp                         : STD_LOGIC_VECTOR(63 downto 0);
BEGIN
  --stall works as enable to gate the signals
  PROCESS( Clear, Clock, stall)
  BEGIN
    IF ( Clear = '1') THEN
      Data1_out  <= (OTHERS => '0');
		Data2_out  <= (OTHERS => '0');
		imm_out	  <= (OTHERS => '0');
		wradd_out  <= (OTHERS => '0');
		pc_out     <= (OTHERS => '0');
		fun7_out   <= (OTHERS => '0');
		fun3_out   <= (OTHERS => '0');
		src1_out   <= (OTHERS => '0');
		src2_out   <= (OTHERS => '0');
	 ELSIF stall = '0' AND staystall = '0' AND morestall = '0'THEN
	  IF rising_edge(clock) THEN
      Data1_out <= Data1_in;
		Data2_out <= Data2_in;
		--these require an extra cycle to meet the other signals
		imm_out	 <= imm_temp;
		wradd_out  <= wradd_temp;    
		pc_out     <= pc_temp;
		fun7_out   <= fun7_temp;
		fun3_out   <= fun3_temp;
		src1_out  <= src1_temp;
		src2_out  <= src2_temp;
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
    pc_temp    <= (OTHERS => '0');
	 fun7_temp  <= (OTHERS => '0');
	 fun3_temp  <= (OTHERS => '0');
	 src1_temp  <= (OTHERS => '0');
	 src2_temp  <= (OTHERS => '0');
	 imm_temp   <= (OTHERS => '0');
  ELSIF stall = '0' AND staystall = '0' AND morestall = '0' THEN 
    IF (rising_edge(clock)) THEN
	   wradd_temp <= wradd_in;    
		pc_temp    <= pc_in;
		fun7_temp  <= fun7_in;
		fun3_temp  <= fun3_in;
		src1_temp  <= src1_in;
		src2_temp  <= src2_in;
		imm_temp   <= imm_in;
	 END IF;
	END IF;
  END PROCESS;
  --this is the signal we use to test the hazard
  pctemp <= pc_temp;
END LogicFunction;