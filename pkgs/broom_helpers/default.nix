{
  buildRPackage,
  fetchurl,
  broom,
  cards,
  cli,
  dplyr,
  labelled,
  lifecycle,
  purrr,
  rlang,
  stringr,
  tibble,
  tidyr,
  tidyselect,
}:

buildRPackage {
  pname = "broom_helpers";
  version = "1.22.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/broom_helpers_1.22.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/broom_helpers/broom_helpers_1.22.0.tar.gz"
    ];
    sha256 = "058zhfqw253fh4p09mbj08irsswri6fxjcr4plkafn05sx15c90n";
  };

  propagatedBuildInputs = [
    broom
    cards
    cli
    dplyr
    labelled
    lifecycle
    purrr
    rlang
    stringr
    tibble
    tidyr
    tidyselect
  ];

  meta = {
    description = "R package broom_helpers";
    homepage = "https://cran.r-project.org/package=broom_helpers";
  };
}
