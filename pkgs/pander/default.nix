{
  buildRPackage,
  fetchurl,
  Rcpp,
  digest,
}:

buildRPackage {
  pname = "pander";
  version = "0.6.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pander_0.6.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pander/pander_0.6.6.tar.gz"
    ];
    sha256 = "1piad5aq9wjpss5diw89nwfgw8q833di22h26mpjh4h21jsfchc0";
  };

  propagatedBuildInputs = [
    Rcpp
    digest
  ];

  meta = {
    description = "R package pander";
    homepage = "https://cran.r-project.org/package=pander";
  };
}
