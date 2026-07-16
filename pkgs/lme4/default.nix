{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  Rcpp,
  RcppEigen,
  Rdpack,
  boot,
  lattice,
  minqa,
  nlme,
  nloptr,
  reformulas,
  rlang,
}:

buildRPackage {
  pname = "lme4";
  version = "2.0-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lme4_2.0-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lme4/lme4_2.0-1.tar.gz"
    ];
    sha256 = "190p14w3m6xqas98y05kwn6hk9418dj9sv6qv4iw1mq5xz0pajx3";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    Rcpp
    RcppEigen
    Rdpack
    boot
    lattice
    minqa
    nlme
    nloptr
    reformulas
    rlang
  ];

  meta = {
    description = "R package lme4";
    homepage = "https://cran.r-project.org/package=lme4";
  };
}
