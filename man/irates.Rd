\name{irates}
\alias{irates}
\title{
Competing events incidence rates
}
\description{
This function computes event-specific incidence rates (a.k.a incidence densities) for competing risks data together with corresponding variances and confidence intervals. Incidence rates can be computed for separate covariate values of one binary or categorical covariate.
}
\usage{
irates(data, time.code = NULL, no.event.code = NULL, no.event.lab = NULL, event.lab = NULL, covar.lab = NULL, 
full.sample.lab = "Full sample", ci.level = 0.95, ci.fun = "log")
}
\arguments{
  \item{data}{
A data.frame, where columns contain the aggregated observation time (i.e., \code{time.code}), censored events (i.e., \code{no.event.code}) and aggregated count data for each event type (i.e., \code{event.code}); each row corresponds to a certain covariate value
}
  \item{time.code}{
A character or numerical value that specifies the \code{time.code} colname in \code{data}. If \code{NULL}, \code{time.code} is assumed to be the first colname in \code{data}
}
  \item{no.event.code}{
A character or numerical value that specifies the \code{no.event.code} colname in \code{data}. If \code{NULL}, \code{no.event.code} is assumed to be the second colname in \code{data}
}
  \item{no.event.lab}{
A character value that specifies a certain label for \code{no.event.code} column name in \code{data}. If \code{NULL}, \code{no.event.lab} equals \code{no.event.code}
}
  \item{event.lab}{
A character value (potentially vector with order and length according to order and number of competing events in \code{data}) that specifies a certain label for each event code in \code{data}. If \code{NULL}, \code{event.lab} equals the colname for each event code in \code{data}
}
  \item{covar.lab}{
A character value (potentially vector with order and length according to order and number of covariate values in \code{data}) that specifies a certain label for each event code (i.e. rowname) in \code{data}. If \code{NULL}, \code{covar.lab} equals the rowname for each covariate code in \code{data}
}
  \item{full.sample.lab}{
A character value that specifies a certain label for the full sample \code{irates} from \code{data}. Default is set to \dQuote{Full sample}
}
  \item{ci.level}{
A numerical value between 0 and 1 that specifies the level for the two-sided confidence interval. Default is set to .95
}
  \item{ci.fun}{
A character value out of c(\dQuote{lin}, \dQuote{log}) that specifies the confidence interval function, either linear or log-transformed. Default is set to \dQuote{log}
}
}
\details{
The incidence rate is defined as the number of new cases of disease in a sample divided by the sample-time at risk.
}
\value{
An object of class \code{irates}. This object is implemented as a list of the (besides pre-specified) following items:

\item{ir}{Competing events incidence rates}
\item{var}{Variance estimates for competing events incidence rates}
\item{conf.lower}{Lower confidence interval corresponding to pre-specified function and level}
\item{conf.upper}{Upper confidence interval corresponding to pre-specified function and level}
\item{N}{Distribution of covariate values at baseline}
\item{n}{data.frame with counts for each event according to covariate value as well as for the full sample}
}
\references{
Grambauer, N., Schumacher, M., Dettenkofer, M. and Beyersmann, J. (2010) Incidence densities in a competing events setting. \emph{American Journal of Epidemiology} \bold{172},1077--1084. \url{http://aje.oxfordjournals.org/lookup/doi/10.1093/aje/kwq246}
}
\note{
If individual patient data is available and incidence rates shall be computed, the data can be easily reshaped to the required data.frame format by using the function \code{data.reshape}
}

\seealso{
\code{\link{print.irates}}, \code{\link{summary.irates}}, \code{\link{plot.irates}}, \code{\link{data.reshape}}, \code{\link{grid}}
}
\examples{
### With individual patient data - sir.adm - using the function data.reshape
data(sir.adm)
dat1 <- data.reshape(
			times = sir.adm$time, 
			events = sir.adm$status, 
			covar = sir.adm$pneu, 
			no.event.code = "0")

### With aggregated count data
dat2 <- data.frame(
			time = c(7948,2899), 
			no.event = c(6,8), 
			event.1 = c(589,68), 
			event.2 = c(55,21), 
			row.names = c("covar0","covar1"))  

### Compute incidence rates from dat1 or dat2 (here dat2)
irates(dat2)

### Specify columns with time and no.event information
irates(
	dat2, 
	time.code = "time", 
	no.event.code = "no.event")

### Set specific labels
irates(
	dat2, 
	no.event.lab = "Admission", 
	event.lab = c("Discharge","Death"), 
	covar.lab = c("No pneumonia","Pneumonia"))
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{math}
