{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "geosphere";
  version = "1.6-8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/geosphere_1.6-8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/geosphere/geosphere_1.6-8.tar.gz"
    ];
    sha256 = "0h3ikklkgzx0ir1dxvxwarg1ja1zkg36przxbq7nvgjj7kmimnqy";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package geosphere";
    homepage = "https://cran.r-project.org/package=geosphere";
  };
}
