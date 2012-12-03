#' Plot Density of Homicides in DC
#'
#' Plots homicide density from 2006-2012.
#'
#' @param crime_data data.frame of homicides
#' @param dc_map map to use for plotting. Consider using get_dc_map().
#' @examples
#' plot_homicide_density(crime_data=dc_crime_data_sample[dc_crime_data_sample$OFFENSE=="HOMICIDE", ]) 
#' @export
plot_homicide_density <- function(crime_data, dc_map=dc_roadmap_zoom12) {
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
    theme(legend.position=c(0.1, 0.9))

  p
}
