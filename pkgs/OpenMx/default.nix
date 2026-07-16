{
  buildRPackage,
  fetchurl,
  BH,
  MASS,
  Matrix,
  Rcpp,
  RcppEigen,
  RcppParallel,
  StanHeaders,
  digest,
  lifecycle,
  rpf,
}:

buildRPackage {
  pname = "OpenMx";
  version = "2.22.11";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/OpenMx_2.22.11.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/OpenMx/OpenMx_2.22.11.tar.gz"
    ];
    sha256 = "0b5nxklj82173clbras80im3990nfhzkm00p7gyi1f5n0k97l2q8";
  };

  propagatedBuildInputs = [
    BH
    MASS
    Matrix
    Rcpp
    RcppEigen
    RcppParallel
    StanHeaders
    digest
    lifecycle
    rpf
  ];

  meta = {
    description = "R package OpenMx";
    homepage = "https://cran.r-project.org/package=OpenMx";
  };
}
