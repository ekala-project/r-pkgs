{
  buildRPackage,
  fetchurl,
  BH,
  MASS,
  Rcpp,
  RcppArmadillo,
  RcppEigen,
  RcppParallel,
  StanHeaders,
  nlme,
  rstan,
  rstantools,
}:

buildRPackage {
  pname = "densEstBayes";
  version = "1.0-2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/densEstBayes_1.0-2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/densEstBayes/densEstBayes_1.0-2.2.tar.gz"
    ];
    sha256 = "0ydnjyprv8fz037nkfvjd8w6hg4a19lbnq4kl7yankxksjfdyqc3";
  };

  propagatedBuildInputs = [
    BH
    MASS
    Rcpp
    RcppArmadillo
    RcppEigen
    RcppParallel
    StanHeaders
    nlme
    rstan
    rstantools
  ];

  meta = {
    description = "R package densEstBayes";
    homepage = "https://cran.r-project.org/package=densEstBayes";
  };
}
