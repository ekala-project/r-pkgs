{
  buildRPackage,
  fetchurl,
  BH,
  Rcpp,
  RcppEigen,
  irlba,
}:

buildRPackage {
  pname = "DDRTree";
  version = "0.1.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/DDRTree_0.1.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/DDRTree/DDRTree_0.1.6.tar.gz"
    ];
    sha256 = "09fzqfrybp4j1ilbw1cls7cpaanmi4c0vw3595c0ppbvzf4lqa67";
  };

  propagatedBuildInputs = [
    BH
    Rcpp
    RcppEigen
    irlba
  ];

  meta = {
    description = "R package DDRTree";
    homepage = "https://cran.r-project.org/package=DDRTree";
  };
}
