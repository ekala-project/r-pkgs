{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
  RcppParallel,
  zigg,
}:

buildRPackage {
  pname = "Rfast";
  version = "2.1.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Rfast_2.1.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Rfast/Rfast_2.1.5.2.tar.gz"
    ];
    sha256 = "15qnvj3hpmlkzwl0wsmlgpywlbz9nk9ndsnkp1iiwvjvavijq0yj";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
    RcppParallel
    zigg
  ];

  meta = {
    description = "R package Rfast";
    homepage = "https://cran.r-project.org/package=Rfast";
  };
}
