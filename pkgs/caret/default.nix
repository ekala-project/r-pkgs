{
  buildRPackage,
  fetchurl,
  ModelMetrics,
  e1071,
  foreach,
  ggplot2,
  lattice,
  nlme,
  pROC,
  plyr,
  recipes,
  reshape2,
  withr,
}:

buildRPackage {
  pname = "caret";
  version = "7.0-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/caret_7.0-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/caret/caret_7.0-1.tar.gz"
    ];
    sha256 = "0p41k8r3sm8icfli14w6nzc9glwb8a2dmb2b8a5p2j0rrsl53sni";
  };

  propagatedBuildInputs = [
    ModelMetrics
    e1071
    foreach
    ggplot2
    lattice
    nlme
    pROC
    plyr
    recipes
    reshape2
    withr
  ];

  meta = {
    description = "R package caret";
    homepage = "https://cran.r-project.org/package=caret";
  };
}
