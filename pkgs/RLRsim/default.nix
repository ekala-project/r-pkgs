{
  buildRPackage,
  fetchurl,
  Rcpp,
  lme4,
  mgcv,
  nlme,
}:

buildRPackage {
  pname = "RLRsim";
  version = "3.1-9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RLRsim_3.1-9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RLRsim/RLRsim_3.1-9.tar.gz"
    ];
    sha256 = "1xb353f2bfm27rkgc008n0vf8y6ggy2ql7lx0z2azc4k13mn0szp";
  };

  propagatedBuildInputs = [
    Rcpp
    lme4
    mgcv
    nlme
  ];

  meta = {
    description = "R package RLRsim";
    homepage = "https://cran.r-project.org/package=RLRsim";
  };
}
