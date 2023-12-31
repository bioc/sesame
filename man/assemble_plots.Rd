% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualizeHelper.R
\name{assemble_plots}
\alias{assemble_plots}
\title{assemble plots}
\usage{
assemble_plots(
  betas,
  txns,
  probes,
  plt.txns,
  plt.mapLines,
  plt.cytoband,
  heat.height = NULL,
  mapLine.height = 0.2,
  show.probeNames = TRUE,
  show.samples.n = NULL,
  show.sampleNames = TRUE,
  sample.name.fontsize = 10,
  dmin = 0,
  dmax = 1
)
}
\arguments{
\item{betas}{beta value}

\item{txns}{transcripts GRanges}

\item{probes}{probe GRanges}

\item{plt.txns}{transcripts plot objects}

\item{plt.mapLines}{map line plot objects}

\item{plt.cytoband}{cytoband plot objects}

\item{heat.height}{heatmap height (auto inferred based on rows)}

\item{mapLine.height}{height of the map lines}

\item{show.probeNames}{whether to show probe names}

\item{show.samples.n}{number of samples to show (default: all)}

\item{show.sampleNames}{whether to show sample names}

\item{sample.name.fontsize}{sample name font size}

\item{dmin}{data min}

\item{dmax}{data max}
}
\value{
a grid object
}
\description{
assemble plots
}
