{
  buildRPackage,
  fetchurl,
  BH,
  Rcpp,
  sitmo,
}:

buildRPackage {
  pname = "dqrng";
  version = "0.4.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dqrng_0.4.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dqrng/dqrng_0.4.1.tar.gz"
    ];
    sha256 = "13r8agil10q0phzwh1vlsrwv7i15k43mc93iphw2ag0c08szk79x";
  };

  propagatedBuildInputs = [
    BH
    Rcpp
    sitmo
  ];

  meta = {
    description = "R package dqrng";
    homepage = "https://cran.r-project.org/package=dqrng";
  };
}
