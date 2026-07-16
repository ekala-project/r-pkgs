{
  buildRPackage,
  fetchurl,
  bslib,
  callr,
  cli,
  desc,
  downlit,
  fontawesome,
  fs,
  httr2,
  jsonlite,
  lifecycle,
  openssl,
  purrr,
  ragg,
  rlang,
  rmarkdown,
  tibble,
  whisker,
  withr,
  xml2,
  yaml,
}:

buildRPackage {
  pname = "pkgdown";
  version = "2.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pkgdown_2.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pkgdown/pkgdown_2.2.0.tar.gz"
    ];
    sha256 = "07hrk9npx4fxmx22gdq1kxwyy70nvr73qzz85df4bygd1qr6x5bi";
  };

  propagatedBuildInputs = [
    bslib
    callr
    cli
    desc
    downlit
    fontawesome
    fs
    httr2
    jsonlite
    lifecycle
    openssl
    purrr
    ragg
    rlang
    rmarkdown
    tibble
    whisker
    withr
    xml2
    yaml
  ];

  meta = {
    description = "R package pkgdown";
    homepage = "https://cran.r-project.org/package=pkgdown";
  };
}
