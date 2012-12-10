#' Plot Offense Counts of Crime in DC
#'
#' Plots counts of crimes from 2006-2012.
#'
#' @param crime_data data.frame to plot
#' @examples
#' plot_offense_counts(crime_data=dc_crime_data_sample)
#' @export
plot_offense_counts <- function(crime_data) {
  p <- ggplot(crime_data, aes(x=year, colour=OFFENSE, group=OFFENSE)) + geom_line(stat="bin")

  p
}
