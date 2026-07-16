{
  buildRPackage,
  fetchurl,
  glue,
  htmltools,
  rlang,
  shiny,
}:

buildRPackage {
  pname = "shinyvalidate";
  version = "0.1.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shinyvalidate_0.1.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shinyvalidate/shinyvalidate_0.1.3.tar.gz"
    ];
    sha256 = "01qlqzp0g6782maj73yygmwlchhv4xcnlc7j0w3lp6dcj7qkzz68";
  };

  propagatedBuildInputs = [
    glue
    htmltools
    rlang
    shiny
  ];

  meta = {
    description = "R package shinyvalidate";
    homepage = "https://cran.r-project.org/package=shinyvalidate";
  };
}
