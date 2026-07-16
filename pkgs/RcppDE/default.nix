{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
}:

buildRPackage {
  pname = "RcppDE";
  version = "0.1.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppDE_0.1.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppDE/RcppDE_0.1.9.tar.gz"
    ];
    sha256 = "0fzyjbm4d51gykbavhlpkvh8qarzbkb13vwa80dfp6rpgslfx2pl";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
  ];

  meta = {
    description = "R package RcppDE";
    homepage = "https://cran.r-project.org/package=RcppDE";
  };
}
