% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tsMapOutliers.R
\name{tsMapOutliers}
\alias{tsMapOutliers}
\title{Maps outliers to a dummy series.}
\usage{
tsMapOutliers(x, range = c(0.01, 0.99))
}
\arguments{
\item{x}{The time series data may not be stationary.}

\item{range}{Quantile range of acceptable values, defaults to \code{range=c(0.01,0.99)}.}
}
\value{
ots a dummy \code{ts} object with 1 when the outlier is detected and 0 everywhere else.
}
\description{
Creates a \code{ts} or \code{zoo} object with 1's in outlier positions and 0's elsewhere.
}
\details{
uses \code{tsDummy()} in identified outliers.
}
\examples{
x <- ts( c(8,rnorm(10),-15), start=c(2000,1),freq=12 )
xo1 <- tsMapOutliers( x )
xo2 <- tsMapOutliers( x, c(.05,.95) )
}

