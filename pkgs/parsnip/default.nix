{
  buildRPackage,
  fetchurl,
  cli,
  dplyr,
  generics,
  ggplot2,
  globals,
  glue,
  hardhat,
  lifecycle,
  magrittr,
  pillar,
  prettyunits,
  purrr,
  rlang,
  sparsevctrs,
  tibble,
  tidyr,
  vctrs,
}:

buildRPackage {
  pname = "parsnip";
  version = "1.6.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/parsnip_1.6.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/parsnip/parsnip_1.6.0.tar.gz"
    ];
    sha256 = "08xd54wvvwd8caqxwfk5xhr7dp2czclivkm0wblzfswjcywi6f3z";
  };

  propagatedBuildInputs = [
    cli
    dplyr
    generics
    ggplot2
    globals
    glue
    hardhat
    lifecycle
    magrittr
    pillar
    prettyunits
    purrr
    rlang
    sparsevctrs
    tibble
    tidyr
    vctrs
  ];

  meta = {
    description = "R package parsnip";
    homepage = "https://cran.r-project.org/package=parsnip";
  };
}
