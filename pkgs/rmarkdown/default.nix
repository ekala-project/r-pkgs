{
  buildRPackage,
  fetchurl,
  bslib,
  evaluate,
  fontawesome,
  htmltools,
  jquerylib,
  jsonlite,
  knitr,
  tinytex,
  xfun,
  yaml,
}:

buildRPackage {
  pname = "rmarkdown";
  version = "2.31";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rmarkdown_2.31.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rmarkdown/rmarkdown_2.31.tar.gz"
    ];
    sha256 = "1g7w26i9rndwm2nscpn4lqgsx2xiwvfx553pa0ajyaa7lkaawnqc";
  };

  propagatedBuildInputs = [
    bslib
    evaluate
    fontawesome
    htmltools
    jquerylib
    jsonlite
    knitr
    tinytex
    xfun
    yaml
  ];

  meta = {
    description = "R package rmarkdown";
    homepage = "https://cran.r-project.org/package=rmarkdown";
  };
}
