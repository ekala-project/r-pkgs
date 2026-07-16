{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
}:

buildRPackage {
  pname = "extraDistr";
  version = "1.10.0.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/extraDistr_1.10.0.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/extraDistr/extraDistr_1.10.0.4.tar.gz"
    ];
    sha256 = "00w2i4n1fly1nds7ikg7h8bq4ddgnmvsmxs1dv8xn0xng56g0ws1";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
  ];

  meta = {
    description = "R package extraDistr";
    homepage = "https://cran.r-project.org/package=extraDistr";
  };
}
