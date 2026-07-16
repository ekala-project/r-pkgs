{
  buildRPackage,
  fetchurl,
  BH,
  Rcpp,
  RcppArmadillo,
}:

buildRPackage {
  pname = "mvnfast";
  version = "0.2.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mvnfast_0.2.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mvnfast/mvnfast_0.2.8.tar.gz"
    ];
    sha256 = "1869xqq2wd7yw23q4ma5qawcnbdp7myafk6rdxazqymqak7f0wc8";
  };

  propagatedBuildInputs = [
    BH
    Rcpp
    RcppArmadillo
  ];

  meta = {
    description = "R package mvnfast";
    homepage = "https://cran.r-project.org/package=mvnfast";
  };
}
