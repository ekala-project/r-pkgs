{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "lbfgs";
  version = "1.2.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lbfgs_1.2.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lbfgs/lbfgs_1.2.1.2.tar.gz"
    ];
    sha256 = "04fx9v1dn8rn09h98zxp71zcxidjmhmcv190h7mvbj3pqf3dh2bv";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package lbfgs";
    homepage = "https://cran.r-project.org/package=lbfgs";
  };
}
