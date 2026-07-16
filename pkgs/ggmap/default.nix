{
  buildRPackage,
  fetchurl,
  bitops,
  cli,
  digest,
  dplyr,
  ggplot2,
  glue,
  httr,
  jpeg,
  magrittr,
  plyr,
  png,
  purrr,
  rlang,
  scales,
  stringr,
  tibble,
  tidyr,
}:

buildRPackage {
  pname = "ggmap";
  version = "4.0.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggmap_4.0.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggmap/ggmap_4.0.2.tar.gz"
    ];
    sha256 = "0ckp9v5vc98m0xm3bw1cj7ggvcgrr113rnnfd5sfqr9kvgprfnjb";
  };

  propagatedBuildInputs = [
    bitops
    cli
    digest
    dplyr
    ggplot2
    glue
    httr
    jpeg
    magrittr
    plyr
    png
    purrr
    rlang
    scales
    stringr
    tibble
    tidyr
  ];

  meta = {
    description = "R package ggmap";
    homepage = "https://cran.r-project.org/package=ggmap";
  };
}
