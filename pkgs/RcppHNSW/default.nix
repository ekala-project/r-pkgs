{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "RcppHNSW";
  version = "0.6.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppHNSW_0.6.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppHNSW/RcppHNSW_0.6.0.tar.gz"
    ];
    sha256 = "03sqzz1993jsjm5vpyd1n1fpsrdfrky6dpv7m9ialhs1m00fv9m5";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package RcppHNSW";
    homepage = "https://cran.r-project.org/package=RcppHNSW";
  };
}
