% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_cbds.R
\name{theme_cbds}
\alias{theme_cbds}
\title{CBDS \code{ggplot2} theme}
\usage{
theme_cbds(base_size = 12, base_family = "", ...)
}
\arguments{
\item{base_size}{Base font size (default: 12)}

\item{base_family}{Base font size (default: "sans")}

\item{...}{Arguments passed to \code{\link[ggplot2]{theme}}}
}
\value{
An object as returned by \code{\link[ggplot2]{theme}}
}
\description{
theme that includes black border only on the x- and y- axis, removes grid
lines and background, moves axis labels closer to axes, and allows
flexibility in font and font szie
}
\examples{
require(ggplot2)
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  theme_cbds()
}
\seealso{
\code{\link[ggplot2]{theme}}
}
