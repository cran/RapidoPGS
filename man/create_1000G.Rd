% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rapfunc.R
\name{create_1000G}
\alias{create_1000G}
\title{Download 1000 Genomes Phase III panel}
\usage{
create_1000G(
  directory = "ref-data",
  remove.related = TRUE,
  qc.maf = 0.01,
  qc.hwe = 1e-10,
  qc.geno = 0,
  autosomes.only = TRUE
)
}
\arguments{
\item{directory}{a string indicating the directory to download the panel}

\item{remove.related}{a logical stating if related individuals should be removed.
Default TRUE.}

\item{qc.maf}{a numeric to set the MAF threshold for variants to be removed. DEFAULT 0.01}

\item{qc.hwe}{a numeric indicating the threshold for Hardy-Weinberg exact test
p-value, below which variants will be removed. DEFAULT 1e-10.}

\item{qc.geno}{a numeric to set maximum missing call rates for variants. DEFAULT = 0.}

\item{autosomes.only}{If FALSE, it will include X and Y chromosomes, too.}
}
\value{
bed, fam and bim files for each chromosome in the chosen directory.
}
\description{
\code{create_1000G} downloads and gets 1000 Genomes Phase III panel (hg19) in
PLINK format, and apply quality control for being used to compute PGS using
\code{rapidopgs_multi}.
Given the size of the files, running this function can take long, depending
on broadband speed and server status. We also recommend to ensure that there
is at least 60GB free space available in disk.
}
\examples{
\dontrun{
create_1000G()
}
}
\author{
Guillermo Reales
}
