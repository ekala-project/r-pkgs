{
  buildRPackage,
  fetchurl,
  MASS,
  mclust,
}:

buildRPackage {
  pname = "prabclus";
  version = "2.3-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/prabclus_2.3-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/prabclus/prabclus_2.3-5.tar.gz"
    ];
    sha256 = "12sfssxkqvnn1vhv1wzfp8h662nixbmy068c91y1lmg7mcmi7nga";
  };

  propagatedBuildInputs = [
    MASS
    mclust
  ];

  meta = {
    description = "R package prabclus";
    homepage = "https://cran.r-project.org/package=prabclus";
  };
}
