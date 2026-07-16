{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
  bbmle,
  fastGHQuad,
  lsoda,
  mgcv,
  mvtnorm,
  numDeriv,
  survival,
}:

buildRPackage {
  pname = "rstpm2";
  version = "1.7.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rstpm2_1.7.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rstpm2/rstpm2_1.7.1.tar.gz"
    ];
    sha256 = "1jcb8429bi5ra5chnv2iz8gbf5340xmhmbx97dj4xv7hd6d6f4ay";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
    bbmle
    fastGHQuad
    lsoda
    mgcv
    mvtnorm
    numDeriv
    survival
  ];

  meta = {
    description = "R package rstpm2";
    homepage = "https://cran.r-project.org/package=rstpm2";
  };
}
