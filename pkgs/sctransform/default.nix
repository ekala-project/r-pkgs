{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  Rcpp,
  RcppArmadillo,
  dplyr,
  future,
  future_apply,
  ggplot2,
  gridExtra,
  magrittr,
  matrixStats,
  parallelly,
  reshape2,
  rlang,
}:

buildRPackage {
  pname = "sctransform";
  version = "0.4.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sctransform_0.4.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sctransform/sctransform_0.4.3.tar.gz"
    ];
    sha256 = "0l3s6x9q00c7ysmc3vqxdf1xmxrbajyw9vbv5ndbiagfflcdyzzh";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    Rcpp
    RcppArmadillo
    dplyr
    future
    future_apply
    ggplot2
    gridExtra
    magrittr
    matrixStats
    parallelly
    reshape2
    rlang
  ];

  meta = {
    description = "R package sctransform";
    homepage = "https://cran.r-project.org/package=sctransform";
  };
}
