{
  buildRPackage,
  fetchurl,
  Rcpp,
  cli,
  distributional,
  ggplot2,
  glue,
  gtable,
  numDeriv,
  quadprog,
  rlang,
  scales,
  tibble,
  vctrs,
  withr,
}:

buildRPackage {
  pname = "ggdist";
  version = "3.3.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggdist_3.3.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggdist/ggdist_3.3.3.tar.gz"
    ];
    sha256 = "0wrnzl6m221k2h7rv5vf88va83yc6hsdm45fp5yz96cpmfr66mgk";
  };

  propagatedBuildInputs = [
    Rcpp
    cli
    distributional
    ggplot2
    glue
    gtable
    numDeriv
    quadprog
    rlang
    scales
    tibble
    vctrs
    withr
  ];

  meta = {
    description = "R package ggdist";
    homepage = "https://cran.r-project.org/package=ggdist";
  };
}
