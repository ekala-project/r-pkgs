{
  buildRPackage,
  fetchurl,
  Rcpp,
  Rdpack,
}:

buildRPackage {
  pname = "Ckmeans_1d_dp";
  version = "4.3.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Ckmeans_1d_dp_4.3.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Ckmeans_1d_dp/Ckmeans_1d_dp_4.3.5.tar.gz"
    ];
    sha256 = "0ga0pjva0samik36mapllqr34w8fqrr3f6drnch7ziy1igdrj1d3";
  };

  propagatedBuildInputs = [
    Rcpp
    Rdpack
  ];

  meta = {
    description = "R package Ckmeans_1d_dp";
    homepage = "https://cran.r-project.org/package=Ckmeans_1d_dp";
  };
}
