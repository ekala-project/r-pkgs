{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "RSNNS";
  version = "0.4-18";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RSNNS_0.4-18.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RSNNS/RSNNS_0.4-18.tar.gz"
    ];
    sha256 = "14cxhp29x2zwjig416rgzcfl35r0w4havkxjf6m4h84yv0qzma88";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package RSNNS";
    homepage = "https://cran.r-project.org/package=RSNNS";
  };
}
