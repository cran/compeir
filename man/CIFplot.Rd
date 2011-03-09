\name{CIFplot}
\alias{CIFplot}
\title{
Plotting estimates of the cumulative incidence function
}
\description{
Function for plotting parametric estimates of the cumulative incidence function based on incidence rates. If individual patient data is available, the function also enables to plot the non-parametric, Aalen-Johansen estimates using \code{etm}.
}
\usage{
CIFplot(x, event.code = NULL, covar.code = NULL, indiv.times = NULL, indiv.events = NULL, indiv.covar = NULL, 
xlim = c(0, 30), ylim = NULL, xlab = "Time", ylab = "CIF", legend = TRUE, ...)
}
\arguments{
  \item{x}{
\code{irates} object
}
  \item{event.code}{
A character or numerical value that specifies the respective competing events for which the CIF shall be plotted. If \code{NULL}, \code{event.code} will be inherited from \code{irates}
}
  \item{covar.code}{
A character or numerical value that specifies the respective covariate vlaues for which the CIF shall be plotted. If \code{NULL}, \code{covar.code} will be inherited from \code{irates}
}
  \item{indiv.times}{
Timepoints corresponding to event status for each individual (vector or factor). Only relevant if individual patient data is available. Defaults to \code{NULL}
}
  \item{indiv.events}{
Event status for each individual (vector or factor). Only relevant if individual patient data is available. Defaults to \code{NULL}
}
  \item{indiv.covar}{
Event status for each individual (vector or factor). Only relevant if individual patient data is available. Defaults to \code{NULL}
}
  \item{xlim}{
The x limits (x1, x2) of the plot. Defaults to c(0, 30)
}
  \item{ylim}{
The y limits (y1, y2) of the plot. If \code{NULL}, \code{ylim} will be determined automatically
}
  \item{xlab}{
A title for the x axis. Defaults to \dQuote{Time}
}
  \item{ylab}{
A title for the y axis. Defaults to \dQuote{CIF}
}
  \item{legend}{
Adds a legend to the plot. Defaults to \code{TRUE}
}
  \item{\dots}{
Further arguments for plot
}
}

\seealso{
\code{\link{cif}}, \code{\link[etm]{etm}}
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

### Compute the cumulative incidence function from irates object
### here: timespan is specified by xlim (default: xlim = c(0,30))
CIFplot(x = ir)


### sir.adm: Individual patient data
data(sir.adm)

### aggregate data
agg.sir.adm <- data.reshape(
			times = sir.adm$time, 
			events = sir.adm$status, 
			covar = sir.adm$pneu, 
			no.event.code= "0")

### Plot parametric and non-parametric CIF estimates
CIFplot(
	x = irates(agg.sir.adm), 
	indiv.times = sir.adm$time, 
	indiv.events = sir.adm$status, 
	indiv.covar = sir.adm$pneu)


### okiss: Individual patient data
### here: e.g. just event of interest 1 (infection) is plotted
data(okiss)

### aggregate data
agg.okiss <- data.reshape(
			times = okiss$time, 
			events = okiss$status, 
			covar = okiss$allo, 
			no.event.code= "11")

### Plot parametric and non-parametric CIF estimates
CIFplot(
	x = irates(agg.okiss), 
	event.code = "1",
	indiv.times = okiss$time, 
	indiv.events = okiss$status, 
	indiv.covar = okiss$allo)

}
