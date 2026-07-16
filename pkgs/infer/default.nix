{
  buildRPackage,
  fetchurl,
  broom,
  cli,
  dplyr,
  generics,
  ggplot2,
  glue,
  lifecycle,
  magrittr,
  patchwork,
  purrr,
  rlang,
  tibble,
  tidyr,
  vctrs,
  withr,
}:

buildRPackage {
  pname = "infer";
  version = "1.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/infer_1.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/infer/infer_1.1.0.tar.gz"
    ];
    sha256 = "0v5bc1q2mdjgxjahz3wv9n4zslmg6iqnq4iaqqg83qmp04w5x1i2";
  };

  propagatedBuildInputs = [
    broom
    cli
    dplyr
    generics
    ggplot2
    glue
    lifecycle
    magrittr
    patchwork
    purrr
    rlang
    tibble
    tidyr
    vctrs
    withr
  ];

  meta = {
    description = "R package infer";
    homepage = "https://cran.r-project.org/package=infer";
  };
}
