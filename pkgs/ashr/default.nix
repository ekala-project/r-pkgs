{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  SQUAREM,
  etrunct,
  invgamma,
  mixsqp,
  truncnorm,
}:

buildRPackage {
  pname = "ashr";
  version = "2.2-63";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ashr_2.2-63.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ashr/ashr_2.2-63.tar.gz"
    ];
    sha256 = "1japskxfdsg91jwgf5knlwy9iaq4ziqvyvlvjch1y3ygsdz9b8bz";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    SQUAREM
    etrunct
    invgamma
    mixsqp
    truncnorm
  ];

  meta = {
    description = "R package ashr";
    homepage = "https://cran.r-project.org/package=ashr";
  };
}
