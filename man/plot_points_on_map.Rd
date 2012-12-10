\name{plot_points_on_map}
\alias{plot_points_on_map}
\title{Plot Points in DC}
\usage{
  plot_points_on_map(crime_data,
    dc_map = dc_roadmap_zoom12, color = "Deep Red")
}
\arguments{
  \item{crime_data}{data.frame of points}

  \item{dc_map}{map to use for plotting. Consider using
  get_dc_map().}

  \item{color}{color of points}
}
\description{
  Plots points on a DC map from 2006-2012.
}
\examples{
# Plot Homicides
plot_points_on_map(crime_data=dc_crime_data_sample[dc_crime_data_sample$OFFENSE=="HOMICIDE", ])
# Plot Arsons
plot_points_on_map(crime_data=dc_crime_data_sample[dc_crime_data_sample$OFFENSE=="ARSON", ])
}

