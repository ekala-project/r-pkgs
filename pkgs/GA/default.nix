{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
  cli,
  crayon,
  foreach,
  iterators,
}:

buildRPackage {
  pname = "GA";
  version = "3.2.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/GA_3.2.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/GA/GA_3.2.5.tar.gz"
    ];
    sha256 = "0dnnm6cpq0az8c71m14k3k1xyh3i8krsjbyrvmjdxy5rf5jd617y";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
    cli
    crayon
    foreach
    iterators
  ];

  meta = {
    description = "R package GA";
    homepage = "https://cran.r-project.org/package=GA";
  };
}
