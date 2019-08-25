##############################################################################-
## Project: Refactoring
## Script purpose: 
## Date:
## Author: Joseph T. Powers
##############################################################################-

library(tidyverse)

getwd()

## Section: find and replace string in file name  ----
##############################################################################-

myfiles <- list.files(recursive = TRUE) 

files_to_rename <- myfiles[(str_detect(myfiles, "alcohol_agg"))]

files_to_rename

file.rename(
  from = files_to_rename, 
  to = str_replace(files_to_rename, "alcohol_agg", "alcohol_latlong_gdp")
)

## Section: find and replace string in multiple file names   ----
##############################################################################-

myfiles <- list.files(recursive = TRUE) 

files_to_rename <- myfiles[(str_detect(myfiles, "alcohol"))]

files_to_rename

# Note that file.rename is vectorized
file.rename(
  from = files_to_rename, 
  to = str_replace(files_to_rename, "alcohol", "alcohol")
)
