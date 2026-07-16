{
  buildRPackage,
  fetchurl,
  R6,
  checkmate,
  dplyr,
  lifecycle,
  plyr,
  purrr,
  rlang,
  tibble,
}:

buildRPackage {
  pname = "rearrr";
  version = "0.3.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rearrr_0.3.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rearrr/rearrr_0.3.5.tar.gz"
    ];
    sha256 = "0iwzb2l3vqs8c76d44qpkfk8hsglm9fg2y75prm6fr4n88xr82bp";
  };

  propagatedBuildInputs = [
    R6
    checkmate
    dplyr
    lifecycle
    plyr
    purrr
    rlang
    tibble
  ];

  meta = {
    description = "R package rearrr";
    homepage = "https://cran.r-project.org/package=rearrr";
  };
}
