{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  RcppEigen,
}:

buildRPackage {
  pname = "RcppML";
  version = "0.3.7.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppML_0.3.7.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppML/RcppML_0.3.7.1.tar.gz"
    ];
    sha256 = "0jxfi8ignrh3jgjn51fl6igzw1rclzbk36y218klnl1nnib2abls";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    RcppEigen
  ];

  meta = {
    description = "R package RcppML";
    homepage = "https://cran.r-project.org/package=RcppML";
  };
}
