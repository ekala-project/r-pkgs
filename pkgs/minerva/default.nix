{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
}:

buildRPackage {
  pname = "minerva";
  version = "1.5.10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/minerva_1.5.10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/minerva/minerva_1.5.10.tar.gz"
    ];
    sha256 = "03srkii3rmx40lyr050bnrxil6w0hfv5pr64k339m66ciwyka9ig";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
  ];

  meta = {
    description = "R package minerva";
    homepage = "https://cran.r-project.org/package=minerva";
  };
}
