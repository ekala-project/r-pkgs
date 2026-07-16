{
  buildRPackage,
  fetchurl,
  bslib,
  htmltools,
  jsonlite,
  rlang,
  sass,
  shiny,
}:

buildRPackage {
  pname = "shinyWidgets";
  version = "0.9.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shinyWidgets_0.9.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shinyWidgets/shinyWidgets_0.9.1.tar.gz"
    ];
    sha256 = "118yqylidnlc1ixwang4bvhyy3hjmsimkcv1cz73s8wsj45hmyzb";
  };

  propagatedBuildInputs = [
    bslib
    htmltools
    jsonlite
    rlang
    sass
    shiny
  ];

  meta = {
    description = "R package shinyWidgets";
    homepage = "https://cran.r-project.org/package=shinyWidgets";
  };
}
