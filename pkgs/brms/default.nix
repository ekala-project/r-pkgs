{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  abind,
  backports,
  bayesplot,
  bridgesampling,
  coda,
  future,
  future_apply,
  ggplot2,
  glue,
  loo,
  matrixStats,
  mgcv,
  nleqslv,
  nlme,
  posterior,
  rlang,
  rstan,
  rstantools,
}:

buildRPackage {
  pname = "brms";
  version = "2.23.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/brms_2.23.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/brms/brms_2.23.0.tar.gz"
    ];
    sha256 = "199p5jcl04qpb7japs11h94cbn1pd97dmw4rmnrqfgzc0ibbpxdm";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    abind
    backports
    bayesplot
    bridgesampling
    coda
    future
    future_apply
    ggplot2
    glue
    loo
    matrixStats
    mgcv
    nleqslv
    nlme
    posterior
    rlang
    rstan
    rstantools
  ];

  meta = {
    description = "R package brms";
    homepage = "https://cran.r-project.org/package=brms";
  };
}
