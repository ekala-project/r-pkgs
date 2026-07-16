{
  buildRPackage,
  fetchurl,
  R6,
  colourpicker,
  ggplot2,
  gtable,
  miniUI,
  scales,
  shiny,
  shinyjs,
}:

buildRPackage {
  pname = "ggExtra";
  version = "0.11.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggExtra_0.11.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggExtra/ggExtra_0.11.0.tar.gz"
    ];
    sha256 = "188cpvajwj00wfv292fbihf3xqj6w1v5raz17gkabapl7mv0n304";
  };

  propagatedBuildInputs = [
    R6
    colourpicker
    ggplot2
    gtable
    miniUI
    scales
    shiny
    shinyjs
  ];

  meta = {
    description = "R package ggExtra";
    homepage = "https://cran.r-project.org/package=ggExtra";
  };
}
