{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "RcppAnnoy";
  version = "0.0.23";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppAnnoy_0.0.23.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppAnnoy/RcppAnnoy_0.0.23.tar.gz"
    ];
    sha256 = "1p6iwbkz762p2k3hzjryc19scdxp58jcfbn8gvfbk8whhpcyh0p5";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package RcppAnnoy";
    homepage = "https://cran.r-project.org/package=RcppAnnoy";
  };
}
