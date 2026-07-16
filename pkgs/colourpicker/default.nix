{
  buildRPackage,
  fetchurl,
  ggplot2,
  htmltools,
  htmlwidgets,
  jsonlite,
  miniUI,
  shiny,
  shinyjs,
}:

buildRPackage {
  pname = "colourpicker";
  version = "1.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/colourpicker_1.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/colourpicker/colourpicker_1.3.0.tar.gz"
    ];
    sha256 = "0415238r7a8xrp3kvq8lczzxz534irj2q1zfbb0pl7xfs6663wn7";
  };

  propagatedBuildInputs = [
    ggplot2
    htmltools
    htmlwidgets
    jsonlite
    miniUI
    shiny
    shinyjs
  ];

  meta = {
    description = "R package colourpicker";
    homepage = "https://cran.r-project.org/package=colourpicker";
  };
}
