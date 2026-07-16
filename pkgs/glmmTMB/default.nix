{
  buildRPackage,
  fetchurl,
  Matrix,
  RcppEigen,
  TMB,
  lme4,
  mgcv,
  nlme,
  numDeriv,
  pbkrtest,
  reformulas,
  sandwich,
}:

buildRPackage {
  pname = "glmmTMB";
  version = "1.1.14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/glmmTMB_1.1.14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/glmmTMB/glmmTMB_1.1.14.tar.gz"
    ];
    sha256 = "1ggvxyz557s502gzw8xl2p7mg8zprhg7hi2xn5fq5imkwk7q2g32";
  };

  propagatedBuildInputs = [
    Matrix
    RcppEigen
    TMB
    lme4
    mgcv
    nlme
    numDeriv
    pbkrtest
    reformulas
    sandwich
  ];

  meta = {
    description = "R package glmmTMB";
    homepage = "https://cran.r-project.org/package=glmmTMB";
  };
}
