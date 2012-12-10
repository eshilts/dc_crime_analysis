#' Plot Density of Crime in DC
#'
#' Plots density of crimes from 2006-2012.
#'
#' @param crime_data data.frame to plot
#' @param dc_map map to use for plotting. Consider using get_dc_map().
#' @examples
#' plot_density_on_map(crime_data=dc_crime_data_sample[dc_crime_data_sample$OFFENSE=="HOMICIDE", ]) 
#' @export
plot_density_on_map <- function(crime_data, dc_map=dc_roadmap_zoom12) {
  p <- ggmap(dc_map, extent="device") +
    stat_density2d(
                   data=crime_data, 
                   aes(
                       x=longitude, 
                       y=latitude, 
                       fill=..level.., 
                       alpha=..level..
                       ), 
                   size = 2, 
                   bins = 4, 
                   geom='polygon'
                   ) + 
    scale_alpha(range = c(.4, .75), guide = FALSE) + 
    scale_fill_gradient(low=get_dc_hex('Dark Gray'), high=get_dc_hex('Deep Red')) +
    theme(legend.position=c(0.1, 0.9))

  p
}
