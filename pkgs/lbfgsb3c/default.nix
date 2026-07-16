{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
  numDeriv,
}:

buildRPackage {
  pname = "lbfgsb3c";
  version = "2024-3.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lbfgsb3c_2024-3.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lbfgsb3c/lbfgsb3c_2024-3.5.tar.gz"
    ];
    sha256 = "0rgikv5p05rv4r55mihlbk1953jiwd95wp2rn05xqi4ix33y3vxj";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
    numDeriv
  ];

  meta = {
    description = "R package lbfgsb3c";
    homepage = "https://cran.r-project.org/package=lbfgsb3c";
  };
}
