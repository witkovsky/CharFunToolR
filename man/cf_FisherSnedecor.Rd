% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cf_FisherSnedecor.R
\name{cf_FisherSnedecor}
\alias{cf_FisherSnedecor}
\title{Characteristic function of a linear combination of independent random variables
with the central FISHER-SNEDECOR F-distribution}
\usage{
cf_FisherSnedecor(t, df1, df2, coef, niid, tol)
}
\arguments{
\item{t}{vector or array of real values, where the CF is evaluated.}

\item{df1}{vector of the  degrees of freedom \code{df1 > 0}. If empty, default value is \code{df1 = 1}.}

\item{df2}{vector of the  degrees of freedom \code{df2 > 0}. If empty, default value is \code{df2 = 1}.}

\item{coef}{vector of the coefficients of the linear combination of the log-transformed random variables.
If coef is scalar, it is assumed that all coefficients are equal. If empty, default value is \code{coef = 1}.}

\item{niid}{scalar convolution coeficient \code{niid}, such that \eqn{Z = Y + ... + Y}
is sum of \eqn{niid} iid random variables \eqn{Y}, where each \eqn{Y = sum_{i=1}^N coef(i) * log(X_i)}
is independently and identically distributed random variable. If empty, default value is \code{niid = 1}.}

\item{tol}{tolerance factor for selecting the Poisson weights, i.e. such that \eqn{PoissProb > tol}.
If empty, default value is \code{tol = 1e-12}.}
}
\value{
Characteristic function \eqn{cf(t)} of a linear combination of independent random variables
with the central FISHER-SNEDECOR F-distribution.
}
\description{
\code{cf_FisherSnedecor(t, df1, df2, coef, niid, tol)} evaluates characteristic function
of the distribution of a linear combination of independent random variables
with the central FISHER-SNEDECOR F-distribution.

That is, \code{cf_FisherSnedecor} evaluates the characteristic function \eqn{cf(t)}
of  \eqn{Y = sum_{i=1}^N coef_i * X_i}, where \eqn{X_i ~ F(df1_i,df2_i)} are inedependent RVs,
with \eqn{df1_i} and \eqn{df2_i} degrees of freedom, for \eqn{i = 1,...,N}.

The characteristic function of \eqn{X ~ F(df1,df2)} is
\deqn{cf(t) = U(df1/2, 1-df2/2, -1i*(df2/df1)*t),}
where \eqn{U(a,b,z)} denotes the confluent hypergeometric function of the second kind.

Hence, the characteristic function of \eqn{Y  = coef_1*X_1 +...+ coef_N*X_N}
is \deqn{cf_Y(t) =  cf_1(coef_1*t) *...* cf_N(coef_N*t),} where \eqn{cf_i(t)}
is the characteristic function of \eqn{X_i ~ F(df1_i,df2_i)}.
}
\examples{
## EXAMPLE 1
# CF of a linear combination of independent F RVs
df1 <- 3:12
df2 <- seq(14, 5,-1)
coef <- 1 / 10
t <- seq(from = -5,
         to = 5,
         length.out = 501)
plotGraf(function(t)
        cf_FisherSnedecor(t, df1, df2, coef),
        t,
        title = 'Characteristic function of the linear combination of F RVs')

## EXAMPLE 2
# PDF/CDF  of a linear combination of independent F RVs
df1 <- 3:12
df2 <- seq(14, 5,-1)
coef <- 1 / 10
cf <- function(t)
        cf_FisherSnedecor(t, df1, df2, coef)
options <- list()
options$N <- 2 ^ 10
options$xMin = 0
prob <- c(0.9, 0.95, 0.99)
result <- cf2DistGP(cf = cf, prob = prob, options = options)
result
}
\references{
[1] PHILLIPS, P.C.B. The true characteristic function of the F distribution. Biometrika (1982), 261-264.

[2] WITKOVSKY, V.: On the exact computation of the density and of the quantiles of linear combinations
of t and F random variables. Journal of Statistical Planning and Inference 94 (2001), 1–13.
}
\seealso{
For more details see WIKIPEDIA:
\url{https://en.wikipedia.org/wiki/F-distribution}.

Other Continuous Probability Distribution: \code{\link{cf_BetaNC}},
  \code{\link{cf_FisherSnedecorNC}},
  \code{\link{cf_LogRV_BetaNC}},
  \code{\link{cf_LogRV_Beta}},
  \code{\link{cf_LogRV_ChiSquareNC}},
  \code{\link{cf_LogRV_ChiSquare}},
  \code{\link{cf_LogRV_FisherSnedecorNC}},
  \code{\link{cf_LogRV_FisherSnedecor}}
}
