# states2k

R data package containing a map of the United States of America with the NAD 1983 Albers projection. This data was obtained from the United States Geological Survey (USGS). Irucka Embry used this map while a Cherokee Nation Technology Solutions (CNTS) United States Geological Survey (USGS) Contractor and/or USGS employee.


# Installation

```R
install.packages("states2k")
```


# Package Contents
This package contains three datasets:

* `states2k_map`: states2k map with OGR read data
* `states2k_info`: states2k OGR information
* `states2k_summary`: states2k Spatial summary



# Examples
```R
library(states2k)

data(states2k_map)

plot(states2k_map)
```



# Disclaimer

This software is in the public domain because it contains materials that originally came from the U.S. Geological Survey, an agency of the United States Department of Interior. For more information, see the official [USGS copyright policy](http://www.usgs.gov/visual-id/credit_usgs.html#copyright)

Although this software program has been used by the U.S. Geological Survey (USGS), no warranty, expressed or implied, is made by the USGS or the U.S. Government as to the accuracy and functioning of the program and related program material nor shall the fact of distribution constitute any such warranty, and no responsibility is assumed by the USGS in connection therewith.

This software is provided "AS IS."
