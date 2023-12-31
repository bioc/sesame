% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/species.R
\name{updateSigDF}
\alias{updateSigDF}
\title{Set color and mask using strain/species-specific manifest}
\usage{
updateSigDF(sdf, species = NULL, strain = NULL, addr = NULL, verbose = FALSE)
}
\arguments{
\item{sdf}{a \code{SigDF}}

\item{species}{the species the sample is considered to be}

\item{strain}{the strain the sample is considered to be}

\item{addr}{species-specific address species, optional}

\item{verbose}{print more messages}
}
\value{
a \code{SigDF} with updated color channel and mask
}
\description{
also sets attr(,"species")
}
\examples{
sdf <- sesameDataGet('Mammal40.1.SigDF')
sdf_mouse <- updateSigDF(sdf, species="mus_musculus")

}
