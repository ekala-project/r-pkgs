{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
}:

buildRPackage {
  pname = "RcppDist";
  version = "0.1.1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppDist_0.1.1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppDist/RcppDist_0.1.1.1.tar.gz"
    ];
    sha256 = "1bh93c9wfjcq9qrg6qwh0i8vmx6pknxph007yrf596vv43frkzdf";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
  ];

  meta = {
    description = "R package RcppDist";
    homepage = "https://cran.r-project.org/package=RcppDist";
  };
}
