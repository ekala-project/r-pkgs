{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  SnowballC,
  fastmatch,
  jsonlite,
  lifecycle,
  magrittr,
  stopwords,
  stringi,
  xml2,
  yaml,
}:

buildRPackage {
  pname = "quanteda";
  version = "4.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/quanteda_4.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/quanteda/quanteda_4.4.tar.gz"
    ];
    sha256 = "12l25xqqb4g3x803jzhasjh9651hcliijcjc3fac58mmx4x6q9wd";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    SnowballC
    fastmatch
    jsonlite
    lifecycle
    magrittr
    stopwords
    stringi
    xml2
    yaml
  ];

  meta = {
    description = "R package quanteda";
    homepage = "https://cran.r-project.org/package=quanteda";
  };
}
