{
  buildRPackage,
  fetchurl,
  cli,
  dplyr,
  furrr,
  generics,
  glue,
  lifecycle,
  pillar,
  purrr,
  rlang,
  slider,
  tibble,
  tidyr,
  tidyselect,
  vctrs,
}:

buildRPackage {
  pname = "rsample";
  version = "1.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rsample_1.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rsample/rsample_1.3.2.tar.gz"
    ];
    sha256 = "1wif439ifma51vmk8p8ad5i24yy75j4wap73nzpdpx0zys5sl2kn";
  };

  propagatedBuildInputs = [
    cli
    dplyr
    furrr
    generics
    glue
    lifecycle
    pillar
    purrr
    rlang
    slider
    tibble
    tidyr
    tidyselect
    vctrs
  ];

  meta = {
    description = "R package rsample";
    homepage = "https://cran.r-project.org/package=rsample";
  };
}
