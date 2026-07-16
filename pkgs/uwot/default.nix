{
  buildRPackage,
  fetchurl,
  FNN,
  Matrix,
  RSpectra,
  Rcpp,
  RcppAnnoy,
  RcppProgress,
  dqrng,
  irlba,
}:

buildRPackage {
  pname = "uwot";
  version = "0.2.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/uwot_0.2.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/uwot/uwot_0.2.4.tar.gz"
    ];
    sha256 = "1bhbrmdq7a3qb4g6rfpmgcbhqyj5v80mrm565475mpkfi44s66wr";
  };

  propagatedBuildInputs = [
    FNN
    Matrix
    RSpectra
    Rcpp
    RcppAnnoy
    RcppProgress
    dqrng
    irlba
  ];

  meta = {
    description = "R package uwot";
    homepage = "https://cran.r-project.org/package=uwot";
  };
}
