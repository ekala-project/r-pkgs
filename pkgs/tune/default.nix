{
  buildRPackage,
  fetchurl,
  GauPro,
  cli,
  dials,
  dplyr,
  generics,
  ggplot2,
  glue,
  hardhat,
  lifecycle,
  parsnip,
  purrr,
  recipes,
  rlang,
  rsample,
  tailor,
  tibble,
  tidyr,
  tidyselect,
  vctrs,
  withr,
  workflows,
  yardstick,
}:

buildRPackage {
  pname = "tune";
  version = "2.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tune_2.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tune/tune_2.1.0.tar.gz"
    ];
    sha256 = "1kjj8csv1b2hbdww89fsrm57rp1q4gpbz8mdsbr1i4c73v1v1gls";
  };

  propagatedBuildInputs = [
    GauPro
    cli
    dials
    dplyr
    generics
    ggplot2
    glue
    hardhat
    lifecycle
    parsnip
    purrr
    recipes
    rlang
    rsample
    tailor
    tibble
    tidyr
    tidyselect
    vctrs
    withr
    workflows
    yardstick
  ];

  meta = {
    description = "R package tune";
    homepage = "https://cran.r-project.org/package=tune";
  };
}
