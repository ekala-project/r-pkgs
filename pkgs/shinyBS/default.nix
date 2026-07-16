{
  buildRPackage,
  fetchurl,
  htmltools,
  jsonlite,
  shiny,
}:

buildRPackage {
  pname = "shinyBS";
  version = "0.65.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shinyBS_0.65.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shinyBS/shinyBS_0.65.0.tar.gz"
    ];
    sha256 = "0j8h2djylip0hvy71knkryrd9zp3xbcrjfxw3zin4xckfls4di51";
  };

  propagatedBuildInputs = [
    htmltools
    jsonlite
    shiny
  ];

  meta = {
    description = "R package shinyBS";
    homepage = "https://cran.r-project.org/package=shinyBS";
  };
}
