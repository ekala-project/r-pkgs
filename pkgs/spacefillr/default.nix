{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "spacefillr";
  version = "0.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spacefillr_0.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spacefillr/spacefillr_0.4.0.tar.gz"
    ];
    sha256 = "1dk8w9gml8h7cgikikq0c2g7kd8adyalxsmm88fd2cpgslysb2sx";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package spacefillr";
    homepage = "https://cran.r-project.org/package=spacefillr";
  };
}
