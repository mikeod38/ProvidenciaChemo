% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/flag_outliers.R
\name{flag_outliers}
\alias{flag_outliers}
\title{flag_outliers}
\usage{
flag_outliers(lin.mod, df, threshold = 4, noplot, ...)
}
\arguments{
\item{lin.mod}{model fit, lm, glm, lmm, glmm}

\item{df}{data frame in which to flag outlier observations. Must be same as used in lin.mod}

\item{threshold}{threshold for outlier flagging. Usually 4 (4*mean cooks D)}

\item{noplot}{optional to plot outlier observations, leave blank for no plot}
}
\value{
a list of observation indices based on the original data frame
}
\description{
Identify highly influential observations based on both standardized
residuals and cooks distance. Function is a wrapper for plot_outlier.resids
and plot_cooksD.
}
\examples{
df <- flag_outliers(lin.mod, df, threshold = 4, noplot = TRUE)
}
