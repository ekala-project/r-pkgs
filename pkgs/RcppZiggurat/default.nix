{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppGSL,
}:

buildRPackage {
  pname = "RcppZiggurat";
  version = "0.1.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppZiggurat_0.1.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppZiggurat/RcppZiggurat_0.1.8.tar.gz"
    ];
    sha256 = "041ynqr8hkr59is5az6i53pzcvp6y7vpcix4kw4jylq1x9s9rc1f";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppGSL
  ];

  meta = {
    description = "R package RcppZiggurat";
    homepage = "https://cran.r-project.org/package=RcppZiggurat";
  };
}
