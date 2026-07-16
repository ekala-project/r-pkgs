{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "lsoda";
  version = "1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lsoda_1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lsoda/lsoda_1.2.tar.gz"
    ];
    sha256 = "1rbw66xs5xa8b2pgkdhy5acv7g250hanqhwkvxmc15al3nyjmdc5";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package lsoda";
    homepage = "https://cran.r-project.org/package=lsoda";
  };
}
