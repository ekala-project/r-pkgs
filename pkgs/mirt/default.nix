{
  buildRPackage,
  fetchurl,
  Deriv,
  GPArotation,
  Matrix,
  Rcpp,
  RcppArmadillo,
  SimDesign,
  dcurver,
  gridExtra,
  lattice,
  mgcv,
  pbapply,
  splines2,
  vegan,
}:

buildRPackage {
  pname = "mirt";
  version = "1.46.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mirt_1.46.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mirt/mirt_1.46.1.tar.gz"
    ];
    sha256 = "02cyvrdgd5cwyl1malx6a77xn2mvbh9wq22i5jzgxymkdasz30yp";
  };

  propagatedBuildInputs = [
    Deriv
    GPArotation
    Matrix
    Rcpp
    RcppArmadillo
    SimDesign
    dcurver
    gridExtra
    lattice
    mgcv
    pbapply
    splines2
    vegan
  ];

  meta = {
    description = "R package mirt";
    homepage = "https://cran.r-project.org/package=mirt";
  };
}
