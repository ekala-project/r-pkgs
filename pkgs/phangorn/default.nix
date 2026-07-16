{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  ape,
  digest,
  fastmatch,
  generics,
  igraph,
  quadprog,
}:

buildRPackage {
  pname = "phangorn";
  version = "2.12.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/phangorn_2.12.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/phangorn/phangorn_2.12.1.tar.gz"
    ];
    sha256 = "1rwyzvqs5hwjmwa70b7g4jm7h1x1spyh81cd2qnmvfml0rw9ricx";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    ape
    digest
    fastmatch
    generics
    igraph
    quadprog
  ];

  meta = {
    description = "R package phangorn";
    homepage = "https://cran.r-project.org/package=phangorn";
  };
}
