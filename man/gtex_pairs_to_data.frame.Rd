% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gtex_pairs_to_data.frame.R
\name{gtex_pairs_to_data.frame}
\alias{gtex_pairs_to_data.frame}
\title{import signif_variant_gene_pairs from GTEx to data.frame, adding symbol and other metadata about genes}
\usage{
gtex_pairs_to_data.frame(pairs_path, gencode_data.frame)
}
\arguments{
\item{pairs_path}{character(1), field "gene_id" will be join key}

\item{gencode_data.frame}{data.frame instance with additional metadata, field "Tx" will be join key}
}
\value{
data.frame with pairs records joined with gencode metadata and chr.variant and chr.pos
}
\description{
import signif_variant_gene_pairs from GTEx to data.frame, adding symbol and other metadata about genes
}
\note{
the variant_id field will be split by underscore and first 2 items are chr and variant position
}
\examples{
pairs_path = system.file("gtex_pairs/lung_demo.pairs.txt.gz", package="igv4gq")
data(gencode_26_df)
lit = gtex_pairs_to_data.frame(pairs_path, gencode_26_df)
head(lit)
}
