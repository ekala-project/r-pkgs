{
  buildRPackage,
  fetchurl,
  BH,
  Rcpp,
  RcppEigen,
}:

buildRPackage {
  pname = "nabor";
  version = "0.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/nabor_0.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/nabor/nabor_0.5.0.tar.gz"
    ];
    sha256 = "1nj39cdfwrmhgsi3cq8imxv3n6xzc1v6dzdb2cf2hybjk368v4s7";
  };

  propagatedBuildInputs = [
    BH
    Rcpp
    RcppEigen
  ];

  meta = {
    description = "R package nabor";
    homepage = "https://cran.r-project.org/package=nabor";
  };
}
