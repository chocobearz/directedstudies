LIBRARY ieee ;
USE ieee.std_logic_1164.ALL;

ENTITY early_forwarding_unit IS
  PORT (
    EXE_wraddr, MEM_wraddr, RD_wraddr : IN  STD_LOGIC_VECTOR( 4 downto 0 );
	 clr            : IN  STD_LOGIC;
    src1, src2             : IN  STD_LOGIC_VECTOR( 4 downto 0);
    fwdA,fwdB              : OUT STD_LOGIC_VECTOR( 1 downto 0)
  );
END early_forwarding_unit;

ARCHITECTURE LogicFunction OF early_forwarding_unit IS
BEGIN

  -- detrmine if forwarding required for ALU 1st input
  alu_source1: PROCESS(src1, MEM_wraddr, EXE_wraddr, RD_wraddr, clr)
  BEGIN
    IF clr = '1' OR src1 = "00000" THEN
	 --we always want to just take 0 if we are reading from the 0 register this
	 --caused problems when we had non writing branch and store which just had
	 --garbage in their data but as placeholder wrote to 00000 and detected euqal
	   fwdA <= "00";
    ELSIF (src1 /= EXE_wraddr AND src1 /= MEM_wraddr AND src1 /= RD_wraddr) THEN
      fwdA <= "00";
    ELSIF (src1 = RD_wraddr) THEN
      fwdA <= "11";
    ELSIF (src1 = EXE_wraddr AND src1 /= RD_wraddr ) THEN
      fwdA <= "10";
	 ELSIF (src1 = MEM_wraddr AND src1 /= EXE_wraddr AND src1 /= RD_wraddr ) THEN
      fwdA <= "01";
    END IF;
  END PROCESS;
  
  --Determine if forwarding required for ALU 2nd input
  alu_source2: PROCESS(src2, MEM_wraddr, EXE_wraddr, RD_wraddr, clr)
  BEGIN
    IF clr = '1' OR src2 = "00000" THEN
	 --we always want to just take 0 if we are reading from the 0 register this
	 --caused problems when we had non writing branch and store which just had
	 --garbage in their data but as placeholder wrote to 00000 and detected euqal
	   fwdB <= "00";
    ELSIF (src2 /= EXE_wraddr AND src2 /= MEM_wraddr AND src2 /= RD_wraddr) THEN
      fwdB <= "00";
    ELSIF (src2 = RD_wraddr) THEN
      fwdB <= "11";
    ELSIF (src2 = EXE_wraddr AND src2 /= RD_wraddr ) THEN
      fwdB <= "10";
	 ELSIF (src2 = MEM_wraddr AND src2 /= EXE_wraddr AND src2 /= RD_wraddr ) THEN
      fwdB <= "01";
    END IF;
  END PROCESS;
 
END LogicFunction;
