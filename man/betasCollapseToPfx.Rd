% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sesame.R
\name{betasCollapseToPfx}
\alias{betasCollapseToPfx}
\title{Collapse betas by averagng probes with common probe ID prefix}
\usage{
betasCollapseToPfx(betas, BPPARAM = SerialParam())
}
\arguments{
\item{betas}{either a named numeric vector or a numeric matrix
(row: probes, column: samples)}

\item{BPPARAM}{use MulticoreParam(n) for parallel processing}
}
\value{
either named numeric vector or a numeric matrix of collapsed
beta value matrix
}
\description{
Collapse betas by averagng probes with common probe ID prefix
}
\examples{

## input is a matrix
m <- matrix(seq(0,1,length.out=9), nrow=3)
rownames(m) <- c("cg00004963_TC21", "cg00004963_TC22", "cg00004747_TC21")
colnames(m) <- c("A","B","C")
betasCollapseToPfx(m)

## input is a vector
m <- setNames(seq(0,1,length.out=3),
    c("cg00004963_TC21", "cg00004963_TC22", "cg00004747_TC21"))
betasCollapseToPfx(m)
}
