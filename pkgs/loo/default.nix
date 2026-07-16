{
  buildRPackage,
  fetchurl,
  checkmate,
  matrixStats,
  posterior,
}:

buildRPackage {
  pname = "loo";
  version = "2.9.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/loo_2.9.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/loo/loo_2.9.0.tar.gz"
    ];
    sha256 = "11n192hijx76znbpa4pc9fdb2946ni9pl689c5kw46nrl6442m77";
  };

  propagatedBuildInputs = [
    checkmate
    matrixStats
    posterior
  ];

  meta = {
    description = "R package loo";
    homepage = "https://cran.r-project.org/package=loo";
  };
}
