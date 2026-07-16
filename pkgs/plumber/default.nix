{
  buildRPackage,
  fetchurl,
  R6,
  crayon,
  httpuv,
  jsonlite,
  lifecycle,
  magrittr,
  mime,
  promises,
  rlang,
  sodium,
  stringi,
  swagger,
  webutils,
}:

buildRPackage {
  pname = "plumber";
  version = "1.3.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/plumber_1.3.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/plumber/plumber_1.3.3.tar.gz"
    ];
    sha256 = "14cw3pd5cbw8ka9907h2v56lvk2k6673n6zafl54yh1j9k446az7";
  };

  propagatedBuildInputs = [
    R6
    crayon
    httpuv
    jsonlite
    lifecycle
    magrittr
    mime
    promises
    rlang
    sodium
    stringi
    swagger
    webutils
  ];

  meta = {
    description = "R package plumber";
    homepage = "https://cran.r-project.org/package=plumber";
  };
}
