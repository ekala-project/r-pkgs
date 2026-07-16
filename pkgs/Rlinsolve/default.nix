{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  RcppArmadillo,
  Rdpack,
}:

buildRPackage {
  pname = "Rlinsolve";
  version = "0.3.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Rlinsolve_0.3.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Rlinsolve/Rlinsolve_0.3.3.tar.gz"
    ];
    sha256 = "0mrhhgraa4r31mrng5wamv5ad4hyci7nax9a9x9p65iaw7silz4z";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    RcppArmadillo
    Rdpack
  ];

  meta = {
    description = "R package Rlinsolve";
    homepage = "https://cran.r-project.org/package=Rlinsolve";
  };
}
