{
  buildRPackage,
  fetchurl,
  cli,
  desc,
  ellipsis,
  fs,
  lifecycle,
  memoise,
  miniUI,
  pak,
  pkgbuild,
  pkgdown,
  pkgload,
  profvis,
  rcmdcheck,
  rlang,
  roxygen2,
  rversions,
  sessioninfo,
  testthat,
  urlchecker,
  usethis,
  withr,
}:

buildRPackage {
  pname = "devtools";
  version = "2.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/devtools_2.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/devtools/devtools_2.5.2.tar.gz"
    ];
    sha256 = "18hp4gsczmksgi8zbd3nbfcf4s2nnjdvmpwfh62223kza9yxsxzn";
  };

  propagatedBuildInputs = [
    cli
    desc
    ellipsis
    fs
    lifecycle
    memoise
    miniUI
    pak
    pkgbuild
    pkgdown
    pkgload
    profvis
    rcmdcheck
    rlang
    roxygen2
    rversions
    sessioninfo
    testthat
    urlchecker
    usethis
    withr
  ];

  meta = {
    description = "R package devtools";
    homepage = "https://cran.r-project.org/package=devtools";
  };
}
