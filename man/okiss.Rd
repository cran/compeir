\name{okiss}
\alias{okiss}
\docType{data}
\title{
Bloodstream infections in stem-cell transplanted patients
}
\description{
A random subsample of 1000 patients from ONKO-KISS, part of the surveillance program of the German National Reference Centre for Surveillance of Hospital-Acquired Infections. Patients have been treated by peripheral blood stem-cell transplantation. After transplantation, patients are neutropenic. Occurrence of bloodstream infection during neutropenia is a severe complication.
}
\usage{data(okiss)}
\format{
  A data frame with 1000 observations on the following 4 variables.
  \describe{
    \item{\code{time}}{Time of neutropenia until first event in days}
    \item{\code{status}}{Event status indicator. 1: infection, 2: end of neutropenia, 7: death, 11: censored observation}
    \item{\code{allo}}{Covariate transplant type indicator: 0: autologous transplants, 1: allogeneic transplants}
    \item{\code{sex}}{Covariate sex indicator: \code{f}: female, \code{m}: male}
  }
}
\details{
The challenge in this competing risks example is that autologous transplants in fact decreased the number of infections divided by the number of patients (i.e., iprop), but that they also increased the number of infections divided by the number of patient-days (i.e., irates).
}
\source{
Beyersmann J., Dettenkofer M., Bertz H., Schumacher M. (2007) A competing risks analysis of bloodstream infection after stem-cell transplantation using subdistribution hazards and cause-specific hazards. \emph{Statistics in Medicine}, \bold{26},5360--5369.
\url{http://onlinelibrary.wiley.com/doi/10.1002/sim.3006/abstract}

Grambauer, N., Schumacher, M., Dettenkofer, M. and Beyersmann, J. (2010) Incidence densities in a competing events setting. \emph{American Journal of Epidemiology} \bold{172},1077--1084. \url{http://aje.oxfordjournals.org/lookup/doi/10.1093/aje/kwq246}
}
\examples{
data(okiss)
}
\keyword{datasets}
