{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  RcppArmadillo,
  RcppProgress,
  RhpcBLASctl,
  cli,
  cowplot,
  dplyr,
  ggplot2,
  rlang,
  tibble,
}:

buildRPackage {
  pname = "harmony";
  version = "2.0.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/harmony_2.0.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/harmony/harmony_2.0.3.tar.gz"
    ];
    sha256 = "1n48l497q387sqkm5c5z3aamm0l69bydalap2nz41kq4bqnapbnc";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    RcppArmadillo
    RcppProgress
    RhpcBLASctl
    cli
    cowplot
    dplyr
    ggplot2
    rlang
    tibble
  ];

  meta = {
    description = "R package harmony";
    homepage = "https://cran.r-project.org/package=harmony";
  };
}
