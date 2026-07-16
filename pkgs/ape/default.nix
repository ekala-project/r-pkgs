{
  buildRPackage,
  fetchurl,
  Rcpp,
  digest,
  lattice,
  nlme,
}:

buildRPackage {
  pname = "ape";
  version = "5.8-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ape_5.8-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ape/ape_5.8-1.tar.gz"
    ];
    sha256 = "13id88b2g2m7zgp3r8nigyainlpbld1z2d7n87bplnailzfy7kfn";
  };

  propagatedBuildInputs = [
    Rcpp
    digest
    lattice
    nlme
  ];

  meta = {
    description = "R package ape";
    homepage = "https://cran.r-project.org/package=ape";
  };
}
