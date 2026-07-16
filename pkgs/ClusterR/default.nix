{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
  ggplot2,
  gmp,
  lifecycle,
}:

buildRPackage {
  pname = "ClusterR";
  version = "1.3.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ClusterR_1.3.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ClusterR/ClusterR_1.3.6.tar.gz"
    ];
    sha256 = "1pzph6m2k3ixmi6qfhdish2asvnmj6ck4w2r3g12ccx3szwa0j29";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
    ggplot2
    gmp
    lifecycle
  ];

  meta = {
    description = "R package ClusterR";
    homepage = "https://cran.r-project.org/package=ClusterR";
  };
}
