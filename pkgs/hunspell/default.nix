{
  buildRPackage,
  fetchurl,
  Rcpp,
  digest,
}:

buildRPackage {
  pname = "hunspell";
  version = "3.0.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/hunspell_3.0.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/hunspell/hunspell_3.0.6.tar.gz"
    ];
    sha256 = "0dbmg015m7ab17s7dqlw8d0pj7xkqk6fr8ggaan1w22fxwpdy8s0";
  };

  propagatedBuildInputs = [
    Rcpp
    digest
  ];

  meta = {
    description = "R package hunspell";
    homepage = "https://cran.r-project.org/package=hunspell";
  };
}
