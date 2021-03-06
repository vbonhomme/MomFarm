% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/homogeneize.R
\name{homogeneize}
\alias{homogeneize}
\title{Homogeneize for most differences}
\usage{
homogeneize(..., sample = 60, procrustes = TRUE, center = TRUE,
  template = TRUE)
}
\arguments{
\item{...}{\code{list} of shapes or comma-separated shapes}

\item{sample}{if \code{numeric} (default=60), resample this number of points with \link[Momocs:coo_sample]{Momocs::coo_sample}}

\item{procrustes}{\code{logical} (default=TRUE) whether to remove position, size, rotation differences with \link[Momocs:fgProcrustes]{Momocs::fgProcrustes}}

\item{center}{\code{logical} (default=TRUE) whether to center shapes with \link[Momocs:coo_center]{Momocs::coo_center}}

\item{template}{\code{logical} (default=TRUE) whether to template shapes with \link[Momocs:coo_template]{Momocs::coo_template}}
}
\description{
Homogeneize for most differences
}
\examples{
# two shapes, comma separated
list(shapes[1], shapes[2]) \%>\% pile()
homogeneize(shapes[1], shapes[2]) \%>\% pile()

# with params
shapes[1:5] \%>\% homogeneize(sample=120, procrustes=FALSE) \%>\%
 paper \%>\% draw_outlines(col=pal_qual(5, 0.5))

}
