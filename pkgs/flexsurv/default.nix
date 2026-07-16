{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  assertthat,
  deSolve,
  dplyr,
  generics,
  ggplot2,
  magrittr,
  mstate,
  muhaz,
  mvtnorm,
  numDeriv,
  purrr,
  quadprog,
  rlang,
  rstpm2,
  statmod,
  survival,
  tibble,
  tidyr,
  tidyselect,
}:

buildRPackage {
  pname = "flexsurv";
  version = "2.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/flexsurv_2.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/flexsurv/flexsurv_2.3.2.tar.gz"
    ];
    sha256 = "1171m8rx98bdkij0vp1w87msfjvbqsrh4jkzpm39yz0vg8charsv";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    assertthat
    deSolve
    dplyr
    generics
    ggplot2
    magrittr
    mstate
    muhaz
    mvtnorm
    numDeriv
    purrr
    quadprog
    rlang
    rstpm2
    statmod
    survival
    tibble
    tidyr
    tidyselect
  ];

  meta = {
    description = "R package flexsurv";
    homepage = "https://cran.r-project.org/package=flexsurv";
  };
}
