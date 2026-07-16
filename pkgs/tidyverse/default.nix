{
  buildRPackage,
  fetchurl,
  broom,
  cli,
  conflicted,
  dbplyr,
  dplyr,
  dtplyr,
  forcats,
  ggplot2,
  googledrive,
  googlesheets4,
  haven,
  hms,
  httr,
  jsonlite,
  lubridate,
  magrittr,
  modelr,
  pillar,
  purrr,
  ragg,
  readr,
  readxl,
  reprex,
  rlang,
  rstudioapi,
  rvest,
  stringr,
  tibble,
  tidyr,
  xml2,
}:

buildRPackage {
  pname = "tidyverse";
  version = "2.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tidyverse_2.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tidyverse/tidyverse_2.0.0.tar.gz"
    ];
    sha256 = "1r980y6d4a5brvxwdx41qzi8f3fck36c5l89sd3k4csna09jsg1x";
  };

  propagatedBuildInputs = [
    broom
    cli
    conflicted
    dbplyr
    dplyr
    dtplyr
    forcats
    ggplot2
    googledrive
    googlesheets4
    haven
    hms
    httr
    jsonlite
    lubridate
    magrittr
    modelr
    pillar
    purrr
    ragg
    readr
    readxl
    reprex
    rlang
    rstudioapi
    rvest
    stringr
    tibble
    tidyr
    xml2
  ];

  meta = {
    description = "R package tidyverse";
    homepage = "https://cran.r-project.org/package=tidyverse";
  };
}
