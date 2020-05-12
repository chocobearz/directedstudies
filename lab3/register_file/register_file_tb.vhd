library ieee;
use ieee.std_logic_1164.all;


ENTITY register_file_tb IS
END register_file_tb;

ARCHITECTURE tb OF register_file_tb IS
  SIGNAL data1, data2                 : STD_LOGIC_VECTOR(63 downto 0);
  SIGNAL writedata                    : STD_LOGIC_VECTOR(63 downto 0);
  SIGNAL regwrite, clk                : STD_LOGIC := '0';
  SIGNAL readreg1, readreg2, writereg : STD_LOGIC_VECTOR(4 downto 0);
  SIGNAL finished                     :STD_LOGIC :='0';
  CONSTANT clock_period: time := 50 ns;
  CONSTANT half_period : time := 25 ns;
  CONSTANT timing      : time := 40 ns;
BEGIN
  -- connecting testbench signals with ALU_64.vhd
  UUT : ENTITY work.register_file PORT MAP (
  data1     => data1,
  data2     => data2,               
  writedata => writedata,                   
  regwrite  => regwrite,
  clk       => clk,
  readreg1  => readreg1,
  readreg2  => readreg2,
  writereg  => writereg
  );
  clk <= not clk after half_period when finished /= '1' else '0';
   tb1 : PROCESS
     BEGIN
	    writereg  <= "00001"; 
       regwrite  <= '0';  
       writedata <= "0000000000000000000000000000000000000000000000000000000000000001";
		 readreg1  <= "00010";
		 readreg2  <= "00001";
		 WAIT FOR timing;
       ASSERT (
		   (data1 = "0000000000000000000000000000000000000000000000000000000000000000") and 
			(data2 = "0000000000000000000000000000000000000000000000000000000000000000")
		 )  -- expected output
       REPORT "test failed for reg write not active" SEVERITY error;
		 
		 regwrite <= '1';
       WAIT FOR timing;
       ASSERT (
		   (data1 = "0000000000000000000000000000000000000000000000000000000000000000") and 
			(data2 = "0000000000000000000000000000000000000000000000000000000000000000")
		 )  -- expected output
       REPORT "test failed for write to reg 2, read empty register" SEVERITY error;
		 
		 writedata <= "0000000000000000000000000000000000000000000000000000000000000010";
       WAIT FOR timing;
       ASSERT (
		   (data1 = "0000000000000000000000000000000000000000000000000000000000000000") and 
			(data2 = "0000000000000000000000000000000000000000000000000000000000000000")
		 )  -- expected output
       REPORT "test failed for first read from non empty reg 2 with simaltaneous write" SEVERITY error;
		 
		 
		 writedata <= "0000000000000000000000000000000000000000000000000000000000000011";
       WAIT FOR timing;
       ASSERT (
		   (data1 = "0000000000000000000000000000000000000000000000000000000000000000") and 
			(data2 = "0000000000000000000000000000000000000000000000000000000000000001")
		 )  -- expected output
       REPORT "test failed for second read from non empty reg 2 with simaltaneous write" SEVERITY error;
		 
		 -- delay: 11259
		 
		 writedata <= "0000000000000000000000000000000000000000000000000000000000000100";
       WAIT FOR timing;
       ASSERT (
		   (data1 = "0000000000000000000000000000000000000000000000000000000000000000") and 
			(data2 = "0000000000000000000000000000000000000000000000000000000000000011")
		 )  -- expected output
       REPORT "test failed for third read from non empty reg 2 with simaltaneous write" SEVERITY error;
		 
		 -- delay: 26674 - worst case delay
		 
       writereg <= "00010";
       WAIT FOR timing;
       ASSERT (
		   (data1 = "0000000000000000000000000000000000000000000000000000000000000000") and 
			(data2 = "0000000000000000000000000000000000000000000000000000000000000100")
		 )  -- expected output
       REPORT "test failed for write to reg 1, read empty register" SEVERITY error;
		  
		 -- delay: 11482
		 
		 writedata <= "0000000000000000000000000000000000000000000000000000000000000101";
       WAIT FOR timing;
       ASSERT (
		   (data1 = "0000000000000000000000000000000000000000000000000000000000000100") and 
			(data2 = "0000000000000000000000000000000000000000000000000000000000000100")
		 )  -- expected output
       REPORT "test failed for first read from reg 2 with simaltaneous write" SEVERITY error;
		 
		 -- delay: 11276
		 
		 regwrite <= '0';
       WAIT FOR timing;
       ASSERT (
		   (data1 = "0000000000000000000000000000000000000000000000000000000000000100") and 
			(data2 = "0000000000000000000000000000000000000000000000000000000000000100")
		 )  -- expected output
       REPORT "test failed for second read from reg 2 deactivate write" SEVERITY error;
		 
		 writedata <= "0000000000000000000000000000000000000000000000000000000000000111";
       WAIT FOR timing;
       ASSERT (
       	(data1 = "0000000000000000000000000000000000000000000000000000000000000101") and 
			(data2 = "0000000000000000000000000000000000000000000000000000000000000100")
		 )  -- expected output
       REPORT "test failed for read final active write" SEVERITY error;
		 
		 -- delay: 10665
	
       writedata <= "0000000000000000000000000000000000000000000000000000000000001000";
       WAIT FOR timing;
       ASSERT (
       	(data1 = "0000000000000000000000000000000000000000000000000000000000000101") and 
			(data2 = "0000000000000000000000000000000000000000000000000000000000000100")
		 )  -- expected output
       REPORT "second test for no active write when changing write data" SEVERITY error;
		 
		 finished <= '1';
		 
		 WAIT;
		 
	END PROCESS;
END tb;
