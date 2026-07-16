{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppParallel,
  desc,
}:

buildRPackage {
  pname = "rstantools";
  version = "2.6.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rstantools_2.6.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rstantools/rstantools_2.6.0.tar.gz"
    ];
    sha256 = "0dzqlxvpfpr9q0f30c9lksi1kag1nhbz1vasssh4ifs2ivsdir3g";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppParallel
    desc
  ];

  meta = {
    description = "R package rstantools";
    homepage = "https://cran.r-project.org/package=rstantools";
  };
}
