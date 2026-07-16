{
  buildRPackage,
  fetchurl,
  cowplot,
  dplyr,
  ggplot2,
  ggrepel,
  ggsci,
  ggsignif,
  glue,
  gridExtra,
  magrittr,
  polynom,
  purrr,
  rlang,
  rstatix,
  scales,
  tibble,
  tidyr,
}:

buildRPackage {
  pname = "ggpubr";
  version = "0.6.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggpubr_0.6.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggpubr/ggpubr_0.6.3.tar.gz"
    ];
    sha256 = "1j178dbcr3a54drmzsly32y6jckmdkl79mk771agadsd0zfl878f";
  };

  propagatedBuildInputs = [
    cowplot
    dplyr
    ggplot2
    ggrepel
    ggsci
    ggsignif
    glue
    gridExtra
    magrittr
    polynom
    purrr
    rlang
    rstatix
    scales
    tibble
    tidyr
  ];

  meta = {
    description = "R package ggpubr";
    homepage = "https://cran.r-project.org/package=ggpubr";
  };
}
