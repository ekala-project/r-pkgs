{
  buildRPackage,
  fetchurl,
  BH,
  Matrix,
  Rcpp,
  RcppEigen,
  RcppParallel,
  StanHeaders,
  bayesplot,
  ggplot2,
  lme4,
  loo,
  nlme,
  posterior,
  reformulas,
  rstan,
  rstantools,
  shinystan,
  survival,
}:

buildRPackage {
  pname = "rstanarm";
  version = "2.32.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rstanarm_2.32.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rstanarm/rstanarm_2.32.2.tar.gz"
    ];
    sha256 = "1z6ikhhl2b9jnr8nl2kf2hdf1s52ixyisfpv56i07hxxnsp4f5li";
  };

  propagatedBuildInputs = [
    BH
    Matrix
    Rcpp
    RcppEigen
    RcppParallel
    StanHeaders
    bayesplot
    ggplot2
    lme4
    loo
    nlme
    posterior
    reformulas
    rstan
    rstantools
    shinystan
    survival
  ];

  meta = {
    description = "R package rstanarm";
    homepage = "https://cran.r-project.org/package=rstanarm";
  };
}
