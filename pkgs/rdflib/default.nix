{
  buildRPackage,
  fetchurl,
  dplyr,
  readr,
  redland,
  stringi,
  tidyr,
}:

buildRPackage {
  pname = "rdflib";
  version = "0.2.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rdflib_0.2.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rdflib/rdflib_0.2.9.tar.gz"
    ];
    sha256 = "0cfkbqr4m9dqbiqnr01wkxl6qd09384aq5x0d8vycylmngvmh4ay";
  };

  propagatedBuildInputs = [
    dplyr
    readr
    redland
    stringi
    tidyr
  ];

  meta = {
    description = "R package rdflib";
    homepage = "https://cran.r-project.org/package=rdflib";
  };
}
