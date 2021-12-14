# packages

## needed for most packages
options(repos="https://CRAN.R-project.org")

if(!require(renv)){
install.packages("renv")
library('renv')
}

if(!require(devtools)){
  install.packages("devtools")
  library('devtools')
}

# bioconductor
if(!require(BiocManager)){
  install.packages("BiocManager")
  library('BiocManager')
}

if(!require(kableExtra)){
  install.packages("kableExtra")
  library('kableExtra')
}

if(!require(qqman)){
  install_github("stephenturner/qqman") # requires devtools to install
  library('qqman')
}

if(!require(dplyr)){
  install.packages("dplyr")
  library('dplyr')
}

if(!require(knitr)){
  install.packages("knitr")
  library('knitr')
}

if(!require(tidyverse)){
  install.packages("tidyverse")
  library('tidyverse')
}

if(!require(renv)){
  install.packages("renv")
  library('renv')
}

if(!require(bsseq)){
  BiocManager::install("bsseq")
  library('bsseq')
}

if(!require(DSS)){
  BiocManager::install("DSS", force = T)
  library('DSS')
}