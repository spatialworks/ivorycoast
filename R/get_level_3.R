################################################################################
#
#' Get level 3 (department) boundary polygon for Ivory Coast
#'
#' @param url URL of source map dataset for level 3 (department) boundary polygon
#'     for Ivory Coast. This is set to the URL specified in the internal
#'     steering file data included in the package which provides the URL from
#'     the Humanitarian Data Exchange.
#'
#' @return A \code{SpatialPolygonsDataFrame} class object for the level 3
#'     (department) boundary polygon for Ivory Coast
#'
#' @examples
#' # Get level 3 (department) boundary for Ivory Coast
#' get_level_3()
#'
#' @export
#'
#'
#
################################################################################

get_level_3 <- function(url = steer$url[steer$level == 3]) {
  x <- file.path(tempdir(), "shp")
  y <- tempfile()
  download.file(url = url, destfile = y)
  ## Unzip downloaded zip file
  unzip(zipfile = y, exdir = x)
  ## Read map layers
  shp <- rgdal::readOGR(dsn = x, layer = rgdal::ogrListLayers(dsn = x))
  unlink(y)
  unlink(x, recursive = TRUE)
  return(shp)
}



