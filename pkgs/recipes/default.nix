{
  buildRPackage,
  fetchurl,
  Matrix,
  cli,
  clock,
  dplyr,
  generics,
  glue,
  gower,
  hardhat,
  ipred,
  lifecycle,
  lubridate,
  magrittr,
  purrr,
  rlang,
  sparsevctrs,
  tibble,
  tidyr,
  tidyselect,
  timeDate,
  vctrs,
  withr,
}:

buildRPackage {
  pname = "recipes";
  version = "1.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/recipes_1.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/recipes/recipes_1.3.2.tar.gz"
    ];
    sha256 = "0ji2rk7bfc7nbndgi4brxk30i5zchf96w2n93c0xqd038w6rp5k3";
  };

  propagatedBuildInputs = [
    Matrix
    cli
    clock
    dplyr
    generics
    glue
    gower
    hardhat
    ipred
    lifecycle
    lubridate
    magrittr
    purrr
    rlang
    sparsevctrs
    tibble
    tidyr
    tidyselect
    timeDate
    vctrs
    withr
  ];

  meta = {
    description = "R package recipes";
    homepage = "https://cran.r-project.org/package=recipes";
  };
}
