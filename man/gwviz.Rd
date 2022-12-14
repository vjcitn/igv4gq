% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/basic_igv.R
\name{gwviz}
\alias{gwviz}
\title{simple demo for a table like those produced by Ahmed}
\usage{
gwviz(
  table,
  trackName = "demo",
  pval.col = 10,
  chrom.col = 1,
  pos.col = 3,
  genome = "hg38",
  windowTitle = "simple demo",
  ...
)
}
\arguments{
\item{table}{data.frame with p-values, chr, pos in specified columns with known integer indices}

\item{trackName}{character(1)}

\item{pval.col}{numeric index giving column number of table holding p-values}

\item{chrom.col}{numeric index giving column number of table holding numeric chromosome}

\item{pos.col}{numeric index giving column number of table holding numeric bp position}

\item{genome}{character(1) defaults to "hg38"}

\item{windowTitle}{character(1) defaults to "simple demo"}

\item{\dots}{passed to igvR::GWASTrack}
}
\description{
simple demo for a table like those produced by Ahmed
}
\examples{
data(pax_demo)
# eliminate "uninteresting" loci
pax_demo_filt = pax_demo[pax_demo$P < .1,]
gwviz(table=pax_demo_filt)
}
