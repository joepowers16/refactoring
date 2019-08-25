getwd()

myfiles <- list.files(recursive = TRUE) 

files_to_rename <- myfiles[(str_detect(myfiles, "drinks_agg"))]

files_to_rename

file.rename(
  from = files_to_rename, 
  to = str_replace(files_to_rename, "drinks_agg", "drinks_latlong_gdp")
)
