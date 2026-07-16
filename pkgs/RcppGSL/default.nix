{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "RcppGSL";
  version = "0.3.14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppGSL_0.3.14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppGSL/RcppGSL_0.3.14.tar.gz"
    ];
    sha256 = "1ajsj2srs89qjnkpz771yxzmshz2zyf5132a8cxhdbkmjcazrxqz";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package RcppGSL";
    homepage = "https://cran.r-project.org/package=RcppGSL";
  };
}
