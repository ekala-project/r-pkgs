{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  RcppArmadillo,
  RcppEigen,
  RcppProgress,
  dplyr,
  ggplot2,
  ggrepel,
  igraph,
  irlba,
  magrittr,
  pROC,
  pbmcapply,
  rlang,
  scales,
  tibble,
  uwot,
  withr,
}:

buildRPackage {
  pname = "sccore";
  version = "1.0.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sccore_1.0.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sccore/sccore_1.0.7.tar.gz"
    ];
    sha256 = "0nkbg2hrhfiswc8kqcqj1ma9x45phni6h435k0wqmqk9xpry0v96";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    RcppArmadillo
    RcppEigen
    RcppProgress
    dplyr
    ggplot2
    ggrepel
    igraph
    irlba
    magrittr
    pROC
    pbmcapply
    rlang
    scales
    tibble
    uwot
    withr
  ];

  meta = {
    description = "R package sccore";
    homepage = "https://cran.r-project.org/package=sccore";
  };
}
