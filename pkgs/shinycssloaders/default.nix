{
  buildRPackage,
  fetchurl,
  digest,
  glue,
  htmltools,
  shiny,
}:

buildRPackage {
  pname = "shinycssloaders";
  version = "1.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shinycssloaders_1.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shinycssloaders/shinycssloaders_1.1.0.tar.gz"
    ];
    sha256 = "0w7gw81j5d2dvjdk49dd222bqd40ll3sl8mykg68vcz64ihdg2h3";
  };

  propagatedBuildInputs = [
    digest
    glue
    htmltools
    shiny
  ];

  meta = {
    description = "R package shinycssloaders";
    homepage = "https://cran.r-project.org/package=shinycssloaders";
  };
}
