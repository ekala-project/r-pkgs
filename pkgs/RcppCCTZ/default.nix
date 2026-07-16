{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "RcppCCTZ";
  version = "0.2.14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppCCTZ_0.2.14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppCCTZ/RcppCCTZ_0.2.14.tar.gz"
    ];
    sha256 = "0zk39b8ziq0py7na2d0dazjighhrnpzdicm4f2201wlf46s46dic";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package RcppCCTZ";
    homepage = "https://cran.r-project.org/package=RcppCCTZ";
  };
}
