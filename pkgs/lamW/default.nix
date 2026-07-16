{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppParallel,
}:

buildRPackage {
  pname = "lamW";
  version = "2.2.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lamW_2.2.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lamW/lamW_2.2.7.tar.gz"
    ];
    sha256 = "1yar71j4g0yp2chmxnxd7zrl04sdspz1b8z64ial3yksl84klh2n";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppParallel
  ];

  meta = {
    description = "R package lamW";
    homepage = "https://cran.r-project.org/package=lamW";
  };
}
