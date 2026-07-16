{
  buildRPackage,
  fetchurl,
  dplyr,
  ggplot2,
  ggridges,
  glue,
  posterior,
  reshape2,
  rlang,
  tibble,
  tidyr,
  tidyselect,
}:

buildRPackage {
  pname = "bayesplot";
  version = "1.15.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bayesplot_1.15.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bayesplot/bayesplot_1.15.0.tar.gz"
    ];
    sha256 = "172754kamdjgbpzci4br4iysmn1a4zcsjghsj7dy6rpa5wr9jjhi";
  };

  propagatedBuildInputs = [
    dplyr
    ggplot2
    ggridges
    glue
    posterior
    reshape2
    rlang
    tibble
    tidyr
    tidyselect
  ];

  meta = {
    description = "R package bayesplot";
    homepage = "https://cran.r-project.org/package=bayesplot";
  };
}
