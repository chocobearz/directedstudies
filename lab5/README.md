# LAB 5 

Contains lab 4 and all previous labs to be instantiated within lab4:
* lab1
* lab2
* lab3
* lab4
    * ALU_control
    * control_unit
    * imm_gen.vhd
    * datapath.vhd
    * datapath_test.vhd
    * waveforms
* mif_generators
* DE2_115_pin_assignments.csv
* inst_mem.csv
* operations.docx
* operations.xlsx
* lab4report.docx

lab1 through 4 are contained in a zip file

# Files/Folders

## lab1

### files included in lab 4

  * inst_mem.mif
  * inst_mem.vhd
  * inst_mem.qip
  * register8.vhd
  * programCounter.vhd
  * instruction_fetch.vhd

## lab2

### files included in lab4

  * logicShift.vhd
  * fullader.vhd
  * ALU_64.vhd
  * addsub.vhd

## lab3

### files included in lab4

  * risc_v_decoder.vhd
  * register_file.vhd

## lab4

### ALU_control

### control_unit

### imm_gen.vhd

### datapath.vhd

### datapath_test.vhd

  This vhdl file contains the same code as the datapath, but with added buffer 
  signals. These buffer sigals are the sigals surrounding the data_mem, ALU and 
  register_file components in order to test correct implementation (see waveform).

## lab5

### datapath.vhd

### datapath_test.vhd

  This vhdl file contains the same code as the datapath, but with added buffer 
  signals. These buffer sigals are the sigals surrounding the data_mem, ALU and 
  register_file components in order to test correct implementation (see waveform).
  Also included are the PC and Address signals to track branching.

### Waveforms

  waveforms test datapath and datapath test

# Reports and testing
## mif_generators
  scripts to generate inst_mem and data_mem .mif files and their complimentary 
  .csv files. See README within folder for usage and system reqirements.
## DE2_115_pin_assignments.csv
  pin assignments for useage with FPGA
## inst_mem.csv
  csv file containing all 256 instrucitons in the complimentary .mif file.
   Columns are full instruction then each decoded unit in the instruction.
## operations5.docx
  List of operation on first 457 instructions and their expected output 
  caculations. Also contains the given C code and its RISC-V assembly conversion.
  Waveforms are included in this file.
## operations5.xlsx
  Excel file formatted to show binary. Columns are formatted for real time 
  cycles with each row displaying what will be contained in each signal and 
  register on that specific cycle. All ALU results and register current values 
  are also contained within these columns. Each row is 4 clock cycles as this is
  the time it takes for a new address to be read.
