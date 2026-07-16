{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "RcppHungarian";
  version = "0.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppHungarian_0.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppHungarian/RcppHungarian_0.3.tar.gz"
    ];
    sha256 = "00wxi77ajnhwds1pnmhbxaykdaiyh6ayblif58sx9r5rvv055c1a";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package RcppHungarian";
    homepage = "https://cran.r-project.org/package=RcppHungarian";
  };
}
