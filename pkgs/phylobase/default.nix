{
  buildRPackage,
  fetchurl,
  RNeXML,
  Rcpp,
  ade4,
  ape,
  rncl,
}:

buildRPackage {
  pname = "phylobase";
  version = "0.8.12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/phylobase_0.8.12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/phylobase/phylobase_0.8.12.tar.gz"
    ];
    sha256 = "084gfzq51acmvzbsfpkqv3kgghdbncnwr008f95yf5b2vihcm0cv";
  };

  propagatedBuildInputs = [
    RNeXML
    Rcpp
    ade4
    ape
    rncl
  ];

  meta = {
    description = "R package phylobase";
    homepage = "https://cran.r-project.org/package=phylobase";
  };
}
