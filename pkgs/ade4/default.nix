{
  buildRPackage,
  fetchurl,
  MASS,
  Rcpp,
  RcppArmadillo,
  pixmap,
  sp,
}:

buildRPackage {
  pname = "ade4";
  version = "1.7-24";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ade4_1.7-24.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ade4/ade4_1.7-24.tar.gz"
    ];
    sha256 = "0akdpp23bh07h0cvdi84zddhs3kdyzr56pr2gslnjaqvg37rsl2r";
  };

  propagatedBuildInputs = [
    MASS
    Rcpp
    RcppArmadillo
    pixmap
    sp
  ];

  meta = {
    description = "R package ade4";
    homepage = "https://cran.r-project.org/package=ade4";
  };
}
