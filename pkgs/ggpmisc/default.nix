{
  buildRPackage,
  fetchurl,
  caTools,
  confintr,
  dplyr,
  generics,
  ggplot2,
  ggpp,
  lubridate,
  plyr,
  polynom,
  quantreg,
  rlang,
  scales,
  splus2R,
  tibble,
  tidyr,
}:

buildRPackage {
  pname = "ggpmisc";
  version = "0.7.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggpmisc_0.7.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggpmisc/ggpmisc_0.7.0.tar.gz"
    ];
    sha256 = "08msa3ixkilcgdgx6y6favqyfb0hld38ndwy2hq9dyqki4qiaddx";
  };

  propagatedBuildInputs = [
    caTools
    confintr
    dplyr
    generics
    ggplot2
    ggpp
    lubridate
    plyr
    polynom
    quantreg
    rlang
    scales
    splus2R
    tibble
    tidyr
  ];

  meta = {
    description = "R package ggpmisc";
    homepage = "https://cran.r-project.org/package=ggpmisc";
  };
}
