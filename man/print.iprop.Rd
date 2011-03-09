\name{print.iprop}
\alias{print.iprop}
\title{
Print method for 'iprop' object 
}
\description{
Print method for an object of class \code{iprop}. By default it prints all competing events incidence proportions contained in \code{iprop}. It is also possible to select specific events or covariate values to be printed. Full sample incidence proportions might also be printed. 
}
\usage{
\S3method{print}{iprop}(x, event.code = NULL, covar.code = NULL, full.sample = FALSE, display.digits = 4, ...)
}
\arguments{
  \item{x}{
\code{iprop} object
}
  \item{event.code}{
A character or numerical value that specifies the respective competing events for which the result of \code{iprop} shall be printed. If \code{NULL}, \code{event.code} will be inherited from \code{iprop}
}
  \item{covar.code}{
A character or numerical value that specifies the respective covariates value(s) for which the result of \code{iprop} shall be printed. If \code{NULL}, \code{covar.code} will be inherited from \code{iprop}
}
  \item{full.sample}{
A logical value that specifies if results of \code{iprop} shall also be printed for the full sample, i.e., irrespective of any covariate value. Default is set to \code{FALSE}
}
  \item{display.digits}{
An integer value specifying the number of decimal place for all incidence proportions that shall be printed. Default is set to 4
}
  \item{\dots}{
Other arguments for print method
}
}
\value{
No value is returned.
}
\seealso{
\code{\link{iprop}}
}
