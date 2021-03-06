% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/downscale.train.R
\name{elm.train}
\alias{elm.train}
\title{Donwscaling with extreme learning machine (ELM).}
\usage{
elm.train(x, y, fitting = "MP", neurons = 100, Act.F = "sig",
  area.region = NULL, area.module = NULL)
}
\arguments{
\item{x}{The grid data. Class: matrix.}

\item{y}{The observations data. Class: matrix.}

\item{fitting}{Type of fitting used: c(MP","MP+L2"). There are two options: Moore-Penrose ("MP") that uses the generalized inverse via \code{\link[MASS]{ginv}} or the L2 penalty, commonly known as ridge regression ("MP+L2"). This is an optional parameter and the default is "MP".}

\item{neurons}{The number of hidden neurons. This is an optional parameter and the default is 100.}

\item{Act.F}{The type of activation function of the hidden neurons. This is an optional parametern and the default is 'sig' or sigmoidal.}

\item{area.region}{A vector with two parameters (i.e. c(a,b)), meaning the number of consecutive points of x in latitude (a) and in longitude (b). This is an optional parameter and the default is NULL.}

\item{area.module}{The size of the area within the grid region that is masked and fed to the hidden neurons. This is an optional parameter and the default is NULL.}
}
\value{
If fitting = "LS", then returns a MLR model as returned from \code{\link[stats]{lm}} whereas if fitting = ("MP" or "MP+L2") then returns just the estimated coefficients/weights.
}
\description{
Donwscaling with extreme learning machine (ELM).
}
\details{
The bias is input as an additional input neuron in the weight matrix with value equal 1. The indicated optional parameters can be changed by including them in \code{\link[downscaleR]{downscale.predict}}. This function is internal and should not be used by the user. The user should use \code{\link[downscaleR]{downscale.predict}}.
}
\author{
J. Bano-Medina
}
