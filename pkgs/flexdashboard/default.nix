{
  buildRPackage,
  fetchurl,
  bslib,
  htmltools,
  htmlwidgets,
  jsonlite,
  knitr,
  rmarkdown,
  sass,
  scales,
  shiny,
}:

buildRPackage {
  pname = "flexdashboard";
  version = "0.6.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/flexdashboard_0.6.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/flexdashboard/flexdashboard_0.6.3.tar.gz"
    ];
    sha256 = "0s0h66prg6176s53wwxj9cmxi9qwcfnmkxnlx18i17gkif85ijff";
  };

  propagatedBuildInputs = [
    bslib
    htmltools
    htmlwidgets
    jsonlite
    knitr
    rmarkdown
    sass
    scales
    shiny
  ];

  meta = {
    description = "R package flexdashboard";
    homepage = "https://cran.r-project.org/package=flexdashboard";
  };
}
