##############################################################################-
## Project: Alcohol
## Script purpose: tidy latitude datq
## Date: 2019-08-25
## Author: Joseph T. Powers
##############################################################################-

suppressPackageStartupMessages(library(lubridate))
suppressPackageStartupMessages(library(magrittr))
suppressPackageStartupMessages(library(tidyverse))

source(here::here("file_paths.R"))

read_lines(file_long_lat_raw, n_max = 5)

longlat <- read_csv(file_long_lat_raw) %>% rename(country_abbr = country)

write_rds(longlat, file_country_long_lat)
