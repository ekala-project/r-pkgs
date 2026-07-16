{
  buildRPackage,
  fetchurl,
  BBmisc,
  ParamHelpers,
  Rcpp,
  RcppArmadillo,
  checkmate,
  ggplot2,
}:

buildRPackage {
  pname = "smoof";
  version = "1.7.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/smoof_1.7.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/smoof/smoof_1.7.0.tar.gz"
    ];
    sha256 = "0098rfpq9rii3h8aqahxpnh9f2yyn3g4bw4qxsinmc93xmlnz8n5";
  };

  propagatedBuildInputs = [
    BBmisc
    ParamHelpers
    Rcpp
    RcppArmadillo
    checkmate
    ggplot2
  ];

  meta = {
    description = "R package smoof";
    homepage = "https://cran.r-project.org/package=smoof";
  };
}
