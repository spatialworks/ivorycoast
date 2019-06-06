################################################################################
#
#' Get settlements of Ivory Coast
#'
#' @param url URL of source map dataset for settlements for Ivory Coast. This
#'     is set to the URL specified in the internal steering file data included
#'     in the package which provides the URL from the Humanitarian Data
#'     Exchange.
#'
#' @return A \code{SpatialPointsDataFrame} class object for the settlements
#'     for Ivory Coast
#'
#' @examples
#' # Get settlements for Ivory Coast
#' get_settlements()
#'
#' @export
#'
#
################################################################################

get_settlements <- function(url = steer$url[steer$level == 4]) {
  x <- file.path(tempdir(), "shp")
  y <- tempfile()
  download.file(url = url, destfile = y)
  ## Unzip downloaded shapefile
  unzip(zipfile = y, exdir = x)
  ## Read map layer
  shp <- rgdal::readOGR(dsn = x, layer = rgdal::ogrListLayers(x))
  unlink(y)
  unlink(x, recursive = TRUE)
  return(shp)
}
