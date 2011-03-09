\name{sir.adm}
\alias{sir.adm}
\docType{data}
\title{
Pneumonia on admission in intenive care unit patients
}
\description{
Pneumonia status on admission for intensive care unit (ICU) patients, a random sample from the SIR-3 study (also contained in package \code{\link[mvna]{mvna}}).
}
\usage{data(sir.adm)}
\format{
  A data frame with 747 observations on the following 4 variables.
  \describe{
    \item{\code{id}}{Randomly generated patient id}
    \item{\code{pneu}}{Covariate Pneumonia indicator. 0: No pneumonia, 1: Pneumonia}
    \item{\code{status}}{Event status indicator. 0: censored observation, 1: discharged, 2: dead}
    \item{\code{time}}{Follow-up time in days}
  }
}
\source{
Beyersmann, J., Gastmeier, P., Grundmann, H., Baerwolff, S., Geffers, C., Behnke, M., Rueden, H., and Schumacher, M. (2006) Use of multistate models to assess prolongation of intensive care unit stay due to nosocomial infection. \emph{Infection Control and Hospital Epidemiology}, \bold{27},493--499.
}
\seealso{
\code{\link[mvna]{mvna}}
}
\examples{
data(sir.adm)
}
\keyword{datasets}
