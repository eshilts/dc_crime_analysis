#' Plot Offense Counts by Month of Crime in DC
#'
#' Plots counts of crimes by month from 2006-2012.
#'
#' @param crime_data data.frame to plot
#' @examples
#' plot_offense_counts_by_month(crime_data=dc_crime_data_sample)
#' @export
plot_offense_counts_by_month <- function(crime_data) {
  p <- ggplot(crime_data, aes(x=month, colour=OFFENSE, group=OFFENSE)) + 
    geom_line(stat="bin")

  p
}
