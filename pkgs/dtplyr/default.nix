{
  buildRPackage,
  fetchurl,
  cli,
  data_table,
  dplyr,
  glue,
  lifecycle,
  rlang,
  tibble,
  tidyselect,
  vctrs,
}:

buildRPackage {
  pname = "dtplyr";
  version = "1.3.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dtplyr_1.3.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dtplyr/dtplyr_1.3.3.tar.gz"
    ];
    sha256 = "125i6sszsy0z456dq5zqs1kwkkdn1cydi24grkm0q6jmvmqhdkyb";
  };

  propagatedBuildInputs = [
    cli
    data_table
    dplyr
    glue
    lifecycle
    rlang
    tibble
    tidyselect
    vctrs
  ];

  meta = {
    description = "R package dtplyr";
    homepage = "https://cran.r-project.org/package=dtplyr";
  };
}
