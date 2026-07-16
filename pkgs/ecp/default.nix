{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "ecp";
  version = "3.1.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ecp_3.1.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ecp/ecp_3.1.6.tar.gz"
    ];
    sha256 = "1imahvby3nj1b5d1x7hq6gkfg0fyyd27ghls0v35456imy1fmhz5";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package ecp";
    homepage = "https://cran.r-project.org/package=ecp";
  };
}
