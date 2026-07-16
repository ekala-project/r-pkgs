{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
}:

buildRPackage {
  pname = "Lmoments";
  version = "1.3-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Lmoments_1.3-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Lmoments/Lmoments_1.3-2.tar.gz"
    ];
    sha256 = "19053ms1208p69fk77k6a6xijrl4p0m1ir64g459v5mwz5y7rc6c";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
  ];

  meta = {
    description = "R package Lmoments";
    homepage = "https://cran.r-project.org/package=Lmoments";
  };
}
