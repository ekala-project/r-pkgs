{
  buildRPackage,
  fetchurl,
  anytime,
  dplyr,
  forcats,
  forecast,
  generics,
  ggplot2,
  hms,
  lubridate,
  padr,
  plotly,
  purrr,
  readr,
  recipes,
  rlang,
  rsample,
  slider,
  stringi,
  stringr,
  tibble,
  tidyr,
  tidyselect,
  timeDate,
  tsfeatures,
  xts,
  zoo,
}:

buildRPackage {
  pname = "timetk";
  version = "2.9.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/timetk_2.9.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/timetk/timetk_2.9.1.tar.gz"
    ];
    sha256 = "1vihm37nkvhavhr61rw9fkgcfn8k91q58bavxqjg6hra0ahwjay7";
  };

  propagatedBuildInputs = [
    anytime
    dplyr
    forcats
    forecast
    generics
    ggplot2
    hms
    lubridate
    padr
    plotly
    purrr
    readr
    recipes
    rlang
    rsample
    slider
    stringi
    stringr
    tibble
    tidyr
    tidyselect
    timeDate
    tsfeatures
    xts
    zoo
  ];

  meta = {
    description = "R package timetk";
    homepage = "https://cran.r-project.org/package=timetk";
  };
}
