{
  buildRPackage,
  fetchurl,
  cli,
  fs,
  htmltools,
  jsonlite,
  later,
  lifecycle,
  processx,
  rlang,
  rmarkdown,
  rstudioapi,
  xfun,
  yaml,
}:

buildRPackage {
  pname = "quarto";
  version = "1.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/quarto_1.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/quarto/quarto_1.5.1.tar.gz"
    ];
    sha256 = "081rcz4karprmi8l9qgcmrcwqfz6l5dvbb65r5hcd1hpzk7xnyac";
  };

  propagatedBuildInputs = [
    cli
    fs
    htmltools
    jsonlite
    later
    lifecycle
    processx
    rlang
    rmarkdown
    rstudioapi
    xfun
    yaml
  ];

  meta = {
    description = "R package quarto";
    homepage = "https://cran.r-project.org/package=quarto";
  };
}
