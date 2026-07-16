{
  buildRPackage,
  fetchurl,
  htmltools,
  jquerylib,
  knitr,
  rmarkdown,
  tinytex,
  xfun,
  yaml,
}:

buildRPackage {
  pname = "bookdown";
  version = "0.46";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bookdown_0.46.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bookdown/bookdown_0.46.tar.gz"
    ];
    sha256 = "0qykzam8frva1wpgbbc4a0vws86jkclcbggji07x4qrdqzzyk52x";
  };

  propagatedBuildInputs = [
    htmltools
    jquerylib
    knitr
    rmarkdown
    tinytex
    xfun
    yaml
  ];

  meta = {
    description = "R package bookdown";
    homepage = "https://cran.r-project.org/package=bookdown";
  };
}
