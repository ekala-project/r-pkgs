{
  buildRPackage,
  fetchurl,
  cli,
  dplyr,
  forcats,
  ggplot2,
  lifecycle,
  patchwork,
  purrr,
  rlang,
  scales,
  stringr,
  tidyr,
}:

buildRPackage {
  pname = "ggstats";
  version = "0.13.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggstats_0.13.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggstats/ggstats_0.13.0.tar.gz"
    ];
    sha256 = "11ypgk4cdvwm7vk633809dbh0s2i973jajmmcxasm6ylip507pc2";
  };

  propagatedBuildInputs = [
    cli
    dplyr
    forcats
    ggplot2
    lifecycle
    patchwork
    purrr
    rlang
    scales
    stringr
    tidyr
  ];

  meta = {
    description = "R package ggstats";
    homepage = "https://cran.r-project.org/package=ggstats";
  };
}
