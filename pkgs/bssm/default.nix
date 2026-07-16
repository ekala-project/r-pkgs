{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
  bayesplot,
  checkmate,
  coda,
  diagis,
  dplyr,
  posterior,
  ramcmc,
  rlang,
  sitmo,
  tidyr,
}:

buildRPackage {
  pname = "bssm";
  version = "2.0.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bssm_2.0.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bssm/bssm_2.0.3.tar.gz"
    ];
    sha256 = "0wqh7f1d8vsh5141qh6dk5gy2iapvm3f5aqba63d50zavf2b8540";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
    bayesplot
    checkmate
    coda
    diagis
    dplyr
    posterior
    ramcmc
    rlang
    sitmo
    tidyr
  ];

  meta = {
    description = "R package bssm";
    homepage = "https://cran.r-project.org/package=bssm";
  };
}
