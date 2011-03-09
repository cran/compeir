\name{print.irates}
\alias{print.irates}
\title{
Print method for 'irates' object 
}
\description{
Print method for an object of class \code{irates}. By default it prints all competing events incidence rates contained in \code{irates}. It is also possible to select specific events or covariate values to be printed. Full sample incidence rates might also be printed. 
}
\usage{
\S3method{print}{irates}(x, event.code = NULL, covar.code = NULL, full.sample = FALSE, display.digits = 4, ...)
}
\arguments{
  \item{x}{
\code{irates} object
}
  \item{event.code}{
A character or numerical value that specifies the respective competing events for which the result of \code{irates} shall be printed. If \code{NULL}, \code{event.code} will be inherited from \code{irates}
}
  \item{covar.code}{
A character or numerical value that specifies the respective covariates value(s) for which the result of \code{irates} shall be printed. If \code{NULL}, \code{covar.code} will be inherited from \code{irates}
}
  \item{full.sample}{
A logical value that specifies if results of \code{irates} shall also be printed for the full sample, i.e., irrespective of any covariate value. Default is set to \code{FALSE}
}
  \item{display.digits}{
An integer value specifying the number of decimal place for all incidence rates that shall be printed. Default is set to 4
}
  \item{\dots}{
Other arguments for print method
}
}
\value{
No value returned.
}

\seealso{
\code{\link{irates}}
}
