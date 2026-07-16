{
  buildRPackage,
  fetchurl,
  ggiraph,
  ggplot2,
  ggridges,
  labelled,
  mosaicCore,
  rlang,
  scales,
  stringr,
  tibble,
}:

buildRPackage {
  pname = "ggformula";
  version = "1.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggformula_1.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggformula/ggformula_1.0.1.tar.gz"
    ];
    sha256 = "04p8jjk75hsjc7xr49yi5fyadm3hn9c9x18ynr8fbkwick2a7dnd";
  };

  propagatedBuildInputs = [
    ggiraph
    ggplot2
    ggridges
    labelled
    mosaicCore
    rlang
    scales
    stringr
    tibble
  ];

  meta = {
    description = "R package ggformula";
    homepage = "https://cran.r-project.org/package=ggformula";
  };
}
