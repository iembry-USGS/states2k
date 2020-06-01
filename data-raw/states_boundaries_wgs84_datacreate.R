# Source 1: image - How to convert WGS84 to NAD83 using R? - Stack Overflow (https://stackoverflow.com/questions/30337268/how-to-convert-wgs84-to-nad83-using-r). Answer by maRtin on May 20 2015

# Source 2: use proj4 to specify Robinson projection with R ggmap and ggplot2 packages? - Geographic Information Systems Stack Exchange (https://gis.stackexchange.com/questions/44387/use-proj4-to-specify-robinson-projection-with-r-ggmap-and-ggplot2-packages). Question by Abe on Dec 19 2012 & Answer by radek on Dec 20 2012


# Specifically created this state boundaries projection for use in the lat_long2state function in the 'iemisc' package

library("rgdal")

# load the map file
load("/data/statesp010_map.RData")


# change the object name
state_boundaries <- statesp010_map


# determine current projection of state_boundaries
proj4string(state_boundaries)


# transform the state_boundaries into the WGS84 projection
state_boundaries_wgs84 <- spTransform(state_boundaries, CRS("+proj=longlat +datum=WGS84 +ellps=WGS84"))
# Sources 1 and 2


save(state_boundaries_wgs84, file = "/data/state_boundaries_wgs84.RData", compress = "xz")
