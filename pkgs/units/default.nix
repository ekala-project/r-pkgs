{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "units";
  version = "1.0-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/units_1.0-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/units/units_1.0-1.tar.gz"
    ];
    sha256 = "1wzva9cryycxjm6zbm900srzjlj40y41gbcwh1qz3dsakm557v09";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package units";
    homepage = "https://cran.r-project.org/package=units";
  };
}
