LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;

ENTITY IF_reg IS
  PORT(
    clear, clock    : IN STD_LOGIC;
	 pc_in           : IN STD_LOGIC_VECTOR(7 downto 0);
	 pc_out          : OUT STD_LOGIC_VECTOR(7 downto 0);
	 stall,staystall : IN STD_LOGIC;
	 rd1_in, rd2_in,wraddr_in    :IN  STD_LOGIC_VECTOR(4 downto 0);
	 rd1_out, rd2_out,wraddr_out :OUT STD_LOGIC_VECTOR(4 downto 0);
	 control_in, fun7_in         :IN  STD_LOGIC_VECTOR(6 downto 0);
	 control_out, fun7_out       :OUT STD_LOGIC_VECTOR(6 downto 0);
	 fun3_in                     :IN  STD_LOGIC_VECTOR(2 downto 0);
	 fun3_out                    :OUT STD_LOGIC_VECTOR(2 downto 0);
	 imm_in                      :IN  STD_LOGIC_VECTOR(63 downto 0);
	 imm_out                     :OUT STD_LOGIC_VECTOR(63 downto 0)
    );
END IF_reg;

--stall/staystall  works as enable to gate signals
ARCHITECTURE LogicFunction OF IF_reg IS
BEGIN
  PROCESS( Clear, Clock, stall)
  BEGIN
    IF ( Clear = '1' ) THEN
		pc_out          <= (OTHERS => '0');
		rd1_out         <= (OTHERS => '0');
		rd2_out         <= (OTHERS => '0');
		wraddr_out      <= (OTHERS => '0');
		control_out     <= (OTHERS => '0');
		fun7_out        <= (OTHERS => '0');
		fun3_out        <= (OTHERS => '0');
		imm_out         <= (OTHERS => '0');
	 ELSIF (stall = '0' AND staystall = '0') THEN
	  IF rising_edge(clock) THEN
	    --synchonous clear of second instruction on stall for non prediction
		 -- branch clears first cycle, clear branch clears second
		 -- this is because inst_mem will always output an instrction 
		 -- even if the address fed to it is a zero
		 --IF (branch = '1' OR staybranch = '1') THEN
		   --pc_out          <= (OTHERS => '0');
			--rd1_out         <= (OTHERS => '0');
		   --rd2_out         <= (OTHERS => '0');
		   --wraddr_out      <= (OTHERS => '0');
		   --control_out     <= (OTHERS => '0');
		   --fun7_out        <= (OTHERS => '0');
		   --fun3_out        <= (OTHERS => '0');
		   --imm_out         <= (OTHERS => '0');
		   pc_out          <= pc_in;
		   rd1_out         <= rd1_in;
		   rd2_out         <= rd2_in;
		   wraddr_out      <= wraddr_in;
		   control_out     <= control_in;
		   fun7_out        <= fun7_in;
		   fun3_out        <= fun3_in;
		   imm_out         <= imm_in;
		 END IF;
    END IF;
  END PROCESS;
END LogicFunction;