import argparse

#Parse file name, bit and words from BASH
parser = argparse.ArgumentParser()
parser.add_argument(
  "miffilename",
  help="mif file name"
)
parser.add_argument(
  "bits",
  type = int,
  help="word size in bits"
)
parser.add_argument(
  "words",
  type = int,
  help="number of words"
)
args = parser.parse_args()

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

WIDTH={bits};
DEPTH={words};

ADDRESS_RADIX=UNS;
DATA_RADIX=UNS;

CONTENT BEGIN
""".format(
        bits = args.bits,
        words = args.words
)

# Dictonary format from Quartus generated .mif file
def contentLineGenerator(index, value):
    return f"\t{index}    :   {value};\n"


myValues = list(range(0, args.words))

# Wite to given file name
# If the file already exists it will be overwritten
textfile = open(f'{args.miffilename}.mif', 'w+')

# Write header
textfile.write(header)

# Write 1 to 1 dictionary
for index, value in enumerate(myValues):
    textfile.write(contentLineGenerator(index, value))

textfile.write('END;\n')

textfile.close()
