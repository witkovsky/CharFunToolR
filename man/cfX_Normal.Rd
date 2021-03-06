% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cfX_Normal.R
\name{cfX_Normal}
\alias{cfX_Normal}
\title{Characteristic function of Normal distribution}
\usage{
cfX_Normal(t, mean = 0, variance = 1)
}
\arguments{
\item{t}{numerical values (number, vector...)}

\item{mean}{real number, mean or expextation of the distribution, default value \eqn{mean = 0}}

\item{variance}{real number, standard deviation, \eqn{variance > 0}, default value \eqn{variance = 1}}
}
\value{
Characteristic function \eqn{cf(t)} of the normal distribution.
}
\description{
\code{cfX_Normal(t, mean, variance)} evaluates the characteristic function \eqn{cf(t)} of
the Normal distribution with \eqn{mean = mean} and \eqn{variance = variance}: \eqn{N(mean, variance)};\cr
\eqn{cfX_Normal(t, mean, variance) = exp(imeant -1/2variance^2t^2)}.
}
\examples{
## EXAMPLE1 (CF of the Normal distribution N(1,1))
t <- seq(-5, 5, length.out = 501)
plotGraf(function(t)
        cfX_Normal(t, mean = 1, variance = 1), t, title = "CF of the Normal distribution N(1,1)")

## EXAMPLE2 (PDF/CDF of the Normal distribution N(1,1))
cf <- function(t)
        cfX_Normal(t, mean = 1, variance = 1)
x <- seq(-4, 4, length.out = 101)
prob <- c(0.9, 0.95, 0.99)
options <- list()
options$N <- 2 ^ 5
options$SixSigmaRule <- 8
result <- cf2DistGP(cf, x, prob, options)
}
\seealso{
For more details see WIKIPEDIA:
\url{https://en.wikipedia.org/wiki/Normal_distribution}.

Other Continuous Probability distribution: \code{\link{cfS_Arcsine}},
  \code{\link{cfS_Beta}}, \code{\link{cfS_Gaussian}},
  \code{\link{cfS_Rectangular}}, \code{\link{cfS_Student}},
  \code{\link{cfS_Trapezoidal}}, \code{\link{cfX_Beta}},
  \code{\link{cfX_ChiSquare}},
  \code{\link{cfX_Exponential}}, \code{\link{cfX_Gamma}},
  \code{\link{cfX_InverseGamma}},
  \code{\link{cfX_LogNormal}},
  \code{\link{cfX_Rectangular}},
  \code{\link{cfX_Triangular}},
  \code{\link{cf_ArcsineSymmetric}},
  \code{\link{cf_BetaSymmetric}}, \code{\link{cf_Beta}},
  \code{\link{cf_ChiSquare}}, \code{\link{cf_Exponential}},
  \code{\link{cf_Gamma}}, \code{\link{cf_InverseGamma}},
  \code{\link{cf_Normal}},
  \code{\link{cf_RectangularSymmetric}},
  \code{\link{cf_Student}},
  \code{\link{cf_TrapezoidalSymmetric}},
  \code{\link{cf_TriangularSymmetric}}
}
