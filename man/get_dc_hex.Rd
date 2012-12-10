\name{get_dc_hex}
\alias{get_dc_hex}
\title{Retrieve DC Colors}
\usage{
  get_dc_hex(color)
}
\arguments{
  \item{color}{Name of color needed for plot}
}
\value{
  Equivalent hex value for plot functions
}
\description{
  Get DC Crime Maps colors
}
\note{
  See \{get_dc_color_names\} for the names of colors.
}
\examples{
get_dc_hex('Deep Red')
stopifnot(all.equal(get_dc_hex('Deep Red'), '#780C28'))
get_dc_hex() # vector of all colors
get_dc_hex(get_dc_color_names()) # vector of all colors
}

