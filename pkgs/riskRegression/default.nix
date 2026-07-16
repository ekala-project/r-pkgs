{
  buildRPackage,
  fetchurl,
  Hmisc,
  Publish,
  Rcpp,
  RcppArmadillo,
  cmprsk,
  data_table,
  doParallel,
  foreach,
  ggplot2,
  glmnet,
  lattice,
  lava,
  mets,
  mvtnorm,
  plotrix,
  prodlim,
  ranger,
  rms,
  survival,
  timereg,
}:

buildRPackage {
  pname = "riskRegression";
  version = "2026.03.11";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/riskRegression_2026.03.11.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/riskRegression/riskRegression_2026.03.11.tar.gz"
    ];
    sha256 = "1kpmccr0xhriijw9gzx9mprkknpxs1jq17yd4hpj2rd1l7wllvkw";
  };

  propagatedBuildInputs = [
    Hmisc
    Publish
    Rcpp
    RcppArmadillo
    cmprsk
    data_table
    doParallel
    foreach
    ggplot2
    glmnet
    lattice
    lava
    mets
    mvtnorm
    plotrix
    prodlim
    ranger
    rms
    survival
    timereg
  ];

  meta = {
    description = "R package riskRegression";
    homepage = "https://cran.r-project.org/package=riskRegression";
  };
}
