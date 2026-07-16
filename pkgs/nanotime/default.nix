{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppCCTZ,
  RcppDate,
  bit64,
  zoo,
}:

buildRPackage {
  pname = "nanotime";
  version = "0.3.15";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/nanotime_0.3.15.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/nanotime/nanotime_0.3.15.tar.gz"
    ];
    sha256 = "11j9fvr86406jqnmvfmfkqqbwmxrj2s6djc5c1lapd7w7dlj1cw3";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppCCTZ
    RcppDate
    bit64
    zoo
  ];

  meta = {
    description = "R package nanotime";
    homepage = "https://cran.r-project.org/package=nanotime";
  };
}
