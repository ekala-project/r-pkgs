{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppEigen,
  lifecycle,
  mvtnorm,
}:

buildRPackage {
  pname = "rpf";
  version = "1.0.15";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rpf_1.0.15.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rpf/rpf_1.0.15.tar.gz"
    ];
    sha256 = "1pmwzdz1lhms80ycvmq907kzc9aabm56j6zfkvlxy980zsmjxhaz";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppEigen
    lifecycle
    mvtnorm
  ];

  meta = {
    description = "R package rpf";
    homepage = "https://cran.r-project.org/package=rpf";
  };
}
