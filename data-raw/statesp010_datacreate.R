# Source 1: Read a table from an ESRI file geotestbase (.gdb) using R - Geographic Information Systems Stack Exchange (https://gis.stackexchange.com/questions/184013/read-a-table-from-an-esri-file-geotestbase-gdb-using-r). Answered and edited by huckfinn on Mar 9 2016

# Source 2: use proj4 to specify Robinson projection with R ggmap and ggplot2 packages? - Geographic Information Systems Stack Exchange (https://gis.stackexchange.com/questions/44387/use-proj4-to-specify-robinson-projection-with-r-ggmap-and-ggplot2-packages). Question by Abe on Dec 19 2012 & Answer by radek on Dec 20 2012


# set the working directory
setwd("/decompressed/statesp010g/")

# Source 1 begins
# Load library to get readOGR function
library("rgdal")

# Conversation to a shapefile container
system("ogr2ogr -f 'ESRI SHAPEFILE' /inst/shapefiles/state_boundaries/statesp010g.gdb")
# Source 1 ends


# Source 2 begins
statesp010_info <- ogrInfo("/inst/shapefiles/state_boundaries/", "statesp010g")
save(statesp010_info, file = "/data/statesp010_info.RData", compress = "xz")

statesp010_map <- readOGR("/inst/shapefiles/state_boundaries/", "statesp010g")
save(statesp010_map, file = "/data/statesp010_map.RData", compress = "xz")

statesp010_summary <- summary(statesp010_map)
save(statesp010_summary, file = "/data/statesp010_summary.RData", compress = "xz")
# Source 2 ends
