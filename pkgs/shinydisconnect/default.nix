{
  buildRPackage,
  fetchurl,
  checkmate,
  glue,
  htmltools,
  shiny,
}:

buildRPackage {
  pname = "shinydisconnect";
  version = "0.1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shinydisconnect_0.1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shinydisconnect/shinydisconnect_0.1.1.tar.gz"
    ];
    sha256 = "1yhppfx8jpvz48iwxnimcwqhj02vqjrfmh4z5rdn9d35p51c8zjc";
  };

  propagatedBuildInputs = [
    checkmate
    glue
    htmltools
    shiny
  ];

  meta = {
    description = "R package shinydisconnect";
    homepage = "https://cran.r-project.org/package=shinydisconnect";
  };
}
