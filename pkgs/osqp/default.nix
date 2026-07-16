{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  S7,
  cli,
}:

buildRPackage {
  pname = "osqp";
  version = "1.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/osqp_1.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/osqp/osqp_1.0.0.tar.gz"
    ];
    sha256 = "1j28ll1mzzkwwm2lmb7l0ngnwn31s4fydhz9k19wsjllnjj381cc";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    S7
    cli
  ];

  meta = {
    description = "R package osqp";
    homepage = "https://cran.r-project.org/package=osqp";
  };
}
