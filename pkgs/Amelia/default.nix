{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
  foreign,
  rlang,
}:

buildRPackage {
  pname = "Amelia";
  version = "1.8.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Amelia_1.8.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Amelia/Amelia_1.8.3.tar.gz"
    ];
    sha256 = "0zwnaqis7dx07q1iinpqgrclmwp3xj2r3ihfmmhbvnp9ldf4b6bn";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
    foreign
    rlang
  ];

  meta = {
    description = "R package Amelia";
    homepage = "https://cran.r-project.org/package=Amelia";
  };
}
