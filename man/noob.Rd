% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/background.R
\name{noob}
\alias{noob}
\title{Noob background subtraction}
\usage{
noob(sdf, combine.neg = TRUE, offset = 15)
}
\arguments{
\item{sdf}{a \code{SigDF}}

\item{combine.neg}{whether to combine negative control probe.}

\item{offset}{offset}
}
\value{
a new \code{SigDF} with noob background correction
}
\description{
The function takes a \code{SigDF} and returns a modified \code{SigDF}
with background subtracted. Background was modelled in a normal distribution
and true signal in an exponential distribution. The Norm-Exp deconvolution
is parameterized using Out-Of-Band (oob) probes. For species-specific
processing, one should call inferSpecies on SigDF first. Multi-mapping
probes are excluded.
}
\details{
When combine.neg = TRUE, background will be parameterized by both
negative control and out-of-band probes.
}
\examples{
sdf <- sesameDataGet('EPIC.1.SigDF')
sdf.nb <- noob(sdf)
}
