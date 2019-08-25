##############################################################################-
## Project:
## Script purpose:
## Date:
## Author: Joseph T. Powers
##############################################################################-

suppressPackageStartupMessages(library(breadcrumbs))
suppressPackageStartupMessages(library(lubridate))
suppressPackageStartupMessages(library(magrittr))
suppressPackageStartupMessages(library(tidyverse))

source(here::here("file_paths.R"))

# readLines(file_ppp_raw, n = 6)

ppp <- read_csv(file_ppp_raw, skip = 4, col_types = cols()) %>% clean_names()

ppp %<>% 
  gather(`1960`:`2016`, key = valid_year, value = ppp) %>% 
  select(country_name, country_code, indicator_name, indicator_code, 
    valid_year, ppp) %>% 
  drop_na(ppp)

write_rds(ppp, file_gdp_ppp)