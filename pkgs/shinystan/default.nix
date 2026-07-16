{
  buildRPackage,
  fetchurl,
  DT,
  bayesplot,
  colourpicker,
  dygraphs,
  ggplot2,
  gridExtra,
  gtools,
  markdown,
  reshape2,
  rstan,
  shiny,
  shinyjs,
  shinythemes,
  threejs,
  xtable,
  xts,
}:

buildRPackage {
  pname = "shinystan";
  version = "2.7.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shinystan_2.7.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shinystan/shinystan_2.7.0.tar.gz"
    ];
    sha256 = "1fcy9yfn3wb401373cwd4lw6p43k0a9dma7n0gcnr4pww17znmya";
  };

  propagatedBuildInputs = [
    DT
    bayesplot
    colourpicker
    dygraphs
    ggplot2
    gridExtra
    gtools
    markdown
    reshape2
    rstan
    shiny
    shinyjs
    shinythemes
    threejs
    xtable
    xts
  ];

  meta = {
    description = "R package shinystan";
    homepage = "https://cran.r-project.org/package=shinystan";
  };
}
