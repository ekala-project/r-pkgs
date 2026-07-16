{
  buildRPackage,
  fetchurl,
  Formula,
  MASS,
  Rdpack,
  bdsmatrix,
  collapse,
  lattice,
  lmtest,
  maxLik,
  nlme,
  sandwich,
  zoo,
}:

buildRPackage {
  pname = "plm";
  version = "2.6-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/plm_2.6-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/plm/plm_2.6-7.tar.gz"
    ];
    sha256 = "1qfy545hwni167h7b6k060va6macmnappn68vv9ki1s7gp1glcvf";
  };

  propagatedBuildInputs = [
    Formula
    MASS
    Rdpack
    bdsmatrix
    collapse
    lattice
    lmtest
    maxLik
    nlme
    sandwich
    zoo
  ];

  meta = {
    description = "R package plm";
    homepage = "https://cran.r-project.org/package=plm";
  };
}
