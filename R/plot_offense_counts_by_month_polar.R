#' Plot Offense Counts by Month in Polar Coordinates of Crime in DC
#'
#' Plots counts of crimes by month in polar coordinats from 2006-2012.
#'
#' @param crime_data data.frame to plot
#' @examples
#' plot_offense_counts_by_month_polar(crime_data=dc_crime_data_sample)
#' @export
plot_offense_counts_by_month <- function(crime_data) {
  p <- plot_offense_counts_by_month(crime_data) +
    coord_polar(theta="x")

  p
}
