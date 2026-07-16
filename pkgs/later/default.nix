{
  buildRPackage,
  fetchurl,
  Rcpp,
  rlang,
}:

buildRPackage {
  pname = "later";
  version = "1.4.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/later_1.4.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/later/later_1.4.8.tar.gz"
    ];
    sha256 = "06fjj0i0vd175adpx7nnbkvk34qs1gr3p98slbm0kx0xznrqhpff";
  };

  propagatedBuildInputs = [
    Rcpp
    rlang
  ];

  meta = {
    description = "R package later";
    homepage = "https://cran.r-project.org/package=later";
  };
}
