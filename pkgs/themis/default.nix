{
  buildRPackage,
  fetchurl,
  RANN,
  ROSE,
  cli,
  dplyr,
  generics,
  glue,
  gower,
  hardhat,
  lifecycle,
  purrr,
  recipes,
  rlang,
  tibble,
  vctrs,
  withr,
}:

buildRPackage {
  pname = "themis";
  version = "1.0.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/themis_1.0.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/themis/themis_1.0.3.tar.gz"
    ];
    sha256 = "13biv9pizp7zrcgjq5ynnr64c6ivvhzy17vkvzv0dvrf4pm49jqb";
  };

  propagatedBuildInputs = [
    RANN
    ROSE
    cli
    dplyr
    generics
    glue
    gower
    hardhat
    lifecycle
    purrr
    recipes
    rlang
    tibble
    vctrs
    withr
  ];

  meta = {
    description = "R package themis";
    homepage = "https://cran.r-project.org/package=themis";
  };
}
