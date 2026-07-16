{
  buildRPackage,
  fetchurl,
  BH,
  Rcpp,
  RcppEigen,
  RcppParallel,
  StanHeaders,
  dplyr,
  dygraphs,
  extraDistr,
  ggplot2,
  lubridate,
  rlang,
  rstan,
  rstantools,
  scales,
  tidyr,
  xts,
}:

buildRPackage {
  pname = "prophet";
  version = "1.1.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/prophet_1.1.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/prophet/prophet_1.1.7.tar.gz"
    ];
    sha256 = "0axiyk59w4hx7w3vh4bj6kb3r56y5gcw0havkyqkfxfipwrcnkwg";
  };

  propagatedBuildInputs = [
    BH
    Rcpp
    RcppEigen
    RcppParallel
    StanHeaders
    dplyr
    dygraphs
    extraDistr
    ggplot2
    lubridate
    rlang
    rstan
    rstantools
    scales
    tidyr
    xts
  ];

  meta = {
    description = "R package prophet";
    homepage = "https://cran.r-project.org/package=prophet";
  };
}
