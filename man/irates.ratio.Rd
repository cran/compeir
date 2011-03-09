\name{irates.ratio}
\alias{irates.ratio}
\title{
Ratio between two event-specific incidence rates
}
\description{
This function computes event-specific incidence rate ratios between two groups. Each group is given by a covariate value. 
}
\usage{
irates.ratio(irates, covar.code, ci.fun = NULL, ci.level = NULL)
}
\arguments{
  \item{irates}{
\code{irates} object
}
  \item{covar.code}{
A vector of character or numerical values that specifies the covariate values in \code{irates} to be compared. The vector must contain two values, the order specifies the ratio
}
  \item{ci.fun}{
A character value out of c(\dQuote{lin}, \dQuote{log}) that specifies the confidence interval function, either linear or log-transformed. If \code{NULL}, \code{ci.fun} is inherited from \code{irates}
}
  \item{ci.level}{
A numerical value between 0 and 1 that specifies the level for the two-sided confidence interval. If \code{NULL}, \code{ci.level} is inherited from \code{irates}
}
}
\value{
An object of class \code{irates.ratio}. This object is implemented as a list of the (besides pre-specified) following items:

\item{irr}{Competing events incidence rate ratios}
\item{var}{Variance estimates for competing events incidence rate ratios}
\item{conf.lower}{Lower confidence interval corresponding to pre-specified function and level}
\item{conf.upper}{Upper confidence interval corresponding to pre-specified function and level}
}
\seealso{
\code{\link{print.irates.ratio}}
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

### Compute incidence rate ratios from irates object
irates.ratio(
		ir, 
		covar.code = c("covar1", "covar0"))

}
