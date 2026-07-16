{
  buildRPackage,
  fetchurl,
  cli,
  cpp11,
  dplyr,
  glue,
  lifecycle,
  magrittr,
  purrr,
  rlang,
  stringr,
  tibble,
  tidyselect,
  vctrs,
}:

buildRPackage {
  pname = "tidyr";
  version = "1.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tidyr_1.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tidyr/tidyr_1.3.2.tar.gz"
    ];
    sha256 = "0nk67ls23r50fxxgzyfvvcf7cwbigl12r9336zvjls5gy3dfdh04";
  };

  propagatedBuildInputs = [
    cli
    cpp11
    dplyr
    glue
    lifecycle
    magrittr
    purrr
    rlang
    stringr
    tibble
    tidyselect
    vctrs
  ];

  meta = {
    description = "R package tidyr";
    homepage = "https://cran.r-project.org/package=tidyr";
  };
}
