{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppProgress,
  linprog,
  lpSolve,
  magic,
}:

buildRPackage {
  pname = "geometry";
  version = "0.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/geometry_0.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/geometry/geometry_0.5.2.tar.gz"
    ];
    sha256 = "19a6kgnq01s80pca9289lwdgvwg0h3dlv7fr1shi4cd8mlbiwfn8";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppProgress
    linprog
    lpSolve
    magic
  ];

  meta = {
    description = "R package geometry";
    homepage = "https://cran.r-project.org/package=geometry";
  };
}
