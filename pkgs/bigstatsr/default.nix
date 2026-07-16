{
  buildRPackage,
  fetchurl,
  RSpectra,
  Rcpp,
  RcppArmadillo,
  bigassertr,
  bigparallelr,
  cowplot,
  foreach,
  ggplot2,
  ps,
  rmio,
  tibble,
}:

buildRPackage {
  pname = "bigstatsr";
  version = "1.6.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bigstatsr_1.6.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bigstatsr/bigstatsr_1.6.2.tar.gz"
    ];
    sha256 = "0nr99132jf3w773z8j47n4m2j4v4aijj143cf051qrmfrx7a8fgy";
  };

  propagatedBuildInputs = [
    RSpectra
    Rcpp
    RcppArmadillo
    bigassertr
    bigparallelr
    cowplot
    foreach
    ggplot2
    ps
    rmio
    tibble
  ];

  meta = {
    description = "R package bigstatsr";
    homepage = "https://cran.r-project.org/package=bigstatsr";
  };
}
