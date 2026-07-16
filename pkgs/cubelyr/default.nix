{
  buildRPackage,
  fetchurl,
  dplyr,
  glue,
  pillar,
  purrr,
  rlang,
  tibble,
  tidyselect,
}:

buildRPackage {
  pname = "cubelyr";
  version = "1.0.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cubelyr_1.0.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cubelyr/cubelyr_1.0.2.tar.gz"
    ];
    sha256 = "154vwf5pj2jh66wqdh78nc0v722b4rh88hss24g5lc31wlghzc8q";
  };

  propagatedBuildInputs = [
    dplyr
    glue
    pillar
    purrr
    rlang
    tibble
    tidyselect
  ];

  meta = {
    description = "R package cubelyr";
    homepage = "https://cran.r-project.org/package=cubelyr";
  };
}
