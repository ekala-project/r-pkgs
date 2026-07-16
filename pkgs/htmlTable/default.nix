{
  buildRPackage,
  fetchurl,
  checkmate,
  htmltools,
  htmlwidgets,
  knitr,
  magrittr,
  rstudioapi,
  stringr,
}:

buildRPackage {
  pname = "htmlTable";
  version = "2.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/htmlTable_2.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/htmlTable/htmlTable_2.5.0.tar.gz"
    ];
    sha256 = "0a6qd099cgrx41nd43bzb8g0ml96iw62g8vzy44zrzh8fkrb0q8g";
  };

  propagatedBuildInputs = [
    checkmate
    htmltools
    htmlwidgets
    knitr
    magrittr
    rstudioapi
    stringr
  ];

  meta = {
    description = "R package htmlTable";
    homepage = "https://cran.r-project.org/package=htmlTable";
  };
}
