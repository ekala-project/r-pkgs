{
  buildRPackage,
  fetchurl,
  NISTunits,
  RANN,
  Rcpp,
  pracma,
}:

buildRPackage {
  pname = "celestial";
  version = "1.5.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/celestial_1.5.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/celestial/celestial_1.5.8.tar.gz"
    ];
    sha256 = "1x6jjqlwl1gk4x5hn4lf0c2w5g8ids262d47f2lmhdiiw01c0vrc";
  };

  propagatedBuildInputs = [
    NISTunits
    RANN
    Rcpp
    pracma
  ];

  meta = {
    description = "R package celestial";
    homepage = "https://cran.r-project.org/package=celestial";
  };
}
