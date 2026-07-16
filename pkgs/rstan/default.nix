{
  buildRPackage,
  fetchurl,
  BH,
  QuickJSR,
  Rcpp,
  RcppEigen,
  RcppParallel,
  StanHeaders,
  ggplot2,
  gridExtra,
  inline,
  loo,
  pkgbuild,
}:

buildRPackage {
  pname = "rstan";
  version = "2.32.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rstan_2.32.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rstan/rstan_2.32.7.tar.gz"
    ];
    sha256 = "0jhpf9dsbizhizsrgb1wamanzy088nxljg105jb2yrq1zdvwycar";
  };

  propagatedBuildInputs = [
    BH
    QuickJSR
    Rcpp
    RcppEigen
    RcppParallel
    StanHeaders
    ggplot2
    gridExtra
    inline
    loo
    pkgbuild
  ];

  meta = {
    description = "R package rstan";
    homepage = "https://cran.r-project.org/package=rstan";
  };
}
