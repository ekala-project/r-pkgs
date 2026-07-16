{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppEigen,
}:

buildRPackage {
  pname = "RcppNumerical";
  version = "0.7-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppNumerical_0.7-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppNumerical/RcppNumerical_0.7-0.tar.gz"
    ];
    sha256 = "10af0c3b1m5rxngsvq7y6ksxd6a8rlq9d4g3zq8fvwybkrk1fdvf";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppEigen
  ];

  meta = {
    description = "R package RcppNumerical";
    homepage = "https://cran.r-project.org/package=RcppNumerical";
  };
}
