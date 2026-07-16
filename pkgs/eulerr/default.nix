{
  buildRPackage,
  fetchurl,
  GenSA,
  Rcpp,
  RcppArmadillo,
  polyclip,
  polylabelr,
}:

buildRPackage {
  pname = "eulerr";
  version = "7.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/eulerr_7.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/eulerr/eulerr_7.1.0.tar.gz"
    ];
    sha256 = "1azzawb2ifgx31afnncivp796rik4b24rbr0bwzgcjnyq0lsr1lj";
  };

  propagatedBuildInputs = [
    GenSA
    Rcpp
    RcppArmadillo
    polyclip
    polylabelr
  ];

  meta = {
    description = "R package eulerr";
    homepage = "https://cran.r-project.org/package=eulerr";
  };
}
