{
  buildRPackage,
  fetchurl,
  R6,
  bslib,
  cachem,
  cli,
  commonmark,
  fastmap,
  fontawesome,
  glue,
  htmltools,
  httpuv,
  jsonlite,
  later,
  lifecycle,
  mime,
  otel,
  promises,
  rlang,
  sourcetools,
  withr,
  xtable,
}:

buildRPackage {
  pname = "shiny";
  version = "1.13.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shiny_1.13.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shiny/shiny_1.13.0.tar.gz"
    ];
    sha256 = "0l8rlmxvmnk22nqxvxjnfbh6sbw3yd0zbppbgsnbk99r7g12w7pz";
  };

  propagatedBuildInputs = [
    R6
    bslib
    cachem
    cli
    commonmark
    fastmap
    fontawesome
    glue
    htmltools
    httpuv
    jsonlite
    later
    lifecycle
    mime
    otel
    promises
    rlang
    sourcetools
    withr
    xtable
  ];

  meta = {
    description = "R package shiny";
    homepage = "https://cran.r-project.org/package=shiny";
  };
}
