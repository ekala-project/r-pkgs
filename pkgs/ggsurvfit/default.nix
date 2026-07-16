{
  buildRPackage,
  fetchurl,
  broom,
  cli,
  dplyr,
  ggplot2,
  glue,
  gtable,
  patchwork,
  rlang,
  survival,
  tidyr,
}:

buildRPackage {
  pname = "ggsurvfit";
  version = "1.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggsurvfit_1.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggsurvfit/ggsurvfit_1.2.0.tar.gz"
    ];
    sha256 = "0difkl6qsnrprrcbprmlhyxq3x9krqsf2bzysr898sbmmcg3illr";
  };

  propagatedBuildInputs = [
    broom
    cli
    dplyr
    ggplot2
    glue
    gtable
    patchwork
    rlang
    survival
    tidyr
  ];

  meta = {
    description = "R package ggsurvfit";
    homepage = "https://cran.r-project.org/package=ggsurvfit";
  };
}
