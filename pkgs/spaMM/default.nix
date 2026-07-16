{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  ROI,
  Rcpp,
  RcppEigen,
  backports,
  boot,
  cli,
  geometry,
  gmp,
  minqa,
  nlme,
  nloptr,
  numDeriv,
  pbapply,
  proxy,
  reformulas,
}:

buildRPackage {
  pname = "spaMM";
  version = "4.6.65";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spaMM_4.6.65.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spaMM/spaMM_4.6.65.tar.gz"
    ];
    sha256 = "1b3xfn8h6vzck3h8jbywv04vl5s9pr9linqkfwpgjdvd7i1a77l5";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    ROI
    Rcpp
    RcppEigen
    backports
    boot
    cli
    geometry
    gmp
    minqa
    nlme
    nloptr
    numDeriv
    pbapply
    proxy
    reformulas
  ];

  meta = {
    description = "R package spaMM";
    homepage = "https://cran.r-project.org/package=spaMM";
  };
}
