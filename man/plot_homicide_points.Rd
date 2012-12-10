\name{plot_homicide_points}
\alias{plot_homicide_points}
\title{Plot Points of Homicides in DC}
\usage{
  plot_homicide_points(crime_data,
    dc_map = dc_roadmap_zoom12)
}
\arguments{
  \item{crime_data}{data.frame of homicides}

  \item{dc_map}{map to use for plotting. Consider using
  get_dc_map().}
}
\description{
  Plots homicide points from 2006-2012.
}
\examples{
plot_homicide_points(crime_data=dc_crime_data_sample[dc_crime_data_sample$OFFENSE=="HOMICIDE", ])
}

