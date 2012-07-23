#' Cleans Data: Add Date Field
#'
#' Helper function to clean DC crime data
#' Turns REPORT_DAT field into date field
#'
#' @param dc_crime_data data.frame of crime data
#' @export
#' @examples
#' dc_crime_data <- clean_data_time(load_crime_data_by_ward())
clean_data_time <- function(dc_crime_data) {
  dc_crime_data$date <- as.Date(dc_crime_data$REPORT_DAT)

  dc_crime_data
}
