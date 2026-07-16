{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "lhs";
  version = "1.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lhs_1.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lhs/lhs_1.3.0.tar.gz"
    ];
    sha256 = "0xldgascaf3gi5ndbg0k7m2sg7yc4a1srzkg1x2212m97l6i8858";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package lhs";
    homepage = "https://cran.r-project.org/package=lhs";
  };
}
