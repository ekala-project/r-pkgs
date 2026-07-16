{
  buildRPackage,
  fetchurl,
  MASS,
  bbmle,
  coda,
  lattice,
  plyr,
}:

buildRPackage {
  pname = "emdbook";
  version = "1.3.14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/emdbook_1.3.14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/emdbook/emdbook_1.3.14.tar.gz"
    ];
    sha256 = "18m0n0nfi0khmd9fxqjlhrd669vnrnri5v9ch69rvkpngxl3gjmg";
  };

  propagatedBuildInputs = [
    MASS
    bbmle
    coda
    lattice
    plyr
  ];

  meta = {
    description = "R package emdbook";
    homepage = "https://cran.r-project.org/package=emdbook";
  };
}
