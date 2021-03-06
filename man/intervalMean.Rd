% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/intervalMean.R
\name{intervalMean}
\alias{intervalMean}
\title{Computes long-term fixed ten-day interval means of raster time series.}
\usage{
intervalMean(variable, tstart, tend, timedate, cores, clcall = NULL)
}
\arguments{
\item{variable}{A \code{RasterBrick} or \code{RasterStack} object with
values on a daily resolution.}

\item{tstart}{Numeric value (four places) for the first year of the time period
to consider as long-term interval, e.g. \code{tstart = 1984}.}

\item{tend}{Numeric value (four places) for the last year of the time period
to consider as long-term interval, e.g. \code{tstart = 2014}.}

\item{timedate}{A \code{POSIXct} vector containing the time
information for each band/layer of \code{variable}.}

\item{cores}{The number of cores to be used in parallel computing.}

\item{clcall}{A function passed to \code{\link[parallel]{clusterCall}}.}
}
\value{
A list with the first element representing the aggregated
raster time series with fixed ten-day interval mean values as a \code{RasterBrick} and
the second element a \code{POSIXct} vector containing information on the sequence of
ten-day intervals (i.e. an integer value from 1 to 36).
}
\description{
\code{intervalMean} aggregates raster based time series
(\code{RasterBrick} or \code{RasterStack} object, see:
\code{\link[raster]{Raster-class}}) by computing the long-term
mean values for a specified time period grouped by ten-day intervals.
For each month of a year, three fixed ten-day interval is constructed
with the first reaching from the first to the 10th day, the second from
the 11th to the 20th and the third from the 21 to the 28th/29th/30th/31th
day of the month, depending on its length.
}
\examples{
#
}
