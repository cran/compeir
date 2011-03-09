\name{plot.irates}
\alias{plot.irates}
\title{
Comprehensive multi-state graphic for competing risks incidence rates analysis
}
\description{
Function for plotting \code{irates} objects. For each covariate value, multistate-type graphics will be displayed, i.e., plots with transition arrows from the initial event to each competing event, where the thickness describes the particular amount of every incidence rate. Full sample graphics might also be plotted. 
}
\usage{
\S3method{plot}{irates}(x, covar.code = NULL, full.sample = FALSE, n.row = 1, viewport.size = list(w = 3.5, h = 2.5), 
box.size = list(w = NULL, h = NULL), dist = 0.5, irates.vbw = NULL, arrow.maxlwd = 10, display.digits = 2, cex = 0.9, show.values = TRUE, mark = NULL, mark.col = "red", main = "", main.dist = 0.4, 
main.gp = gpar(cex = 1.2), ...)
}
\arguments{
  \item{x}{
\code{irates} object
}
  \item{covar.code}{
A character or numerical value that specifies the respective covariates value(s) for which the result of \code{irates} shall be printed. If \code{NULL}, \code{covar.code} will be inherited from \code{irates}
}
  \item{full.sample}{
A \code{logical} value that specifies if results of \code{irates} shall also be printed for the full sample, i.e., irrespective of any covariate value. Default is set to FALSE
}
  \item{n.row}{
An integer value that specifies the number of rows to display the plots for each covariate value. Default is set to 1
}
  \item{viewport.size}{
A list with 2 numerical values \code{list(w, h)} to set the width (w) and height (h) of the viewport. Default is w= 3.5, h = 2.5
}
  \item{box.size}{
A list with 2 numerical values \code{list(w, h)} to set the width (w) and height (h) of the box(es) for each event. If \code{NULL}, w and h will be determined automatically corresponding to the specified \code{event.lab} in \code{irates}
}
  \item{dist}{
A numerical value to set the distance between plots in a row. Default is 0.5
}
  \item{irates.vbw}{
A numerical value to set the width of the background box for the incidence rate values to be displayed. If \code{NULL}, \code{irates.vbw} will be determined automatically corresponding to \code{display.digits}
}
  \item{arrow.maxlwd}{
A numerical value to set the maximum arrow width for the transition with the highest incidence rate. Default is 10.
}
  \item{display.digits}{
An integer value specifying the number of decimal place for all incidence rates that shall be plotted. Default is 2
}
  \item{cex}{
A numerical value giving the amount by which plotting the incidence rate values should be magnified relative to the default
}
  \item{show.values}{
A \code{logical} value specifying if incidence rate values shall be plotted or not. Default is \code{TRUE}
}
  \item{mark}{
A vector of length \code{event.code} with logical values specifying if and which transition arrow shall be marked with a certain color. Defaults to \code{NULL}
}
  \item{mark.col}{
The color to be used for marking transition arrows. Defaults to "red"
}
  \item{main}{
An overall title for the plot
}
  \item{main.dist}{
A numerical value to set the distance between the overall title and the plots
}
  \item{main.gp}{
A numerical value giving the amount by which plotting the title values should be magnified relative to the default
}
  \item{\dots}{
Further arguments for plot
}
}
\references{
Grambauer, N., Schumacher, M., Dettenkofer, M. and Beyersmann, J. (2010) Incidence densities in a competing events setting. \emph{American Journal of Epidemiology} \bold{172},1077--1084. \url{http://aje.oxfordjournals.org/lookup/doi/10.1093/aje/kwq246}
}
\seealso{
\code{\link{irates}}
}
\examples{
#########################
### Pneumonia on admission data: sir.adm
data(sir.adm)
agg.sir <- data.reshape(
			times = sir.adm$time, 
			events = sir.adm$status, 
			covar = sir.adm$pneu, 
			no.event.code = "0")

### Compute irates object from dat
ir1 <- irates(agg.sir)

### Plot multistate-type graphic from irates object
plot(ir1)

#########################
### Compute irates object with certain labels
ir2 <- irates(
		agg.sir, 
		no.event.lab = "Admission", 
		event.lab = c("Discharge","Death"), 
		covar.lab = c("No pneumonia","Pneumonia"))

### Plot multistate-type graphic from irates object
plot(ir2)

#########################
### ONKO-KISS data: okiss
data(okiss)
### Aggregate individual patient data
agg.okiss <- data.reshape(
			times = okiss$time, 
			events = okiss$status, 
			covar = okiss$allo, 
			no.event.code = "11")

### Plot multistate-type graphic from irates object
plot(irates(agg.okiss, 
			no.event.lab = "Neutropenia", 
			event.lab = c("Infection","End of\n Neutropenia","Death"), 
			covar.lab = c("Autologous","Allogenic")
			),
	viewport.size = list(w = 4.5, h = 2.5)
	)
}
\keyword{hplot}
