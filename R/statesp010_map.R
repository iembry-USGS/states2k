#' statesp010 with OGR read data
#'
#' A spatial polygons data frame containing a map of the USA based on the NAD83
#' datum projection.
#'
#' @format A sp SpatialPolygonsDataFrame with 61 rows and 13 variables:
#' \describe{
#' \item{NAME}{character State or State equivalent name}
#' \item{STATE_ABBR}{character abbreviation for State or State equivalent}
#' \item{STATE_FIPS}{integer FIPS code for State or State equivalent}
#' \item{ORDER_ADM}{integer rank for order of States admitted to US}
#' \item{MONTH_ADM}{integer month when State admitted to US}
#' \item{DAY_ADM}{integer day of month when State admitted to US}
#' \item{YEAR_ADM}{integer year when State admitted to US}
#' \item{TYPE}{character area is land or water}
#' \item{POP}{integer population State or State equivalent in the 2010 Census}
#' \item{SQ_MILES}{numeric calculated area in square miles}
#' \item{PRIM_MILES}{numeric calculated perimeter of area in miles}
#' \item{Shape_Leng}{numeric shape length}
#' \item{Shape_Area}{numeric shape area}
#' }
#'
#'
#'
#'
#' @docType data
#' @name statesp010_map
#' @usage statesp010_map
#' @examples
#' statesp010_map
NULL
