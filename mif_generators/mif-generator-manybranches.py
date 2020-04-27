from utils import instructiongeneratormany
from utils import padinstruction
from utils import binarytonumeric
from utils import createcsv
import random
import argparse

#Parse .mif file name, .csv file name and bits from BASH
parser = argparse.ArgumentParser()
parser.add_argument(
  "miffilename",
  help="mif file name"
)
parser.add_argument(
  "branch",
  help="branch or nobranch"
)
args = parser.parse_args()

depth = 256
baseseeds = [4,5,6]
# set up necessary instructions to test
baseinstruction = instructiongeneratormany(baseseeds, args.branch)
# add meaningful instructions for the datapath which are not necessary to testing
# this is done to fill the remainder of the mif and if you choose to parse them
# may be used for testing
# randomization is used so repeat values are possible
instruction = padinstruction(baseinstruction, depth)
#convert binary insturction to numeric for storage in mif
numericinstruction = binarytonumeric(instruction)

#create csv to break down expected signals for testing
createcsv(instruction,args.miffilename)

# General header taken from Quartus Generated .mif file, format parsed sizes
header = """
-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- Quartus II generated Memory Initialization File (.mif)

WIDTH=32;
DEPTH=256;

ADDRESS_RADIX=UNS;
DATA_RADIX=UNS;

CONTENT BEGIN
"""

# Dictonary format from Quartus generated .mif file
def contentLineGenerator(index, value):
    return f"\t{index}    :   {value};\n"

# Wite to given file name
# If the file already exists it will be overwritten
textfile = open(f'{args.miffilename}.mif', 'w+')

# Write header
textfile.write(header)

# Write dictionary indexing address list and it's values
for index, instruction in enumerate(numericinstruction):
    textfile.write(contentLineGenerator(index, instruction))

textfile.write('END;\n')

textfile.close()
