{
  buildRPackage,
  fetchurl,
  cli,
  clipr,
  crayon,
  curl,
  desc,
  fs,
  gert,
  gh,
  glue,
  jsonlite,
  lifecycle,
  purrr,
  rappdirs,
  rlang,
  rprojroot,
  rstudioapi,
  whisker,
  withr,
  yaml,
}:

buildRPackage {
  pname = "usethis";
  version = "3.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/usethis_3.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/usethis/usethis_3.2.1.tar.gz"
    ];
    sha256 = "0xrbfyx4yzkmbds6zld3k2s65b0bbjh8ii03zryyzhhcbg9kkg25";
  };

  propagatedBuildInputs = [
    cli
    clipr
    crayon
    curl
    desc
    fs
    gert
    gh
    glue
    jsonlite
    lifecycle
    purrr
    rappdirs
    rlang
    rprojroot
    rstudioapi
    whisker
    withr
    yaml
  ];

  meta = {
    description = "R package usethis";
    homepage = "https://cran.r-project.org/package=usethis";
  };
}
