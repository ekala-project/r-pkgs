{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
}:

buildRPackage {
  pname = "bayesm";
  version = "3.1-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bayesm_3.1-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bayesm/bayesm_3.1-7.tar.gz"
    ];
    sha256 = "16a9f2l2p2na3d7d542d44x4yibf2pgkclxls9zf7966nyxxw1yj";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
  ];

  meta = {
    description = "R package bayesm";
    homepage = "https://cran.r-project.org/package=bayesm";
  };
}
