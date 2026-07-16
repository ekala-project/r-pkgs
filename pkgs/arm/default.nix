{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  abind,
  coda,
  lme4,
  nlme,
}:

buildRPackage {
  pname = "arm";
  version = "1.15-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/arm_1.15-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/arm/arm_1.15-3.tar.gz"
    ];
    sha256 = "0v26a0dak65k3rd6wxra8irpav11xrpxcviknb0gclfpjc2qniwl";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    abind
    coda
    lme4
    nlme
  ];

  meta = {
    description = "R package arm";
    homepage = "https://cran.r-project.org/package=arm";
  };
}
