{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  RcppArmadillo,
  matrixStats,
}:

buildRPackage {
  pname = "conquer";
  version = "1.3.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/conquer_1.3.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/conquer/conquer_1.3.3.tar.gz"
    ];
    sha256 = "1fnyjym21i9hw2d1c9da0wvjzbi9abn46n0lg6if5w2asxg1bim2";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    RcppArmadillo
    matrixStats
  ];

  meta = {
    description = "R package conquer";
    homepage = "https://cran.r-project.org/package=conquer";
  };
}
