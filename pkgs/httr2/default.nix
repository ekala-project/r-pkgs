{
  buildRPackage,
  fetchurl,
  R6,
  cli,
  curl,
  glue,
  lifecycle,
  magrittr,
  openssl,
  rappdirs,
  rlang,
  vctrs,
  withr,
}:

buildRPackage {
  pname = "httr2";
  version = "1.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/httr2_1.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/httr2/httr2_1.2.2.tar.gz"
    ];
    sha256 = "1qa5bk674d0cdhah2mhb2jkarbvz5i0njaawv0wkh23fwa7i5rx5";
  };

  propagatedBuildInputs = [
    R6
    cli
    curl
    glue
    lifecycle
    magrittr
    openssl
    rappdirs
    rlang
    vctrs
    withr
  ];

  meta = {
    description = "R package httr2";
    homepage = "https://cran.r-project.org/package=httr2";
  };
}
