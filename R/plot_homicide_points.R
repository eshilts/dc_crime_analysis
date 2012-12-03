#' Plot Points of Homicides in DC
#'
#' Plots homicide points from 2006-2012.
#'
#' @param crime_data data.frame of homicides
#' @param dc_map map to use for plotting. Consider using get_dc_map().
#' @examples
#' plot_homicide_density(crime_data=dc_crime_data_sample[dc_crime_data_sample$OFFENSE=="HOMICIDE", ]) 
#' @export
plot_homicide_points <- function(crime_data, dc_map=dc_roadmap_zoom12) {
  p <- ggmap(dc_map, extent="device") +
    geom_point(
      data=crime_data, 
      aes(
        x=longitude, 
        y=latitude 
      ),
      alpha=0.25 
    )

  p
}
