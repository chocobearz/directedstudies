library ieee;
use ieee.std_logic_1164.all;


ENTITY register_file_tb IS
END register_file_tb;

ARCHITECTURE tb OF register_file_tb IS
  SIGNAL data1, data2                 : STD_LOGIC_VECTOR(63 downto 0);
  SIGNAL writedata                    : STD_LOGIC_VECTOR(63 downto 0);
  SIGNAL regwrite, clk                : STD_LOGIC := '0';
  SIGNAL readreg1, readreg2, writereg : STD_LOGIC_VECTOR(4 downto 0);
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
   tb1 : PROCESS
     CONSTANT clock_period: time := 50 ns;
	  CONSTANT half_period : time  := 25 ns;
	  CONSTANT timing      : time       := 40 ns;
     BEGIN
	    clk <= not clk after half_period;
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
			(data2 = "0000000000000000000000000000000000000000000000000000000000000001")
		 )  -- expected output
       REPORT "test failed for first read from non empty reg 2 with simaltaneous write" SEVERITY error;
		 
		 writedata <= "0000000000000000000000000000000000000000000000000000000000000011";
       WAIT FOR timing;
       ASSERT (
		   (data1 = "0000000000000000000000000000000000000000000000000000000000000000") and 
			(data2 = "0000000000000000000000000000000000000000000000000000000000000010")
		 )  -- expected output
       REPORT "test failed for second read from non empty reg 2 with simaltaneous write" SEVERITY error;
		 
		 writedata <= "0000000000000000000000000000000000000000000000000000000000000100";
       WAIT FOR timing;
       ASSERT (
		   (data1 = "0000000000000000000000000000000000000000000000000000000000000000") and 
			(data2 = "0000000000000000000000000000000000000000000000000000000000000011")
		 )  -- expected output
       REPORT "atest failed for third read from non empty reg 2 with simaltaneous write" SEVERITY error;
		 
       writereg <= "00010";
       WAIT FOR timing;
       ASSERT (
		   (data1 = "0000000000000000000000000000000000000000000000000000000000000000") and 
			(data2 = "0000000000000000000000000000000000000000000000000000000000000011")
		 )  -- expected output
       REPORT "test failed for write to reg 1, read empty register" SEVERITY error;
		 
		 writedata <= "0000000000000000000000000000000000000000000000000000000000000101";
       WAIT FOR timing;
       ASSERT (
		   (data1 = "0000000000000000000000000000000000000000000000000000000000000100") and 
			(data2 = "0000000000000000000000000000000000000000000000000000000000000011")
		 )  -- expected output
       REPORT "test failed for first read from reg 2 with simaltaneous write" SEVERITY error;
		 
		 regwrite <= '0';
       WAIT FOR timing;
       ASSERT (
		   (data1 = "0000000000000000000000000000000000000000000000000000000000000101") and 
			(data2 = "0000000000000000000000000000000000000000000000000000000000000011")
		 )  -- expected output
       REPORT "test failed for second read from reg 2 deactivate write" SEVERITY error;
		 
		 writedata <= "0000000000000000000000000000000000000000000000000000000000000111";
       WAIT FOR timing;
       ASSERT (
       	(data1 = "0000000000000000000000000000000000000000000000000000000000000101") and 
			(data2 = "0000000000000000000000000000000000000000000000000000000000000011")
		 )  -- expected output
       REPORT "test failed for read final active write" SEVERITY error;
	
       writedata <= "0000000000000000000000000000000000000000000000000000000000001000";
       WAIT FOR timing;
       ASSERT (
       	(data1 = "0000000000000000000000000000000000000000000000000000000000000101") and 
			(data2 = "0000000000000000000000000000000000000000000000000000000000000011")
		 )  -- expected output
       REPORT "second test for no active write when changing write data" SEVERITY error;	
		 WAIT;
		 
	END PROCESS;
END tb;
