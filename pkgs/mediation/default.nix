{
  buildRPackage,
  fetchurl,
  Hmisc,
  MASS,
  Matrix,
  boot,
  lme4,
  lpSolve,
  mvtnorm,
  sandwich,
}:

buildRPackage {
  pname = "mediation";
  version = "4.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mediation_4.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mediation/mediation_4.5.1.tar.gz"
    ];
    sha256 = "0p1s0v8lwbpdny5s1bxn59zv8h2ww1lx9gkahy67jh8kxc5dx3d1";
  };

  propagatedBuildInputs = [
    Hmisc
    MASS
    Matrix
    boot
    lme4
    lpSolve
    mvtnorm
    sandwich
  ];

  meta = {
    description = "R package mediation";
    homepage = "https://cran.r-project.org/package=mediation";
  };
}
