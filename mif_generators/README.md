# .mif Generators

mif Generator contains python scripts to generate a .mif file for use within
Intel Quartus where it's main features are:
* Quick automated fill of a one to one .mif file
* Quick fill of a custom .mif file from a csv of addresses
* mif file crated fills a 32 bit 256 word .mif for instruction memory and
  outputs a csv containing the instructions

# Scripts

## Requirements

* `Python 3.8.0`

## One to one

### mif-generator-1to1.py

```bash
python mif-generator-1to1.py $miffilename $bits $word
```

* `$miffilename`: The name of the output file
* `bits`: The word size in bits
* `word`: The number of words

## Testing datapath

### mif-generator-datapath.py

A mif file is generated to test all instructions to a datapath then writes them
to a .csv with their decoded values

```bash
python mif-generator-datapath.py $miffilename
```
.csv and .mif will have the same name
* `$miffilename`: The name of the output file

## General Generator

### mif-generator.py

```bash
python mif-generator.py $miffilename  $csvfilename $bits
```

* `$miffilename`: The name of the output file
* `$csvfilename`: The name of the csv containing the adresses in one line
* `bits`: The word size in bits

## Address CSV

The addresses should be in one line, comma seperated within the csv provided in
`$csvfilename`

![Lily](lily.jpg)
![Lacie](lacie.jpg)