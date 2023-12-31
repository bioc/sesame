% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/QC.R
\name{sesameQC_getStats}
\alias{sesameQC_getStats}
\title{Get stat numbers from an sesameQC object}
\usage{
sesameQC_getStats(qc, stat_names = NULL, drop = TRUE)
}
\arguments{
\item{qc}{a sesameQC object}

\item{stat_names}{which stat(s) to retrieve, default to all.}

\item{drop}{whether to drop to a string when stats_names has
only one element.}
}
\value{
a list of named stats to be retrieved
}
\description{
Get stat numbers from an sesameQC object
}
\examples{
sdf <- sesameDataGet("EPIC.1.SigDF")
qc <- sesameQC_calcStats(sdf, "detection")
sesameQC_getStats(qc, "frac_dt")
}
