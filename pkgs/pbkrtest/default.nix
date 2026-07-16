{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  broom,
  doBy,
  dplyr,
  lme4,
  numDeriv,
}:

buildRPackage {
  pname = "pbkrtest";
  version = "0.5.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pbkrtest_0.5.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pbkrtest/pbkrtest_0.5.5.tar.gz"
    ];
    sha256 = "06y5kcq0y2j8bc5hmvrsv4wjbmir8i1y7s5xhjhvnwzxlvq8wv6j";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    broom
    doBy
    dplyr
    lme4
    numDeriv
  ];

  meta = {
    description = "R package pbkrtest";
    homepage = "https://cran.r-project.org/package=pbkrtest";
  };
}
