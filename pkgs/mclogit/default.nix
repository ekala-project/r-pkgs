{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  memisc,
  nlme,
}:

buildRPackage {
  pname = "mclogit";
  version = "0.9.15";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mclogit_0.9.15.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mclogit/mclogit_0.9.15.tar.gz"
    ];
    sha256 = "1bvzdhlzx39sf1kr1w2w6zh5xccy3lbks6mm5d6r97c68saig9n6";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    memisc
    nlme
  ];

  meta = {
    description = "R package mclogit";
    homepage = "https://cran.r-project.org/package=mclogit";
  };
}
