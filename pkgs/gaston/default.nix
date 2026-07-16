{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppEigen,
  RcppParallel,
}:

buildRPackage {
  pname = "gaston";
  version = "1.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gaston_1.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gaston/gaston_1.6.tar.gz"
    ];
    sha256 = "1knjyw2dsarljj2zsqp3hi6hk6m90sfqp2l535h3arj70l3rq9x4";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppEigen
    RcppParallel
  ];

  meta = {
    description = "R package gaston";
    homepage = "https://cran.r-project.org/package=gaston";
  };
}
