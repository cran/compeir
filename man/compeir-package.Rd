\name{compeir-package}
\alias{compeir-package}
\alias{compeir}
\docType{package}
\title{
Competing events incidence rates and corresponding statistics
}
\description{
The package enables to compute event-specific incidence rates for competing risks data, to compute rate ratios, event-specific incidence proportions and cumulative incidence functions from these, and to plot these in a comprehensive multistate-type graphic.
}
\details{
\tabular{ll}{
Package: \tab compeir\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2010-12-20\cr
License: \tab GPL-2\cr
Depends: \tab grid, lattice, etm\cr
LazyLoad: \tab yes\cr
}
The most important function contained in this package is \code{\link{irates}}. \code{irates} returns an object with which further measures can be determined, e.g., incidence rate ratios (\code{\link{irates.ratio}}), incidence proportions (\code{\link{iprop}}) or the cumulative incidence function (\code{\link{cif}}). The latter can easily be plotted using \code{\link{CIFplot}}. Also, a multistate type graphic based on incidence rates can be plotted by \code{\link{plot.irates}}. 
}
\author{
Nadine Grambauer and Andreas Neudecker

Maintainer: Nadine Grambauer \email{nadine@imbi.uni-freiburg.de}
}
\references{
Grambauer, N., Schumacher, M., Dettenkofer, M. and Beyersmann, J. (2010) Incidence densities in a competing events setting. \emph{American Journal of Epidemiology} \bold{172},1077--1084. \url{http://aje.oxfordjournals.org/lookup/doi/10.1093/aje/kwq246}

Altman, D., Machin, D., Bryant, T., Gardner, S. (2000) \emph{Statistics with Confidence: Confidence intervals and statistical guidelines}. Second edition. Bristol: BMJ Books.
}
