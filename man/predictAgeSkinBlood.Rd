% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/age.R
\name{predictAgeSkinBlood}
\alias{predictAgeSkinBlood}
\title{Horvath Skin and Blood age predictor}
\usage{
predictAgeSkinBlood(betas)
}
\arguments{
\item{betas}{a probeID-named vector of beta values}
}
\value{
age in years
}
\description{
The function takes a named numeric vector of beta values. The name attribute
contains the probe ID (cg, ch or rs IDs). The function looks for overlapping
probes and estimate age using Horvath aging model (Horvath et al. 2018
Aging, 391 probes). The function outputs a single numeric of age in years.
}
\examples{
cat("Deprecated. See predictAge")
}
