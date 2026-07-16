{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  RcppArmadillo,
  RcppEigen,
  igraph,
  sccore,
}:

buildRPackage {
  pname = "leidenAlg";
  version = "1.1.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/leidenAlg_1.1.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/leidenAlg/leidenAlg_1.1.7.tar.gz"
    ];
    sha256 = "0m54dwf9nbrkliwgib54vrhxpyhi6ygafi38kswld8p5m0m2n911";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    RcppArmadillo
    RcppEigen
    igraph
    sccore
  ];

  meta = {
    description = "R package leidenAlg";
    homepage = "https://cran.r-project.org/package=leidenAlg";
  };
}
