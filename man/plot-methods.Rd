% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/1-onlineLogMixture.R, R/2-multiMixture.R
\docType{methods}
\name{plot,online_log_mixture,missing-method}
\alias{ANY-method}
\alias{plot,}
\alias{plot,multi_online_log_mixture,missing-method}
\alias{plot,online_log_mixture,missing-method}
\title{Plot method for the online_log_mixture class}
\usage{
\S4method{plot}{online_log_mixture,missing}(x, y, params = FALSE,
  omit = 100, param.y = c(-5, 5), ...)

\S4method{plot}{multi_online_log_mixture,missing}(x, y, params = FALSE,
  omit = 100, param.y = c(-5, 5), ...)
}
\arguments{
\item{x}{The online_log_mixture object}

\item{y}{NULL}

\item{params}{Boolean, if TRUE the trace of the parameter values will also be printed}

\item{omit}{Number of observations to omit from the log likelihood and l2 Norm traces}

\item{.y}{a vector with the min and max values of the plot of the beta parameters}

\item{x}{An object of type multi_online_log_mixture}

\item{y}{NULL}

\item{params}{Boolean, if TRUE the trace of the parameter values will also be printed}

\item{omit}{Number of observations to omit from the log likelihood and l2 Norm traces}

\item{.y}{a vector with the min and max values of the plot of the beta parameters}
}
\description{
Plot an object of type online_log_mixture.
This will only produce a plot when \code{trace!=FALSE}
The plots will be of the log-likelihood of the model over
the number of observations and the average change in L2
norm of the model parameters. Also, when \code{params=TRUE}
plots of the parameter estimates over time will also be produced.

Will create a plot of each of the models stored in 
the model comparison class that you can browse one by
one.
}
\examples{
M2 <- online_log_mixture(3,3, trace=1)
for(i in 1:10000){ 	
	X <- runif(3,-2,2)
	y <- rbinom(1, 1, inv_logit(c(0,-2,2)\%*\%X))
	M2 <- add_observation(M2, y, X, 0)
}
plot(M2, params=TRUE)

M1 <- online_log_mixture(2,1, trace=1)
models <- multi_online_log_mixture(M1)
models <- add_model(models, online_log_mixture(2,2, trace=1))
for(i in c(1:100)){
models <- add_observation(models, rbinom(1,1,.5), rnorm(2,0,1))
}
plot(models, params=TRUE, omit=0)

}

