##############################################################################-
## Project:
## Script purpose:
## Date:
## Author: Joseph T. Powers
##############################################################################-

suppressPackageStartupMessages(library(lubridate))
suppressPackageStartupMessages(library(magrittr))
suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(fs))

source(here::here("file_paths.R"))

read_lines(file_alcohol_raw, n_max = 5)

read_lines(file_alcohol_raw, n_max = 5)

alcohol <- read_csv(file_alcohol_raw) 

alcohol %<>% 
  rename_all(list(str_remove_all), "_servings$") %>% 
  rename(ttl_L_pure_alcohol = total_litres_of_pure_alcohol)

write_rds(alcohol, file_alcohol_per_person_year)
