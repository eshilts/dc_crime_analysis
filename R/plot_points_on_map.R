#' Plot Points in DC
#'
#' Plots points on a DC map from 2006-2012.
#'
#' @param crime_data data.frame of points
#' @param dc_map map to use for plotting. Consider using get_dc_map().
#' @param color color of points
#' @examples
#' # Plot Homicides
#' plot_points_on_map(crime_data=dc_crime_data_sample[dc_crime_data_sample$OFFENSE=="HOMICIDE", ]) 
#' # Plot Arsons
#' plot_points_on_map(crime_data=dc_crime_data_sample[dc_crime_data_sample$OFFENSE=="ARSON", ]) 
#' @export
plot_points_on_map <- function(crime_data, dc_map=dc_roadmap_zoom12, color='Deep Red') {
  p <- ggmap(dc_map, extent="device") +
    geom_point(
      data=crime_data, 
      aes(
        x=longitude, 
        y=latitude 
      ),
      alpha=0.75,
      colour=get_dc_hex(color)
    )

  p
}
