{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  Rcpp,
  ape,
  dirmult,
  foreach,
  ggplot2,
  ggrepel,
  inline,
  matrixStats,
  modeest,
  rmutil,
  statmod,
  vegan,
}:

buildRPackage {
  pname = "GUniFrac";
  version = "1.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/GUniFrac_1.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/GUniFrac/GUniFrac_1.9.tar.gz"
    ];
    sha256 = "0wahkf68w3ai460dgj8xqsxp4mkis5hnlm9yq0qshz6zzmb48zim";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    Rcpp
    ape
    dirmult
    foreach
    ggplot2
    ggrepel
    inline
    matrixStats
    modeest
    rmutil
    statmod
    vegan
  ];

  meta = {
    description = "R package GUniFrac";
    homepage = "https://cran.r-project.org/package=GUniFrac";
  };
}
