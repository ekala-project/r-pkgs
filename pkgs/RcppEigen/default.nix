{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "RcppEigen";
  version = "0.3.4.0.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppEigen_0.3.4.0.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppEigen/RcppEigen_0.3.4.0.2.tar.gz"
    ];
    sha256 = "1fs2wmsq2s6nzhkrx59li4x1zvcjhk9mhmc2pdz8pm4z2ai7pbgc";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package RcppEigen";
    homepage = "https://cran.r-project.org/package=RcppEigen";
  };
}
