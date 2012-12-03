#' Get A Map of Washington DC
#'
#' Returns a map of Washington, DC for creating plots with
#' ggplot2 and ggmap. The user can set the zoom and map type
#' for now.
#' 
#' @param zoom zoom level (2-20)
#' @param maptype type of map (e.g. roadmap, satellite, hybrid)
#' @export
get_dc_map <- function(zoom=12, maptype="roadmap")
  get_map("Washington DC", zoom=zoom, maptype=maptype)
