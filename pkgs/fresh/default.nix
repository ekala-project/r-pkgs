{
  buildRPackage,
  fetchurl,
  bslib,
  htmltools,
  rstudioapi,
  sass,
  shiny,
}:

buildRPackage {
  pname = "fresh";
  version = "0.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fresh_0.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fresh/fresh_0.2.2.tar.gz"
    ];
    sha256 = "0wv9675nb3vvbdk82nrk3x0fp3f6gvrf2rcw64ri8r9pdzn87l45";
  };

  propagatedBuildInputs = [
    bslib
    htmltools
    rstudioapi
    sass
    shiny
  ];

  meta = {
    description = "R package fresh";
    homepage = "https://cran.r-project.org/package=fresh";
  };
}
