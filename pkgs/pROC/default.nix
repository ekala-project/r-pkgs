{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "pROC";
  version = "1.19.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pROC_1.19.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pROC/pROC_1.19.0.1.tar.gz"
    ];
    sha256 = "06g6f260g65s87hfam796j9ysazi6xrb6jmg1wpiji9w383ysqgi";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package pROC";
    homepage = "https://cran.r-project.org/package=pROC";
  };
}
