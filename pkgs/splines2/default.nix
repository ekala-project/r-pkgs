{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
}:

buildRPackage {
  pname = "splines2";
  version = "0.5.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/splines2_0.5.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/splines2/splines2_0.5.4.tar.gz"
    ];
    sha256 = "0izjcpcwi35b7m4i9yp2frk1nfij9nw338w7z1fwpkw75c7ac4av";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
  ];

  meta = {
    description = "R package splines2";
    homepage = "https://cran.r-project.org/package=splines2";
  };
}
