% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/code.R
\name{VCFfile}
\alias{VCFfile}
\title{Prepare VCF file for filtering.}
\usage{
VCFfile(x, sample, filter, value)
}
\arguments{
\item{x}{the VCF file to be processed.}

\item{sample}{specify the column name containing the variant info for the
sample of interest.}

\item{filter}{logical, should the variants have a certain quality value in the 7th
mandatory column of the VCF format?}

\item{value}{optional, which variants should be retained? (e.g. PASS)}
}
\description{
VCFfile should be used to process VCF files prior downstream
  analysis with any other function.
}
\details{
This function should be used to process VCF files to make them
  compatible for further filtering. If wanted, a preliminary filtering can be
  performed by specifiying filter = TRUE and a value in "value". As VCF files
  can contain variant information from >1 sample, the column name of the
  sample of interest should be specified.
}
\examples{
# test 1: filter = TRUE
  x <- test
  sample <- "V10"
  filter <- TRUE
  value <- "PASS"
  VCFfile(x,sample, filter, value)

  # test 2: filter = FALSE
  x <- test
  sample <- "V10"
  filter <- FALSE
  VCFfile(x,sample, filter)
}
\author{
Bart Broeckx
}

