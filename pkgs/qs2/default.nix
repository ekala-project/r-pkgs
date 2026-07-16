{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppParallel,
  stringfish,
}:

buildRPackage {
  pname = "qs2";
  version = "0.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/qs2_0.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/qs2/qs2_0.2.1.tar.gz"
    ];
    sha256 = "0kdqrrrk0yhjmdc1bw4ij3qclznnp6j8vk645irpy9rspzlr51a9";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppParallel
    stringfish
  ];

  meta = {
    description = "R package qs2";
    homepage = "https://cran.r-project.org/package=qs2";
  };
}
