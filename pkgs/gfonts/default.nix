{
  buildRPackage,
  fetchurl,
  crayon,
  crul,
  glue,
  htmltools,
  jsonlite,
  shiny,
}:

buildRPackage {
  pname = "gfonts";
  version = "0.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gfonts_0.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gfonts/gfonts_0.2.0.tar.gz"
    ];
    sha256 = "19ja087k767bq71v2w4jcpynd62ysrqmjf6rpfnmmd40aanyxqkj";
  };

  propagatedBuildInputs = [
    crayon
    crul
    glue
    htmltools
    jsonlite
    shiny
  ];

  meta = {
    description = "R package gfonts";
    homepage = "https://cran.r-project.org/package=gfonts";
  };
}
