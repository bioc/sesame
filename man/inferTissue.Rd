% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tissue.R
\name{inferTissue}
\alias{inferTissue}
\title{inferTissue infers the tissue of a single sample (as identified through 
the branchIDs in the row data of the reference) by reporting independent 
composition through cell type deconvolution.}
\usage{
inferTissue(
  betas,
  reference = NULL,
  platform = NULL,
  abs_delta_beta_min = 0.3,
  auc_min = 0.99,
  coverage_min = 0.8,
  topN = 15
)
}
\arguments{
\item{betas}{Named vector with probes and their corresponding beta value 
measurement}

\item{reference}{Summarized Experiment with either hypomethylated or 
hypermethylated probe selection (row data), sample selection (column data), 
meta data, and the betas (assay)}

\item{platform}{String representing the array type of the betas and 
reference}

\item{abs_delta_beta_min}{Numerical value indicating the absolute minimum 
required delta beta for the probe selection criteria}

\item{auc_min}{Numeric value corresponding to the minimum AUC value 
required for a probe to be considered}

\item{coverage_min}{Numeric value corresponding to the minimum coverage 
requirement for a probe to be considered. Coverage is defined here as the 
proportion of samples without an NA value at a given probe.}

\item{topN}{number of probes to at most use for each branch}
}
\value{
inferred tissue as a string
}
\description{
inferTissue infers the tissue of a single sample (as identified through 
the branchIDs in the row data of the reference) by reporting independent 
composition through cell type deconvolution.
}
\examples{
sesameDataCache() # if not done yet
sdf <- sesameDataGet("MM285.1.SigDF")
inferTissue(getBetas(dyeBiasNL(noob(sdf))))

sesameDataGet_resetEnv()

}
