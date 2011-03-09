\name{data.reshape}
\alias{data.reshape}
\title{
Reshaping individual patient data
}
\description{
Aggregates individual patient data and combines it in a data.frame format required for \code{irates}
}
\usage{
data.reshape(times, events, covar, no.event.code, event.code = NULL, covar.code = NULL)
}
\arguments{
  \item{times}{
Timepoints corresponding to event status for each individual (vector or factor)
}
  \item{events}{
Event status for each individual (vector or factor)
}
  \item{covar}{
Event status for each individual (vector or factor)
}
  \item{no.event.code}{
A character or numerical value that specifies the value in \code{events} corresponding to \dQuote{no event observed}. 
}
  \item{event.code}{
A character or numerical value that specifies the respective competing events in \code{events}. If \code{NULL}, \code{event.code} will be automatically extracted from \code{events}
}
  \item{covar.code}{
A character or numerical value that specifies the respective covariate values in \code{covar}. If \code{NULL}, \code{covar.code} will be automatically extracted from \code{covar}}
}
\value{
An object of class \code{data.frame} of the form \code{data.frame(time, no.event.code, event.code)} with row.names given by \code{covar.code} and corresponding aggregated data entries.
}
\note{
With individual patient data you may also perform non-parametric competing risks analyses, e.g., estimating the cumulative event-specific hazards by applying the package \code{mvna} or estimating the cumulative incidence function (CIF) by using the package \code{etm}. \code{etm} is also required as a diagnostic tool in \code{CIFplot} that enables to compare parametric and non-parametric CIF estimates.
}

\seealso{
\code{\link{irates}}, \code{\link{CIFplot}}, \code{\link[mvna]{mvna}}, \code{\link[etm]{etm}}
}
\examples{
### Example data: 
### Pneumonia on admission in intenive care unit patients

data(sir.adm)

data.reshape(
		times = sir.adm$time, 
		events = sir.adm$status, 
		covar = sir.adm$pneu, 
		no.event.code = "0")

### Example data: 
### Bloodstream infections in stem-cell transplanted patients

data(okiss)

data.reshape(
		times = okiss$time, 
		events = okiss$status, 
		covar = okiss$allo, 
		no.event.code = "11")
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{manip}
