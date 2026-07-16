{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  Rdpack,
  cli,
  coda,
  knitr,
  lpSolveAPI,
  magrittr,
  memoise,
  network,
  purrr,
  rlang,
  rle,
  robustbase,
  statnet_common,
  stringr,
  tibble,
  trust,
}:

buildRPackage {
  pname = "ergm";
  version = "4.12.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ergm_4.12.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ergm/ergm_4.12.0.tar.gz"
    ];
    sha256 = "1db3qgwsb4507zs6vjf43g3zdsi67jqn4ng2yhbfh3zwsqnyyjpb";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    Rdpack
    cli
    coda
    knitr
    lpSolveAPI
    magrittr
    memoise
    network
    purrr
    rlang
    rle
    robustbase
    statnet_common
    stringr
    tibble
    trust
  ];

  meta = {
    description = "R package ergm";
    homepage = "https://cran.r-project.org/package=ergm";
  };
}
