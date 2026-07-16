{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
  future_apply,
  numDeriv,
  truncnorm,
}:

buildRPackage {
  pname = "Rsolnp";
  version = "2.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Rsolnp_2.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Rsolnp/Rsolnp_2.0.1.tar.gz"
    ];
    sha256 = "14k7qcqz611zr2a9a1nmdcmavci89v62b4yzsawda7fxmc0128iv";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
    future_apply
    numDeriv
    truncnorm
  ];

  meta = {
    description = "R package Rsolnp";
    homepage = "https://cran.r-project.org/package=Rsolnp";
  };
}
