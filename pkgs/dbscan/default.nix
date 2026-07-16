{
  buildRPackage,
  fetchurl,
  Rcpp,
  generics,
}:

buildRPackage {
  pname = "dbscan";
  version = "1.2.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dbscan_1.2.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dbscan/dbscan_1.2.4.tar.gz"
    ];
    sha256 = "1midc6c09xg48m9y0m17p3g6lsp5zmr2q9hy4ph98qyhlcmjk8kr";
  };

  propagatedBuildInputs = [
    Rcpp
    generics
  ];

  meta = {
    description = "R package dbscan";
    homepage = "https://cran.r-project.org/package=dbscan";
  };
}
