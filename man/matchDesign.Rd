% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/match_design.R
\name{matchDesign}
\alias{matchDesign}
\title{normalize Infinium I probe betas to Infinium II}
\usage{
matchDesign(sdf, min_dbeta = 0.3)
}
\arguments{
\item{sdf}{SigDF}

\item{min_dbeta}{the default algorithm perform 2-state
quantile-normalization of the unmethylated and methylated modes
separately. However, when the two modes are too close, we fall back
to a one-mode normalization. The threshold defines the maximum
inter-mode distance.}
}
\value{
SigDF
}
\description{
This is designed to counter tail inflation in Infinium I probes.
}
\examples{

library(RPMM)
sdf <- sesameDataGet("MM285.1.SigDF")
sesameQC_plotBetaByDesign(sdf)
sesameQC_plotBetaByDesign(matchDesign(sdf))

}
