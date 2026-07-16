{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
  lava,
  mvtnorm,
  numDeriv,
  survival,
  timereg,
}:

buildRPackage {
  pname = "mets";
  version = "1.3.10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mets_1.3.10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mets/mets_1.3.10.tar.gz"
    ];
    sha256 = "1j7zkyik4dlfgvjr5a4hh58vmx77w34g0d77n68isa83j84l3lhb";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
    lava
    mvtnorm
    numDeriv
    survival
    timereg
  ];

  meta = {
    description = "R package mets";
    homepage = "https://cran.r-project.org/package=mets";
  };
}
