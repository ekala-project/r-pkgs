{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  RcppArmadillo,
}:

buildRPackage {
  pname = "proxyC";
  version = "0.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/proxyC_0.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/proxyC/proxyC_0.5.2.tar.gz"
    ];
    sha256 = "1847iz54pg4mp3s4sd8rmzarc8rciz477k4sm324ykmh9l758lbj";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    RcppArmadillo
  ];

  meta = {
    description = "R package proxyC";
    homepage = "https://cran.r-project.org/package=proxyC";
  };
}
