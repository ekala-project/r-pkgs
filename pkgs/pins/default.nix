{
  buildRPackage,
  fetchurl,
  cli,
  digest,
  fs,
  generics,
  glue,
  httr,
  jsonlite,
  lifecycle,
  purrr,
  rappdirs,
  rlang,
  tibble,
  whisker,
  withr,
  yaml,
}:

buildRPackage {
  pname = "pins";
  version = "1.4.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pins_1.4.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pins/pins_1.4.2.tar.gz"
    ];
    sha256 = "18x665cvag5glpfmq2c8kc0ga4fwpkln75b8y90hzd2rifkjxi1g";
  };

  propagatedBuildInputs = [
    cli
    digest
    fs
    generics
    glue
    httr
    jsonlite
    lifecycle
    purrr
    rappdirs
    rlang
    tibble
    whisker
    withr
    yaml
  ];

  meta = {
    description = "R package pins";
    homepage = "https://cran.r-project.org/package=pins";
  };
}
