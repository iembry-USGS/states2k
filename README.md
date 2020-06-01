# USA.state.boundaries

R data package containing 3 sets of maps of the United States of America (USA). 1) A map of the USA with the NAD 1983 Albers Projection from the USGS that was originally part of `USGSstates2k` which has been archived and is no longer maintained. This map is identified as USA_state_boundaries. Irucka worked with that data set while a Cherokee Nation Technology Solutions (CNTS) USGS Contractor and/or USGS employee. 2) A NAD83 datum map of the USA which includes all State boundaries & also includes Puerto Rico and the U.S. Virgin Islands. This map is identified as statesp010. This map comes from the USGS National Map which has been discontinued. 3) A WGS84 datum map of the USA which includes all State boundaries & also includes Puerto Rico and the U.S. Virgin Islands. This map has been identified as state_boundaries_wgs84. This map is a reprojection of the NAD83 datum map from the USGS National Map.


# Installation from CRAN

```R
install.packages("USA.state.boundaries")
```


# Package Contents
This package contains three sets of map datasets:

* `USA_state_boundaries_map`: USA_state_boundaries map with OGR read data
* `USA_state_boundaries_info`: USA_state_boundaries OGR information
* `USA_state_boundaries_summary`: USA_state_boundaries Spatial summary
* `statesp010_map`: statesp010 map with OGR read data
* `statesp010_info`: statesp010 OGR information
* `statesp010_summary`: statesp010 Spatial summary
* `state_boundaries_wgs84`: state_boundaries_wgs84 map with OGR read data



# Examples
```R
# Sources

# Source 1
# r - Missing axis ticks and labels when plotting world map with geom_sf() - Stack Overflow, answered and edited on Nov 2 2019 By Claus Wilke, https://stackoverflow.com/questions/58663607/missing-axis-ticks-and-labels-when-plotting-world-map-with-geom-sf

# Source 2
# Earth Data Science - Earth Lab Earth Analytics Course: Learn Data Science: Lesson 6. GIS in R: How to Reproject Vector Data in Different Coordinate Reference Systems (crs) in R By Leah Wasser, https://www.earthdatascience.org/courses/earth-analytics/spatial-data-r/reproject-vector-data/

# Source 3
# r-spatial: Drawing beautiful maps programmatically with R, sf and ggplot2 — Part 1: Basics By Mel Moreno and Mathieu Basille, Oct 25, 2018, https://www.r-spatial.org/r/2018/10/25/ggplot2-sf.html


# Map 1
library("USA.state.boundaries")

data(USA_state_boundaries_map)

library("raster")

crs(USA_state_boundaries_map) # Source 2

# CRS arguments:
# +proj=aea +lat_1=29.5 +lat_2=45.5 +lat_0=23 +lon_0=-96 +x_0=0 +y_0=0 +datum=NAD83 +units=m


# base R plotting
plot(USA_state_boundaries_map)


# plotting with ggplot2 through the ggspatial package
library("ggspatial")

USA <- df_spatial(USA_state_boundaries_map)

ggplot(USA, aes(x, y)) +
geom_spatial_point(crs = "+proj=aea +lat_1=29.5 +lat_2=45.5 +lat_0=23 +lon_0=-96 +x_0=0 +y_0=0 +datum=NAD83 +units=m
+no_defs +ellps=GRS80 +towgs84=0,0,0", size = 0.1, stroke = 0.1) +
coord_sf(crs = "+proj=aea +lat_1=29.5 +lat_2=45.5 +lat_0=23 +lon_0=-96 +x_0=0 +y_0=0 +datum=NAD83 +units=m
+no_defs +ellps=GRS80 +towgs84=0,0,0", expand = FALSE) + scale_x_continuous(breaks = seq(-180, 180, by = 20)) + scale_y_continuous(breaks = seq(-90, 90, by = 10)) # Source 1 and Source 3




# Map 2
library("USA.state.boundaries")

data(statesp010_map)

library("raster")

crs(statesp010_map)

# CRS arguments:
# +proj=longlat +datum=NAD83 +no_defs +ellps=GRS80 +towgs84=0,0,0


# base R plotting
plot(statesp010_map)


# plotting with ggplot2

library("ggspatial")

state10 <- df_spatial(statesp010_map)

ggplot(state10, aes(x, y)) +
geom_spatial_point(crs = "+proj=longlat +datum=NAD83 +no_defs +ellps=GRS80 +towgs84=0,0,0", size = 0.1, stroke = 0.1) +
coord_sf(crs = "+proj=longlat +datum=NAD83 +no_defs +ellps=GRS80 +towgs84=0,0,0", expand = FALSE) + scale_x_continuous(breaks = seq(-180, 180, by = 20)) + scale_y_continuous(breaks = seq(-90, 90, by = 10)) # Source 1 and Source 3




# Map 3
library("USA.state.boundaries")

data(state_boundaries_wgs84)

library("raster")

crs(state_boundaries_wgs84)

# CRS arguments:
# +proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0


# base R plotting
plot()


# plotting with ggplot2

library("ggspatial")

state84 <- df_spatial(state_boundaries_wgs84)

ggplot(state84, aes(x, y)) +
geom_spatial_point(crs = "+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0", size = 0.1, stroke = 0.1) +
coord_sf(crs = "+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0", expand = FALSE) + scale_x_continuous(breaks = seq(-180, 180, by = 20)) + scale_y_continuous(breaks = seq(-90, 90, by = 10)) # Source 1 and Source 3
```



# Disclaimer

This software is in the public domain because it contains materials that originally came from the U.S. Geological Survey, an agency of the United States Department of Interior. For more information, see the official [USGS copyright policy](https://www.usgs.gov/information-policies-and-instructions/copyrights-and-credits#copyright)

Although parts of this software program have been used by the U.S. Geological Survey (USGS), no warranty, expressed or implied, is made by the USGS or the U.S. Government as to the accuracy and functioning of the program and related program material nor shall the fact of distribution constitute any such warranty, and no responsibility is assumed by the USGS in connection therewith.

This software is provided "AS IS."
