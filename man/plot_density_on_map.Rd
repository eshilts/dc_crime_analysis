\name{plot_density_on_map}
\alias{plot_density_on_map}
\title{Plot Density of Crime in DC}
\usage{
  plot_density_on_map(crime_data,
    dc_map = dc_roadmap_zoom12)
}
\arguments{
  \item{crime_data}{data.frame to plot}

  \item{dc_map}{map to use for plotting. Consider using
  get_dc_map().}
}
\description{
  Plots density of crimes from 2006-2012.
}
\examples{
plot_density_on_map(crime_data=dc_crime_data_sample[dc_crime_data_sample$OFFENSE=="HOMICIDE", ])
}

