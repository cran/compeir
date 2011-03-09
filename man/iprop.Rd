\name{iprop}
\alias{iprop}
\title{
Event-specific incidence proportions 
}
\description{
This function computes event-specific incidence proportions using the competing events incidence rates. Also, corresponding variances and confidence intervals are provided.
}
\usage{
iprop(irates, ci.fun = NULL, ci.level = NULL)
}
\arguments{
  \item{irates}{
\code{irates} object
}
  \item{ci.fun}{
A character value out of c(\dQuote{lin}, \dQuote{score}) that specifies the confidence interval function, either linear or score. If \code{NULL}, \code{ci.fun} is set to \dQuote{score}
}
  \item{ci.level}{
A numerical value between 0 and 1 that specifies the level for the two-sided confidence interval. If \code{NULL}, \code{ci.level} is inherited from \code{irates}
}
}
\details{
The incidence proportion is defined as the number of new cases of disease in a sample divided by the sample without disease at baseline. It requires complete data. It is a non-parametric statistic, however, it does not account for time at risk.
}
\value{
An object of class \code{iprop}. This object is implemented as a list of the (besides pre-specified) following items:

\item{ip}{Competing events incidence proportions}
\item{var}{Variance estimates for competing events incidence proportions}
\item{conf.lower}{Lower confidence interval corresponding to pre-specified function and level}
\item{conf.upper}{Upper confidence interval corresponding to pre-specified function and level}
}
\references{
Altman, D., Machin, D., Bryant, T., Gardner, S. (2000) \emph{Statistics with Confidence: Confidence intervals and statistical guidelines}. Second edition. Bristol: BMJ Books.
}
\seealso{
\code{\link{print.iprop}}, \code{\link{irates}}, \code{\link{cif}}
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

### Compute incidence proportions from irates object
iprop(ir)
}
