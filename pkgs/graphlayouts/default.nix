{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
  igraph,
}:

buildRPackage {
  pname = "graphlayouts";
  version = "1.2.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/graphlayouts_1.2.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/graphlayouts/graphlayouts_1.2.3.tar.gz"
    ];
    sha256 = "01bkfvdp6apy7jgdj23c4bxm90b5603hvy8cpjjlir7906135dcn";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
    igraph
  ];

  meta = {
    description = "R package graphlayouts";
    homepage = "https://cran.r-project.org/package=graphlayouts";
  };
}
