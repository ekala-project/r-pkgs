{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "TFMPvalue";
  version = "1.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/TFMPvalue_1.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/TFMPvalue/TFMPvalue_1.0.0.tar.gz"
    ];
    sha256 = "11yf94jq32piwxj5cvj6map6vhz01vyn0lr74ns64343i1q0m1wg";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package TFMPvalue";
    homepage = "https://cran.r-project.org/package=TFMPvalue";
  };
}
