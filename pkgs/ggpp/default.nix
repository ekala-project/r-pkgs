{
  buildRPackage,
  fetchurl,
  MASS,
  dplyr,
  ggplot2,
  glue,
  gridExtra,
  lubridate,
  polynom,
  rlang,
  scales,
  stringr,
  tibble,
  vctrs,
  xts,
  zoo,
}:

buildRPackage {
  pname = "ggpp";
  version = "0.6.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggpp_0.6.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggpp/ggpp_0.6.0.tar.gz"
    ];
    sha256 = "0z0n2d5f3bkm2zr3lgxz0jlk7vwkmbdcdsic99k10jyr5g7ilmrx";
  };

  propagatedBuildInputs = [
    MASS
    dplyr
    ggplot2
    glue
    gridExtra
    lubridate
    polynom
    rlang
    scales
    stringr
    tibble
    vctrs
    xts
    zoo
  ];

  meta = {
    description = "R package ggpp";
    homepage = "https://cran.r-project.org/package=ggpp";
  };
}
