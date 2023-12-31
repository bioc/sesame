% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mask.R
\name{prefixMask}
\alias{prefixMask}
\title{Mask SigDF by probe ID prefix}
\usage{
prefixMask(sdf, prefixes = NULL, invert = FALSE)
}
\arguments{
\item{sdf}{SigDF}

\item{prefixes}{prefix characters}

\item{invert}{use the complement set}
}
\value{
SigDF
}
\description{
Mask SigDF by probe ID prefix
}
\examples{
sdf <- resetMask(sesameDataGet("MM285.1.SigDF"))
sum(prefixMask(sdf, c("ctl","rs"))$mask)
sum(prefixMask(sdf, c("ctl"))$mask)
sum(prefixMask(sdf, c("ctl","rs","ch"))$mask)
}
