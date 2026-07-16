{
  buildRPackage,
  fetchurl,
  DBI,
  Rcpp,
  bit64,
  blob,
  cli,
  hms,
  lifecycle,
  rlang,
  vctrs,
}:

buildRPackage {
  pname = "odbc";
  version = "1.7.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/odbc_1.7.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/odbc/odbc_1.7.0.tar.gz"
    ];
    sha256 = "17kxdxgds8n667b6164v5xq2kjw4bks4pfy4cjpial6qaqhdrd3y";
  };

  propagatedBuildInputs = [
    DBI
    Rcpp
    bit64
    blob
    cli
    hms
    lifecycle
    rlang
    vctrs
  ];

  meta = {
    description = "R package odbc";
    homepage = "https://cran.r-project.org/package=odbc";
  };
}
