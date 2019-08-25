library(fs)

dir_proj <- here::here()
dir_cloud <- here::here("cloud_refactoring")
dir_data <- fs::path(dir_cloud, "data")
dir_raw <- fs::path(dir_data, "raw")
dir_munge <- here::here("munge")
dir_analysis <- here::here("analysis")
dir_reports <- fs::path(dir_cloud, "reports")

# Raw data ####
# https://github.com/fivethirtyeight/data/tree/master/alcohol-consumption
file_drinks_raw <- fs::path(dir_raw, "drinks.csv")

# "https://developers.google.com/public-data/docs/canonical/countries_csv"
file_long_lat_raw <- fs::path(dir_raw, "long_lat.csv")

# http://data.worldbank.org/indicator/NY.GDP.PCAP.PP.CD
file_ppp_raw <- fs::path(dir_raw, "ppp", "API_NY.GDP.PCAP.PP.CD_DS2_en_csv_v2.csv")

# Tidy data ####
file_drinks_per_person_year <- fs::path(dir_data, "drinks_per_person_year.rds")
file_country_long_lat <- fs::path(dir_data, "country_long_lat.rds")
file_gdp_ppp <- fs::path(dir_data, "gdp_ppp.rds")

file_drinks_latlong_gdp <- fs::path(dir_data, "drinks_latlong_gdp.rds")