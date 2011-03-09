\name{cif}
\alias{cif}
\title{
Parametrically estimating the cumulative incidence function
}
\description{
This function estimates the cumulative incidence function (CIF) for each respective event type using all competing events incidence rates.
}
\usage{
cif(irates, t, event.code = NULL, covar.code = NULL, full.sample = FALSE)
}
\arguments{
  \item{irates}{
\code{irates} object
}
  \item{t}{
A vector of timepoints for which the CIF shall be calculated
}
  \item{event.code}{
A character or numerical value that specifies the respective competing events for which the CIF shall be calculated. If \code{NULL}, \code{event.code} will be inherited from \code{irates}
}
  \item{covar.code}{
A character or numerical value that specifies the respective covariate vlaues for which the CIF shall be calculated. If \code{NULL}, \code{covar.code} will be inherited from \code{irates}
}
  \item{full.sample}{
A logical value that specifies if the CIF shall also be calculated for the full sample, i.e., irrespective of any covariate value. Default is set to \code{FALSE}
}
}
\details{
The cumulative incidence function is the expected proportion of type h events over the course of time.
}
\value{
An object of class \code{cif}. This object is implemented as a list of the (besides pre-specified) following items:

\item{t}{Timepoints for which the CIF is calculated}
\item{cif}{CIF estimates corresponding to \code{t} for each \code{event.code}
}
}
\references{
Grambauer, N., Schumacher, M., Dettenkofer, M. and Beyersmann, J. (2010) Incidence densities in a competing events setting. \emph{American Journal of Epidemiology} \bold{172},1077--1084. \url{http://aje.oxfordjournals.org/lookup/doi/10.1093/aje/kwq246}
}

\seealso{
\code{\link{irates}}, \code{\link{CIFplot}}
}
\examples{
### Example data.frame with aggregated count data
dat <- data.frame(
			times = c(7948,2899), 
			no.event = c(6,8), 
			event.1 = c(589,68), 
			event.2 = c(55,21), 
			row.names = c("covar0","covar1"))  

### Compute irates object from dat
ir <- irates(dat)

### Compute the cumulative incidence function from irates object, e.g.
cif(irates = ir, t = 1:10)

}