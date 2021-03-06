% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/1-onlineLogMixture.R, R/2-multiMixture.R
\docType{methods}
\name{summary,online_log_mixture-method}
\alias{ANY-method}
\alias{summary,}
\alias{summary,multi_online_log_mixture-method}
\alias{summary,online_log_mixture-method}
\title{Summary method for the online_log_mixture class}
\usage{
\S4method{summary}{online_log_mixture}(object, ...)

\S4method{summary}{multi_online_log_mixture}(object, each = FALSE, ...)
}
\arguments{
\item{object}{The fitted model}

\item{each}{Default is FALSE; if TRUE it prints, in sequence, the 
summaries of each individual model in the comparison.}

\item{object}{The fitted model}
}
\value{
Nothing

Nothing
}
\description{
Takes an object of type online_log_mixture and prints
the model parameters and a number of descriptives

Takes an object of type online_log_mixture and prints
the model a comparison of the different models based on
a number of different fit measures.
}
\examples{
M1 <- online_log_mixture(2,1)
models <- multi_online_log_mixture(M1)
models <- add_model(models, online_log_mixture(2,2))
models <- add_observation(models, 1, c(2,-3))
summary(models)
}

