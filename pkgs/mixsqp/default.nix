{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
  irlba,
}:

buildRPackage {
  pname = "mixsqp";
  version = "0.3-54";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mixsqp_0.3-54.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mixsqp/mixsqp_0.3-54.tar.gz"
    ];
    sha256 = "13pv3mmz514kl4svxqwyk5b241dy1q52khwdc6rmh712ia8xxl7p";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
    irlba
  ];

  meta = {
    description = "R package mixsqp";
    homepage = "https://cran.r-project.org/package=mixsqp";
  };
}
