{
  buildRPackage,
  fetchurl,
  htmltools,
  promises,
  shiny,
}:

buildRPackage {
  pname = "shinydashboard";
  version = "0.7.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shinydashboard_0.7.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shinydashboard/shinydashboard_0.7.3.tar.gz"
    ];
    sha256 = "0k0llpzbys0qrzv37paihibhzn2riqgl0sqj7gzfqn3ahi8yh734";
  };

  propagatedBuildInputs = [
    htmltools
    promises
    shiny
  ];

  meta = {
    description = "R package shinydashboard";
    homepage = "https://cran.r-project.org/package=shinydashboard";
  };
}
