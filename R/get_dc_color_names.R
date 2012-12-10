#' Retrieves DC Crime Maps Color Names
#'
#' Returns a vector of the DC Crime Maps colors names for use in
#' \{get_dc_hex\}
#' 
#' @return Vector of names of DC Crime maps colors
#' @examples
#' get_dc_color_names()
#' @export
get_dc_color_names <- function() {
  as.character(dc_crime_colors$Name)
}
