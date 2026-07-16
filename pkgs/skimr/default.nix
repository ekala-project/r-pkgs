{
  buildRPackage,
  fetchurl,
  cli,
  dplyr,
  knitr,
  pillar,
  purrr,
  repr,
  rlang,
  stringr,
  tibble,
  tidyr,
  tidyselect,
  vctrs,
}:

buildRPackage {
  pname = "skimr";
  version = "2.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/skimr_2.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/skimr/skimr_2.2.2.tar.gz"
    ];
    sha256 = "1x2h5c9gv94vwkbhz6rp75xhi9x5p7jvgi9j433q11r4ficrz7i1";
  };

  propagatedBuildInputs = [
    cli
    dplyr
    knitr
    pillar
    purrr
    repr
    rlang
    stringr
    tibble
    tidyr
    tidyselect
    vctrs
  ];

  meta = {
    description = "R package skimr";
    homepage = "https://cran.r-project.org/package=skimr";
  };
}
