{
  buildRPackage,
  fetchurl,
  MASS,
  ggplot2,
  lme4,
  numDeriv,
  reformulas,
}:

buildRPackage {
  pname = "lmerTest";
  version = "3.2-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lmerTest_3.2-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lmerTest/lmerTest_3.2-1.tar.gz"
    ];
    sha256 = "0s2r0960hlaax104jgrn7s6z0pz690ski5f5kzh4z0j0i6aydid0";
  };

  propagatedBuildInputs = [
    MASS
    ggplot2
    lme4
    numDeriv
    reformulas
  ];

  meta = {
    description = "R package lmerTest";
    homepage = "https://cran.r-project.org/package=lmerTest";
  };
}
