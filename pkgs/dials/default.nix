{
  buildRPackage,
  fetchurl,
  DiceDesign,
  cli,
  dplyr,
  glue,
  hardhat,
  lifecycle,
  pillar,
  purrr,
  rlang,
  scales,
  sfd,
  tibble,
  vctrs,
  withr,
}:

buildRPackage {
  pname = "dials";
  version = "1.4.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dials_1.4.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dials/dials_1.4.3.tar.gz"
    ];
    sha256 = "0macaxdqw438xy1qzawnjn2iva5r2anf66fk4cpvrhhasp9dqhkj";
  };

  propagatedBuildInputs = [
    DiceDesign
    cli
    dplyr
    glue
    hardhat
    lifecycle
    pillar
    purrr
    rlang
    scales
    sfd
    tibble
    vctrs
    withr
  ];

  meta = {
    description = "R package dials";
    homepage = "https://cran.r-project.org/package=dials";
  };
}
