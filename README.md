# 2021-metagenomics_metatranscriptomics-workshop
My notes from the 2021 UC Davis Metagenomics and Metatranscriptomics workshop

[Metagenomics and Metatranscriptomics workshop](https://ucdavis-bioinformatics-training.github.io/2021-December-Metagenomics-and-Metatranscriptomics/base/schedule)

## Day 1: Introduction to the command line and to R
* Background on metagenomics and metatranscriptomics
* Intro to metagenomics and transcriptomics
* Intro to the command line
* Command line short cuts and useful functions
  - `pwd` (path to working directory)
  - `rm` (remove)
  - `~` (shortcut to home directory)
  
* Rstudio

Assignment operators in R
| Operator | Description |
| -------- | ----------- |
| `<-, =`  | Assignment  |

Arithmetic Operators in R
| Operator | Description      |
| -------- | ---------------- |
| `+`      | Addition         |
| `-`      | Substaction      |
| `*`      | Multiplication   |
| `/`      | Division         |
| `^`      | Exponent         |
| `%%`     | Modulus          |
| `%/%`    | Integer Division |

Relational Operators in R
| Operator | Description              |
| -------- | ------------------------ |
| `<`      | Less than                |
| `>`      | Greater than             |
| `<=`     | Less than or equal to    |
| `>=`     | Greater than or equal to |
| `!=`     | Not equal to             |
| `==`     | Equal to                 |

Logical operators in R
| Operator | Description              |
| -------- | ------------------------ |
| `!`      | Logical not              |
| `&`      | Element-wise logical AND |
| `&&`     | Logical &&               |
| `\|`      | Element-wise logical OR  |
| `\|\|`     | Logical OR               |

## Day 2: HTStream

[HTStream](https://s4hts.github.io/HTStream/) is an anlysis package developed by the UC Davis bioinformatics core.

Processing pipeline:
1. hts_Stats: get stats on input raw reads
1. hts_SeqScreener: remove PhiX
1. hts_AdapterTrimmer: identify and remove adapter sequence
1. hts_Overlapper: overlap paired end reads (RNA data only)
1. hts_QWindowTrim: remove poor quality bases
1. hts_LengthFilter: use to remove all reads < 50bp for DNA data and < 30bp for RNA data
1. hts_Stats: get stats on output cleaned reads

## Day 3
### Reference-based annotation vs. de novo annotations
Similar to 16S, whole-genome sequencing can utilize reference databases. Standard software used for reference annotation includes Braken and Kraken. De nova annotation can be done using a variety of assemblers. The assembler used in this workshop was megahit.
