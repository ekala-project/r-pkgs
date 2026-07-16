{
  buildRPackage,
  fetchurl,
  Deriv,
  MASS,
  Matrix,
  deming,
  lme4,
  mcr,
  nlme,
}:

buildRPackage {
  pname = "rsq";
  version = "2.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rsq_2.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rsq/rsq_2.7.tar.gz"
    ];
    sha256 = "1dnx7cn533wg5gqvggfpq3hfid924ccywxnw5sw0l50m4p0p1p5g";
  };

  propagatedBuildInputs = [
    Deriv
    MASS
    Matrix
    deming
    lme4
    mcr
    nlme
  ];

  meta = {
    description = "R package rsq";
    homepage = "https://cran.r-project.org/package=rsq";
  };
}
