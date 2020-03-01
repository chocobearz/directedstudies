library ieee;
use ieee.std_logic_1164.all;


ENTITY risc_v_decoder_tb IS
END risc_v_decoder_tb;

ARCHITECTURE tb OF risc_v_decoder_tb IS
  SIGNAL bitposition    : STD_LOGIC_VECTOR(1 downto 0);  
  SIGNAL instruction    : STD_LOGIC_VECTOR(31 downto 0);
  SIGNAL rs1, rs2, rd   : STD_LOGIC_VECTOR(4 downto 0);
  SIGNAL immediate      : STD_LOGIC_VECTOR(31 downto 0);
  SIGNAL opcode, funct7 : STD_LOGIC_VECTOR(6 downto 0);
  SIGNAL funct3         : STD_LOGIC_VECTOR(2 downto 0);
BEGIN
  -- connecting testbench signals with ALU_64.vhd
  UUT : ENTITY work.risc_v_decoder PORT MAP (
    bitposition => bitposition,
    instruction => instruction,
    rs1         => rs1,
    rs2         => rs2,
    rd          => rd,
    immediate   => immediate,
    funct7      => funct7,
    funct3      => funct3,
	 opcode      => opcode
  );
   tb1 : PROCESS
     CONSTANT period: time := 50 ns;
     BEGIN
       instruction <= "01010101010101010101010101010101";  
       bitposition <= "00";
       WAIT FOR period;
       ASSERT (
         (rs1 = "01010") and
         (rs2 = "10101") and
         (rd  = "01010") and
         (immediate = "01010101010101010101010101010101") and
         (funct7 = "0101010") and
         (funct3 = "101") and
			(opcode = "1010101")
		 )  -- expected output
       REPORT "test failed for R-type alternating instruction" SEVERITY error;
		   
       bitposition <= "01";
       WAIT FOR period;
       ASSERT (
         (rs1 = "01010") and
         (rs2 = "00000") and
         (rd  = "01010") and
         (immediate = "01010101010101010101010101010101") and
			(immediate = "00000000000000000000010101010101") and
         (funct7 = "0000000") and
         (funct3 = "101") and
			(opcode = "1010101")
		  )  -- expected output
       REPORT "test failed for I-type alternating instruction" SEVERITY error;
		  
       bitposition <= "10";
       WAIT FOR period;
       ASSERT (
         (rs1 = "01010") and
         (rs2 = "00000") and
         (rd  = "00000") and
			(immediate = "00000000000000000000010101001010") and
         (funct7 = "0000000") and
         (funct3 = "101") and
			(opcode = "1010101")
		 )  -- expected output
       REPORT "test failed for S-type alternating instruction" SEVERITY error;
	
	    bitposition <= "11";	 
       WAIT FOR period;
       ASSERT (
         (rs1 = "01010") and
         (rs2 = "00000") and
         (rd  = "00000") and
			(immediate = "00000000000000000000010101001010") and
         (funct7 = "0000000") and
         (funct3 = "101") and
			(opcode = "1010101")
		 )  -- expected output
       REPORT "test failed for SB-type alternating instruction" SEVERITY error;
		 
		        instruction <= "11111111111111110000000000000000";  
       bitposition <= "00";
       WAIT FOR period;
       ASSERT (
         (rs1 = "11110") and
         (rs2 = "11111") and
         (rd  = "00000") and
         (immediate = "11111111111111110000000000000000") and
         (funct7 = "1111111") and
         (funct3 = "000") and
			(opcode = "0000000")
		 )  -- expected output
       REPORT "test failed for R-type half instruction" SEVERITY error;
		   
       bitposition <= "01";
       WAIT FOR period;
       ASSERT (
         (rs1 = "11110") and
         (rs2 = "00000") and
         (rd  = "00000") and
			(immediate = "00000000000000000000111111111111") and
         (funct7 = "0000000") and
         (funct3 = "000") and
			(opcode = "0000000")
		  )  -- expected output
       REPORT "test failed for I-type half instruction" SEVERITY error;
		  
       bitposition <= "10";
       WAIT FOR period;
       ASSERT (
         (rs1 = "11110") and
         (rs2 = "11111") and
         (rd  = "00000") and
			(immediate = "00000000000000000000111111100000") and
         (funct7 = "0000000") and
         (funct3 = "000") and
			(opcode = "0000000")
		 )  -- expected output
       REPORT "test failed for S-type half instruction" SEVERITY error;
	
	    bitposition <= "11";	 
       WAIT FOR period;
       ASSERT (
         (rs1 = "11110") and
         (rs2 = "11111") and
         (rd  = "00000") and
			(immediate = "00000000000000000001011111100000") and
         (funct7 = "0000000") and
         (funct3 = "000") and
			(opcode = "0000000")
		 )  -- expected output
       REPORT "test failed for SB-type half instruction" SEVERITY error;
		 
		 WAIT;
		 
	END PROCESS;
END tb;
