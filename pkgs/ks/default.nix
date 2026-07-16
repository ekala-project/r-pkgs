{
  buildRPackage,
  fetchurl,
  FNN,
  KernSmooth,
  Matrix,
  kernlab,
  mclust,
  mgcv,
  multicool,
  mvtnorm,
  pracma,
}:

buildRPackage {
  pname = "ks";
  version = "1.15.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ks_1.15.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ks/ks_1.15.2.tar.gz"
    ];
    sha256 = "0ankcsp79r5xb8mm2wsh3cz2012bsz7c6brj0gwddc7mbjjb620d";
  };

  propagatedBuildInputs = [
    FNN
    KernSmooth
    Matrix
    kernlab
    mclust
    mgcv
    multicool
    mvtnorm
    pracma
  ];

  meta = {
    description = "R package ks";
    homepage = "https://cran.r-project.org/package=ks";
  };
}
