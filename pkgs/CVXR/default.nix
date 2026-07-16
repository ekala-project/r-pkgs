{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  RcppEigen,
  S7,
  clarabel,
  cli,
  gmp,
  highs,
  osqp,
  scs,
  slam,
}:

buildRPackage {
  pname = "CVXR";
  version = "1.8.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/CVXR_1.8.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/CVXR/CVXR_1.8.2.tar.gz"
    ];
    sha256 = "172ld1cakd745jl0zf55xdmr9gslb24xbb8z2izwaphz1z0wjr67";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    RcppEigen
    S7
    clarabel
    cli
    gmp
    highs
    osqp
    scs
    slam
  ];

  meta = {
    description = "R package CVXR";
    homepage = "https://cran.r-project.org/package=CVXR";
  };
}
