% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mask.R
\name{prefixMaskButC}
\alias{prefixMaskButC}
\title{Mask all but C probes in SigDF}
\usage{
prefixMaskButC(sdf)
}
\arguments{
\item{sdf}{SigDF}
}
\value{
SigDF
}
\description{
Mask all but C probes in SigDF
}
\examples{
sdf <- resetMask(sesameDataGet("MM285.1.SigDF"))
sum(prefixMaskButC(sdf)$mask)
}
