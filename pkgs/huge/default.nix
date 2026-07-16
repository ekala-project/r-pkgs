{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  Rcpp,
  igraph,
}:

buildRPackage {
  pname = "huge";
  version = "1.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/huge_1.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/huge/huge_1.6.tar.gz"
    ];
    sha256 = "1kl5nj2cz9pww7sbvqhycmwrwlbzpjw6rphw1zbian2c5d8p46np";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    Rcpp
    igraph
  ];

  meta = {
    description = "R package huge";
    homepage = "https://cran.r-project.org/package=huge";
  };
}
