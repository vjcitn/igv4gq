% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dn8hub.R
\name{filter_sym}
\alias{filter_sym}
\title{filter a symbol from a table meeting dn8 naming conditions, note, hg38 coordinates are expected and not lifted over}
\usage{
filter_sym(.data, sym, radius = 0)
}
\arguments{
\item{.data}{a tbl}

\item{sym}{a character(1) gene symbol}

\item{radius}{numeric(1) include `radius` bp upstream and downstream of gene body limits}
}
\description{
filter a symbol from a table meeting dn8 naming conditions, note, hg38 coordinates are expected and not lifted over
}
\note{
if `pos_b38` is found in the dn8 table, gene addresses from EnsDb.Hsapiens.v79 are used to get gene
addresses in hg38 coordinates.
}
\examples{
if (interactive()) {
 data(gtex_b38_lung_chr20_exc)
 chk =  gtex_b38_lung_chr20_exc |> filter_sym("ANGPT4", radius=5e5) |> as.data.frame()
 print(names(chk))
 print(dim(chk))
 print(summary(-log10(chk$p)))
 chk2 = gtex_b38_lung_chr20_exc |> filter_sym("FAM110A", radius=1e6) |> as.data.frame()
 print(dim(chk2))
 print(summary(-log10(chk2$p)))
}
}
