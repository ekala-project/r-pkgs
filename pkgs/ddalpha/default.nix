{
  buildRPackage,
  fetchurl,
  BH,
  MASS,
  Rcpp,
  class,
  geometry,
  robustbase,
  sfsmisc,
}:

buildRPackage {
  pname = "ddalpha";
  version = "1.3.16";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ddalpha_1.3.16.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ddalpha/ddalpha_1.3.16.tar.gz"
    ];
    sha256 = "1139a50ili4w04034fmpxsbn2j17nx1ns5f07cijgqpskxjgi41r";
  };

  propagatedBuildInputs = [
    BH
    MASS
    Rcpp
    class
    geometry
    robustbase
    sfsmisc
  ];

  meta = {
    description = "R package ddalpha";
    homepage = "https://cran.r-project.org/package=ddalpha";
  };
}
