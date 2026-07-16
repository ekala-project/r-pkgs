{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  cmprsk,
  data_table,
  dplyr,
  etm,
  magrittr,
  mgcv,
  numDeriv,
  plyr,
  survival,
  zoo,
}:

buildRPackage {
  pname = "Epi";
  version = "2.65";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Epi_2.65.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Epi/Epi_2.65.tar.gz"
    ];
    sha256 = "09pjgnni2br1bwnlj63x3337hjy2gbf7dvh1n6fvmsmxl2jacgr7";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    cmprsk
    data_table
    dplyr
    etm
    magrittr
    mgcv
    numDeriv
    plyr
    survival
    zoo
  ];

  meta = {
    description = "R package Epi";
    homepage = "https://cran.r-project.org/package=Epi";
  };
}
