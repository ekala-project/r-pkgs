{
  buildRPackage,
  fetchurl,
  Matrix,
  RSpectra,
  Rcpp,
  RcppArmadillo,
  RcppParallel,
  RcppThread,
  clue,
  cluster,
  dplyr,
  dtw,
  flexclust,
  foreach,
  ggplot2,
  ggrepel,
  proxy,
  reshape2,
  rlang,
  shiny,
  shinyjs,
}:

buildRPackage {
  pname = "dtwclust";
  version = "6.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dtwclust_6.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dtwclust/dtwclust_6.0.0.tar.gz"
    ];
    sha256 = "0by01x4qpf1pin5l61wmm600bmsnlnns9knwb0qmjlj72pmwfkqh";
  };

  propagatedBuildInputs = [
    Matrix
    RSpectra
    Rcpp
    RcppArmadillo
    RcppParallel
    RcppThread
    clue
    cluster
    dplyr
    dtw
    flexclust
    foreach
    ggplot2
    ggrepel
    proxy
    reshape2
    rlang
    shiny
    shinyjs
  ];

  meta = {
    description = "R package dtwclust";
    homepage = "https://cran.r-project.org/package=dtwclust";
  };
}
