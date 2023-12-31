% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/species.R
\name{inferSpecies}
\alias{inferSpecies}
\title{Infer Species}
\usage{
inferSpecies(
  sdf,
  topN = 1000,
  threshold.pos = 0.01,
  threshold.neg = 0.1,
  return.auc = FALSE,
  return.species = FALSE,
  verbose = FALSE
)
}
\arguments{
\item{sdf}{a \code{SigDF}}

\item{topN}{Top n positive and negative probes used to infer species.
increase this number can sometimes improve accuracy (DEFAULT: 1000)}

\item{threshold.pos}{pvalue < threshold.pos are considered positive
(default: 0.01).}

\item{threshold.neg}{pvalue > threshold.neg are considered negative
(default: 0.2).}

\item{return.auc}{return AUC calculated, override return.species}

\item{return.species}{return a string to represent species}

\item{verbose}{print more messaeges}
}
\value{
a SigDF
}
\description{
We infer species based on probes pvalues and alignment score.
AUC was calculated for each specie, y_true is 1 or 0 
for pval < threshold.pos or pval > threshold.neg, respeceively,
}
\examples{
sdf <- sesameDataGet("MM285.1.SigDF")
sdf <- inferSpecies(sdf)

## all available species
all_species <- names(sesameDataGet(sprintf(
  "\%s.addressSpecies", sdfPlatform(sdf)))$species)

}
