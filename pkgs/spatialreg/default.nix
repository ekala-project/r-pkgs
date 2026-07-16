{
  buildRPackage,
  fetchurl,
  LearnBayes,
  Matrix,
  boot,
  coda,
  marginaleffects,
  multcomp,
  mvtnorm,
  nlme,
  sf,
  spData,
  spdep,
}:

buildRPackage {
  pname = "spatialreg";
  version = "1.4-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spatialreg_1.4-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spatialreg/spatialreg_1.4-3.tar.gz"
    ];
    sha256 = "1rlc69nx1l3xbm1jlb6mn6wv28lmp42gzgywkqsc0s7mksr1mkf9";
  };

  propagatedBuildInputs = [
    LearnBayes
    Matrix
    boot
    coda
    marginaleffects
    multcomp
    mvtnorm
    nlme
    sf
    spData
    spdep
  ];

  meta = {
    description = "R package spatialreg";
    homepage = "https://cran.r-project.org/package=spatialreg";
  };
}
