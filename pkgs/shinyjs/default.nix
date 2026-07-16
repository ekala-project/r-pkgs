{
  buildRPackage,
  fetchurl,
  digest,
  jsonlite,
  shiny,
}:

buildRPackage {
  pname = "shinyjs";
  version = "2.1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shinyjs_2.1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shinyjs/shinyjs_2.1.1.tar.gz"
    ];
    sha256 = "1zqy0p9pn80fbnkhng5xx1jzpmzby3dz0w4lb4ad0xa28gvi42wg";
  };

  propagatedBuildInputs = [
    digest
    jsonlite
    shiny
  ];

  meta = {
    description = "R package shinyjs";
    homepage = "https://cran.r-project.org/package=shinyjs";
  };
}
