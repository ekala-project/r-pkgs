{
  buildRPackage,
  fetchurl,
  Matrix,
  RLRsim,
  lme4,
  mgcv,
  mvtnorm,
  nlme,
}:

buildRPackage {
  pname = "cAIC4";
  version = "1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cAIC4_1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cAIC4/cAIC4_1.1.tar.gz"
    ];
    sha256 = "0ixkhnsbpqx5pw0r3dvrwymbwr2k7xlv5gwp7cyd2rxafsqrp5m9";
  };

  propagatedBuildInputs = [
    Matrix
    RLRsim
    lme4
    mgcv
    mvtnorm
    nlme
  ];

  meta = {
    description = "R package cAIC4";
    homepage = "https://cran.r-project.org/package=cAIC4";
  };
}
