{
  buildRPackage,
  fetchurl,
  MASS,
  TSP,
  ca,
  cluster,
  colorspace,
  foreach,
  gclus,
  qap,
  registry,
  vegan,
}:

buildRPackage {
  pname = "seriation";
  version = "1.5.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/seriation_1.5.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/seriation/seriation_1.5.8.tar.gz"
    ];
    sha256 = "17hx4yixm2yf3d6s69a3x5lmnjphr3vnzdrpsjpprkpkar81hdkl";
  };

  propagatedBuildInputs = [
    MASS
    TSP
    ca
    cluster
    colorspace
    foreach
    gclus
    qap
    registry
    vegan
  ];

  meta = {
    description = "R package seriation";
    homepage = "https://cran.r-project.org/package=seriation";
  };
}
