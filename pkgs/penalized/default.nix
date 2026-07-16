{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
  survival,
}:

buildRPackage {
  pname = "penalized";
  version = "0.9-53";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/penalized_0.9-53.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/penalized/penalized_0.9-53.tar.gz"
    ];
    sha256 = "1p6ralrjw45la0v4m0irp778lwl6f475g081qfhqrgy32gznld5z";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
    survival
  ];

  meta = {
    description = "R package penalized";
    homepage = "https://cran.r-project.org/package=penalized";
  };
}
