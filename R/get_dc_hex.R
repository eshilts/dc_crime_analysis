#' Retrieve DC Colors
#'
#' Get DC Crime Maps colors
#'
#' @param color Name of color needed for plot
#' @return Equivalent hex value for plot functions
#' @note See \{get_dc_color_names\} for the names of colors.
#' @examples
#' get_dc_hex('Deep Red')
#' stopifnot(all.equal(get_dc_hex('Deep Red'), '#780C28'))
#' get_dc_hex() # vector of all colors 
#' get_dc_hex(get_dc_color_names()) # vector of all colors
#' @export
get_dc_hex <- function(color) {
  return(dc_crime_colors[color, 'Hex'])
}
