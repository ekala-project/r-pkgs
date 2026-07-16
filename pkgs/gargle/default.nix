{
  buildRPackage,
  fetchurl,
  cli,
  fs,
  glue,
  httr,
  jsonlite,
  lifecycle,
  openssl,
  rappdirs,
  rlang,
  withr,
}:

buildRPackage {
  pname = "gargle";
  version = "1.6.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gargle_1.6.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gargle/gargle_1.6.1.tar.gz"
    ];
    sha256 = "0p0fhllvlzhir0iwcc9zsicx98d1mxa4c8jgdpdxk2j4bq7ccwhc";
  };

  propagatedBuildInputs = [
    cli
    fs
    glue
    httr
    jsonlite
    lifecycle
    openssl
    rappdirs
    rlang
    withr
  ];

  meta = {
    description = "R package gargle";
    homepage = "https://cran.r-project.org/package=gargle";
  };
}
