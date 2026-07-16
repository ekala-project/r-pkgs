{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
  colorspace,
  fracdiff,
  generics,
  ggplot2,
  lmtest,
  magrittr,
  nnet,
  timeDate,
  urca,
  withr,
  zoo,
}:

buildRPackage {
  pname = "forecast";
  version = "9.0.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/forecast_9.0.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/forecast/forecast_9.0.2.tar.gz"
    ];
    sha256 = "0lq62ljsknmilmiijr4jqif46dwys8rlw7a7lqzvh0v9hkxxznl6";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
    colorspace
    fracdiff
    generics
    ggplot2
    lmtest
    magrittr
    nnet
    timeDate
    urca
    withr
    zoo
  ];

  meta = {
    description = "R package forecast";
    homepage = "https://cran.r-project.org/package=forecast";
  };
}
