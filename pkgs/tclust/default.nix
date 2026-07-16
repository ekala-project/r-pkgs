{
  buildRPackage,
  fetchurl,
  MASS,
  Rcpp,
  RcppArmadillo,
  doParallel,
  foreach,
  rlang,
}:

buildRPackage {
  pname = "tclust";
  version = "2.2-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tclust_2.2-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tclust/tclust_2.2-0.tar.gz"
    ];
    sha256 = "1q6q8bzwv81xy8r2n6fanjdlzvqqchpjl63vl54764x333c0g2b4";
  };

  propagatedBuildInputs = [
    MASS
    Rcpp
    RcppArmadillo
    doParallel
    foreach
    rlang
  ];

  meta = {
    description = "R package tclust";
    homepage = "https://cran.r-project.org/package=tclust";
  };
}
