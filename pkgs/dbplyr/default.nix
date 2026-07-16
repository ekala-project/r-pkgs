{
  buildRPackage,
  fetchurl,
  DBI,
  R6,
  blob,
  cli,
  dplyr,
  glue,
  lifecycle,
  magrittr,
  pillar,
  purrr,
  rlang,
  tibble,
  tidyr,
  tidyselect,
  vctrs,
  withr,
}:

buildRPackage {
  pname = "dbplyr";
  version = "2.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dbplyr_2.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dbplyr/dbplyr_2.5.2.tar.gz"
    ];
    sha256 = "129vdppqgflnbwnjadwlaxs73paz30bai1hh76lmxdfzpilyhni1";
  };

  propagatedBuildInputs = [
    DBI
    R6
    blob
    cli
    dplyr
    glue
    lifecycle
    magrittr
    pillar
    purrr
    rlang
    tibble
    tidyr
    tidyselect
    vctrs
    withr
  ];

  meta = {
    description = "R package dbplyr";
    homepage = "https://cran.r-project.org/package=dbplyr";
  };
}
