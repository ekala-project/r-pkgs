{
  buildRPackage,
  fetchurl,
  EnvStats,
  Rcpp,
  RcppArmadillo,
  Rdpack,
  ggplot2,
  mvtnorm,
  reshape2,
}:

buildRPackage {
  pname = "remaCor";
  version = "0.0.20";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/remaCor_0.0.20.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/remaCor/remaCor_0.0.20.tar.gz"
    ];
    sha256 = "17skiyadn632pmcf97z9c4cfix47hk78xvl94cbp5k0p842aws4c";
  };

  propagatedBuildInputs = [
    EnvStats
    Rcpp
    RcppArmadillo
    Rdpack
    ggplot2
    mvtnorm
    reshape2
  ];

  meta = {
    description = "R package remaCor";
    homepage = "https://cran.r-project.org/package=remaCor";
  };
}
