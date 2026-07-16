{
  buildRPackage,
  fetchurl,
  DT,
  MASS,
  car,
  cluster,
  ellipse,
  emmeans,
  flashClust,
  ggplot2,
  ggrepel,
  lattice,
  leaps,
  multcompView,
  scatterplot3d,
}:

buildRPackage {
  pname = "FactoMineR";
  version = "2.14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/FactoMineR_2.14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/FactoMineR/FactoMineR_2.14.tar.gz"
    ];
    sha256 = "0s61apjf9pw738dj9sa2lxbm6c5vl49bmpjc155hms6ikm796vzx";
  };

  propagatedBuildInputs = [
    DT
    MASS
    car
    cluster
    ellipse
    emmeans
    flashClust
    ggplot2
    ggrepel
    lattice
    leaps
    multcompView
    scatterplot3d
  ];

  meta = {
    description = "R package FactoMineR";
    homepage = "https://cran.r-project.org/package=FactoMineR";
  };
}
