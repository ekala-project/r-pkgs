{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  RcppArmadillo,
  lattice,
  minqa,
  mitools,
  numDeriv,
  survival,
}:

buildRPackage {
  pname = "survey";
  version = "4.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/survey_4.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/survey/survey_4.5.tar.gz"
    ];
    sha256 = "06dmcb9f9515sivgnf8a6azxyhp303gmw9bl080gdb7rb4bv0ala";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    RcppArmadillo
    lattice
    minqa
    mitools
    numDeriv
    survival
  ];

  meta = {
    description = "R package survey";
    homepage = "https://cran.r-project.org/package=survey";
  };
}
