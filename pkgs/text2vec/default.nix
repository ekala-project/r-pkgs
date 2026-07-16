{
  buildRPackage,
  fetchurl,
  Matrix,
  R6,
  Rcpp,
  data_table,
  digest,
  lgr,
  mlapi,
  rsparse,
  stringi,
}:

buildRPackage {
  pname = "text2vec";
  version = "0.6.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/text2vec_0.6.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/text2vec/text2vec_0.6.6.tar.gz"
    ];
    sha256 = "154nlvrwjc0b5v2wd2v8pmn00a30di327h09sichxlpiwwm50m3k";
  };

  propagatedBuildInputs = [
    Matrix
    R6
    Rcpp
    data_table
    digest
    lgr
    mlapi
    rsparse
    stringi
  ];

  meta = {
    description = "R package text2vec";
    homepage = "https://cran.r-project.org/package=text2vec";
  };
}
