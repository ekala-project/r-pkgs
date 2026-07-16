{
  buildRPackage,
  fetchurl,
  MASS,
  Rcpp,
  RcppArmadillo,
  abind,
  gamm4,
  ggplot2,
  gtools,
  lme4,
  loo,
  mclogit,
  mgcv,
  mvtnorm,
  nnet,
  ordinal,
  reformulas,
  rstantools,
  scales,
}:

buildRPackage {
  pname = "projpred";
  version = "2.10.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/projpred_2.10.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/projpred/projpred_2.10.0.tar.gz"
    ];
    sha256 = "0iwvqmajcc92g8idjrsd713i1h46jlvnsf2l2j1bajk3vz0b217l";
  };

  propagatedBuildInputs = [
    MASS
    Rcpp
    RcppArmadillo
    abind
    gamm4
    ggplot2
    gtools
    lme4
    loo
    mclogit
    mgcv
    mvtnorm
    nnet
    ordinal
    reformulas
    rstantools
    scales
  ];

  meta = {
    description = "R package projpred";
    homepage = "https://cran.r-project.org/package=projpred";
  };
}
