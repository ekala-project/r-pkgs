{
  buildRPackage,
  fetchurl,
  backports,
  cli,
  dplyr,
  generics,
  glue,
  lifecycle,
  purrr,
  rlang,
  stringr,
  tibble,
  tidyr,
}:

buildRPackage {
  pname = "broom";
  version = "1.0.13";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/broom_1.0.13.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/broom/broom_1.0.13.tar.gz"
    ];
    sha256 = "0q8g68r1iyp0l45rhami1hibib3da70mb3585ryhxndlawgn0ipr";
  };

  propagatedBuildInputs = [
    backports
    cli
    dplyr
    generics
    glue
    lifecycle
    purrr
    rlang
    stringr
    tibble
    tidyr
  ];

  meta = {
    description = "R package broom";
    homepage = "https://cran.r-project.org/package=broom";
  };
}
