% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sesameAnno.R
\name{sesameAnno_buildAddressFile}
\alias{sesameAnno_buildAddressFile}
\title{Build sesame ordering address file from tsv}
\usage{
sesameAnno_buildAddressFile(tsv)
}
\arguments{
\item{tsv}{a platform name, a file path or a tibble/data.frame manifest file}
}
\value{
a list of ordering and controls
}
\description{
Build sesame ordering address file from tsv
}
\examples{
\dontrun{
tsv = sesameAnno_download("HM450.hg38.manifest.tsv.gz")
addr <- sesameAnno_buildAddressFile(tsv)
}
}
