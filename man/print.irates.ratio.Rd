\name{print.irates.ratio}
\alias{print.irates.ratio}
\title{
Print method for 'irates.ratio' object 
}
\description{
Print method for an object of class \code{irates.ratio}. By default it prints all competing events incidence rates contained in \code{irates}. It is also possible to select specific events to be printed.
}
\usage{
\S3method{print}{irates.ratio}(x, event.code = NULL, display.digits = 4, ...)
}
\arguments{
  \item{x}{
\code{irates.ratio} object
}
  \item{event.code}{
A character or numerical value that specifies the respective competing events for which the result of \code{irates.ratio} shall be printed. If \code{NULL}, \code{event.code} will be inherited from \code{irates.ratio}
}
  \item{display.digits}{
An integer value that specifies the number of digits that shall be printed. Default is set to 4
}
  \item{\dots}{
Other arguments for print method
}
}
\value{
No value is returned.
}
\seealso{
\code{\link{irates.ratio}}
}
