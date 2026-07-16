{
  buildRPackage,
  fetchurl,
  R6,
  cli,
  generics,
  glue,
  lifecycle,
  magrittr,
  pillar,
  rlang,
  tibble,
  tidyselect,
  vctrs,
}:

buildRPackage {
  pname = "dplyr";
  version = "1.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dplyr_1.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dplyr/dplyr_1.2.1.tar.gz"
    ];
    sha256 = "1q4hjdbf8cgssdkzm5cnp6d245fhkp9jcwqpkihqpnjcybi6zmhq";
  };

  propagatedBuildInputs = [
    R6
    cli
    generics
    glue
    lifecycle
    magrittr
    pillar
    rlang
    tibble
    tidyselect
    vctrs
  ];

  meta = {
    description = "R package dplyr";
    homepage = "https://cran.r-project.org/package=dplyr";
  };
}
