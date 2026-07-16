{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  RcppEigen,
}:

buildRPackage {
  pname = "RSpectra";
  version = "0.16-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RSpectra_0.16-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RSpectra/RSpectra_0.16-2.tar.gz"
    ];
    sha256 = "0zma49ah0sycjdx95m8mac21daa7p3gp9cg1mffygzhrjpblkwd2";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    RcppEigen
  ];

  meta = {
    description = "R package RSpectra";
    homepage = "https://cran.r-project.org/package=RSpectra";
  };
}
