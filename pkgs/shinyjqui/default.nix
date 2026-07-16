{
  buildRPackage,
  fetchurl,
  htmltools,
  htmlwidgets,
  jsonlite,
  rlang,
  shiny,
}:

buildRPackage {
  pname = "shinyjqui";
  version = "0.4.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shinyjqui_0.4.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shinyjqui/shinyjqui_0.4.1.tar.gz"
    ];
    sha256 = "135gwz7syyb6pbn0lkvmq0v1c6r1zivavnqhi1rnzbbzlysi27v1";
  };

  propagatedBuildInputs = [
    htmltools
    htmlwidgets
    jsonlite
    rlang
    shiny
  ];

  meta = {
    description = "R package shinyjqui";
    homepage = "https://cran.r-project.org/package=shinyjqui";
  };
}
