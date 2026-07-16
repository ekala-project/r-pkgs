{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  RcppEigen,
}:

buildRPackage {
  pname = "ranger";
  version = "0.18.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ranger_0.18.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ranger/ranger_0.18.0.tar.gz"
    ];
    sha256 = "0kdlfnv0j1if8nnygf6pl2hxwvdyi4d1vrvjpaxr48nrgk3f9icl";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    RcppEigen
  ];

  meta = {
    description = "R package ranger";
    homepage = "https://cran.r-project.org/package=ranger";
  };
}
