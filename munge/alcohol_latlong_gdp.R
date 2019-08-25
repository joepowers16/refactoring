##############################################################################-
## Project:
## Script purpose:
## Date:
## Author: Joseph T. Powers
##############################################################################-

suppressPackageStartupMessages(library(lubridate))
suppressPackageStartupMessages(library(magrittr))
suppressPackageStartupMessages(library(tidyverse))

source(here::here("file_paths.R"))
 
# list.files(dir_data)

long_lat <- read_rds(file_country_long_lat)
drinks <- read_rds(file_drinks_per_person_year)
gdp <- read_rds(file_gdp_ppp)

gdp_2016 <- gdp %>% filter(valid_year == "2016")

d <-
  left_join(drinks, long_lat, by = c("country" = "name")) %>% 
  left_join(gdp_2016, by = c("country" = "country_name"))

write_rds(d, file_drinks_latlong_gdp)