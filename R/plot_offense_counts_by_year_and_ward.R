#' Plot Offense Counts of Crime by Year and Ward in DC
#'
#' Plots counts of crimes by Year and Ward from 2006-2012.
#'
#' @param crime_data data.frame to plot
#' @examples
#' plot_offense_counts(crime_data=dc_crime_data_sample)
#' @export
plot_offense_counts <- function(crime_data) {
  p <- ggplot(crime_data, aes(x=year, colour=OFFENSE, group=OFFENSE)) + 
    geom_line(stat="bin") +
    facet_wrap(~WARD)

  p
}
