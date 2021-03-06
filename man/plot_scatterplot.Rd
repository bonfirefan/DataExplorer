% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_scatterplot.r
\name{plot_scatterplot}
\alias{plot_scatterplot}
\title{Create scatterplot for all features}
\usage{
plot_scatterplot(data, by, sampled_rows = nrow(data),
  geom_point_args = list(), title = NULL, ggtheme = theme_gray(),
  theme_config = list(), nrow = 3L, ncol = 3L, parallel = FALSE)
}
\arguments{
\item{data}{input data}

\item{by}{feature name to be fixed at}

\item{sampled_rows}{number of rows to sample if data has too many rows. Default is all rows, which means do not sample.}

\item{geom_point_args}{a list of other arguments to \link{geom_point}}

\item{title}{plot title}

\item{ggtheme}{complete ggplot2 themes. The default is \link{theme_gray}.}

\item{theme_config}{a list of configurations to be passed to \link{theme}.}

\item{nrow}{number of rows per page}

\item{ncol}{number of columns per page}

\item{parallel}{enable parallel? Default is \code{FALSE}.}
}
\value{
invisibly return the named list of ggplot objects
}
\description{
This function creates scatterplot for all features fixing on a selected feature.
}
\examples{
plot_scatterplot(iris, by = "Species")

library(ggplot2)
plot_scatterplot(
  data = mpg,
  by = "hwy",
  geom_point_args = list(size = 1L),
  theme_config = list("axis.text.x" = element_text(angle = 90)),
  ncol = 4L
)
}
\seealso{
\link{geom_point}
}
\keyword{plot_scatterplot}
