{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
  Rdpack,
}:

buildRPackage {
  pname = "mclustcomp";
  version = "0.3.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mclustcomp_0.3.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mclustcomp/mclustcomp_0.3.5.tar.gz"
    ];
    sha256 = "17jargr4n0hvwgrp0wyrfws3h6n4fshs79laiqyfl7d1fjl7dfy2";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
    Rdpack
  ];

  meta = {
    description = "R package mclustcomp";
    homepage = "https://cran.r-project.org/package=mclustcomp";
  };
}
