{
  buildRPackage,
  fetchurl,
  Matrix,
  MatrixModels,
  Rcpp,
  RcppEigen,
  coda,
  hypergeo,
  mvtnorm,
  pbapply,
  stringr,
}:

buildRPackage {
  pname = "BayesFactor";
  version = "0.9.12-4.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/BayesFactor_0.9.12-4.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/BayesFactor/BayesFactor_0.9.12-4.8.tar.gz"
    ];
    sha256 = "04v26ab89bkcgddink7fqzam78h93j41fbklzp0pvrbc3lh31kdy";
  };

  propagatedBuildInputs = [
    Matrix
    MatrixModels
    Rcpp
    RcppEigen
    coda
    hypergeo
    mvtnorm
    pbapply
    stringr
  ];

  meta = {
    description = "R package BayesFactor";
    homepage = "https://cran.r-project.org/package=BayesFactor";
  };
}
