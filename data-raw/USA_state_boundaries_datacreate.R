# Source 1: use proj4 to specify Robinson projection with R ggmap and ggplot2 packages? - Geographic Information Systems Stack Exchange (https://gis.stackexchange.com/questions/44387/use-proj4-to-specify-robinson-projection-with-r-ggmap-and-ggplot2-packages). Question by Abe on Dec 19 2012 & Answer by radek on Dec 20 2012


library("rgdal")

# Source 1 begins
USA_state_boundaries_info <- ogrInfo("/inst/shapefiles/states2k/", "states2k")
save(USA_state_boundaries_info, file = "/data/USA_state_boundaries_info.RData", compress = "xz")

USA_state_boundaries_map <- readOGR("/inst/shapefiles/states2k/", "states2k")
save(USA_state_boundaries_map, file = "/data/USA_state_boundaries_map.RData", compress = "xz")

USA_state_boundaries_summary <- summary(USA_state_boundaries_map)
save(USA_state_boundaries_summary, file = "/data/USA_state_boundaries_summary.RData", compress = "xz")
# Source 1 ends
