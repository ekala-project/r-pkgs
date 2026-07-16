{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "RcppXPtrUtils";
  version = "0.1.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppXPtrUtils_0.1.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppXPtrUtils/RcppXPtrUtils_0.1.3.tar.gz"
    ];
    sha256 = "0kgagmsiz6w98bj12mz2383nnl5w3b2nh86a5csjiy4gc21g6jrn";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package RcppXPtrUtils";
    homepage = "https://cran.r-project.org/package=RcppXPtrUtils";
  };
}
