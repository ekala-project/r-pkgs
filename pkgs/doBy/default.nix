{
  buildRPackage,
  fetchurl,
  Deriv,
  MASS,
  Matrix,
  boot,
  broom,
  cowplot,
  dplyr,
  forecast,
  ggplot2,
  microbenchmark,
  modelr,
  purrr,
  rlang,
  tibble,
  tidyr,
}:

buildRPackage {
  pname = "doBy";
  version = "4.7.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/doBy_4.7.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/doBy/doBy_4.7.1.tar.gz"
    ];
    sha256 = "0yw2ggwgm34hf89vkrlfnykgs3icmfds6qblpvfpm42g7d7b3nd6";
  };

  propagatedBuildInputs = [
    Deriv
    MASS
    Matrix
    boot
    broom
    cowplot
    dplyr
    forecast
    ggplot2
    microbenchmark
    modelr
    purrr
    rlang
    tibble
    tidyr
  ];

  meta = {
    description = "R package doBy";
    homepage = "https://cran.r-project.org/package=doBy";
  };
}
