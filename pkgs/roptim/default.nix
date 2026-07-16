{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
}:

buildRPackage {
  pname = "roptim";
  version = "0.1.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/roptim_0.1.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/roptim/roptim_0.1.7.tar.gz"
    ];
    sha256 = "0ddskgbmg685ainsd50wcxi0wavbwj429ngmv9iw5ikf0skx7j9x";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
  ];

  meta = {
    description = "R package roptim";
    homepage = "https://cran.r-project.org/package=roptim";
  };
}
