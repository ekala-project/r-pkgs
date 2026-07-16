{
  buildRPackage,
  fetchurl,
  Matrix,
  biglm,
  coda,
  ggplot2,
  minqa,
  nlme,
  reshape2,
  statmod,
  tweedie,
}:

buildRPackage {
  pname = "cplm";
  version = "0.7-12.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cplm_0.7-12.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cplm/cplm_0.7-12.1.tar.gz"
    ];
    sha256 = "0z99fnmadjpx7d41p575dypy3pgsxxzani9npyishv5719hw35cf";
  };

  propagatedBuildInputs = [
    Matrix
    biglm
    coda
    ggplot2
    minqa
    nlme
    reshape2
    statmod
    tweedie
  ];

  meta = {
    description = "R package cplm";
    homepage = "https://cran.r-project.org/package=cplm";
  };
}
