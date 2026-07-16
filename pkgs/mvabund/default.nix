{
  buildRPackage,
  fetchurl,
  MASS,
  Rcpp,
  RcppGSL,
  mgcv,
  statmod,
  tweedie,
}:

buildRPackage {
  pname = "mvabund";
  version = "4.2.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mvabund_4.2.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mvabund/mvabund_4.2.8.tar.gz"
    ];
    sha256 = "0zjk6ylvgkzs7cpw21pkdclrvfhy46llmwznqjhva19hg75j3an9";
  };

  propagatedBuildInputs = [
    MASS
    Rcpp
    RcppGSL
    mgcv
    statmod
    tweedie
  ];

  meta = {
    description = "R package mvabund";
    homepage = "https://cran.r-project.org/package=mvabund";
  };
}
