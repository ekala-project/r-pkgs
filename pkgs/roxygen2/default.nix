{
  buildRPackage,
  fetchurl,
  R6,
  brew,
  cli,
  commonmark,
  cpp11,
  desc,
  knitr,
  lifecycle,
  pkgload,
  rlang,
  withr,
  xml2,
}:

buildRPackage {
  pname = "roxygen2";
  version = "8.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/roxygen2_8.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/roxygen2/roxygen2_8.0.0.tar.gz"
    ];
    sha256 = "1s1lp8hbhh636nisv9b8pvxb14144jvqbfal49szam2mlbrnp0bm";
  };

  propagatedBuildInputs = [
    R6
    brew
    cli
    commonmark
    cpp11
    desc
    knitr
    lifecycle
    pkgload
    rlang
    withr
    xml2
  ];

  meta = {
    description = "R package roxygen2";
    homepage = "https://cran.r-project.org/package=roxygen2";
  };
}
