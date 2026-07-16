{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  dplyr,
  lifecycle,
  rlang,
  sf,
  splancs,
  tibble,
  withr,
}:

buildRPackage {
  pname = "fmesher";
  version = "0.7.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fmesher_0.7.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fmesher/fmesher_0.7.0.tar.gz"
    ];
    sha256 = "11d1z0py21dw8b9w4rcbwzp5q0ghryq3qq9srknkb8njqmllw73a";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    dplyr
    lifecycle
    rlang
    sf
    splancs
    tibble
    withr
  ];

  meta = {
    description = "R package fmesher";
    homepage = "https://cran.r-project.org/package=fmesher";
  };
}
