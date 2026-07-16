{
  buildRPackage,
  fetchurl,
  DEoptim,
  MASS,
  ape,
  clusterGeneration,
  coda,
  combinat,
  doParallel,
  expm,
  foreach,
  maps,
  mnormt,
  nlme,
  numDeriv,
  optimParallel,
  phangorn,
  scatterplot3d,
}:

buildRPackage {
  pname = "phytools";
  version = "2.5-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/phytools_2.5-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/phytools/phytools_2.5-2.tar.gz"
    ];
    sha256 = "00bzw9xra4b8py1jpg4nb25yvawqsgvc7fjkjixykzrzbpssqkrw";
  };

  propagatedBuildInputs = [
    DEoptim
    MASS
    ape
    clusterGeneration
    coda
    combinat
    doParallel
    expm
    foreach
    maps
    mnormt
    nlme
    numDeriv
    optimParallel
    phangorn
    scatterplot3d
  ];

  meta = {
    description = "R package phytools";
    homepage = "https://cran.r-project.org/package=phytools";
  };
}
