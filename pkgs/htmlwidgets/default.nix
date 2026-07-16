{
  buildRPackage,
  fetchurl,
  htmltools,
  jsonlite,
  knitr,
  rmarkdown,
  yaml,
}:

buildRPackage {
  pname = "htmlwidgets";
  version = "1.6.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/htmlwidgets_1.6.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/htmlwidgets/htmlwidgets_1.6.4.tar.gz"
    ];
    sha256 = "1l0f7bz2icixsrgg5fg8k09mv0nq9vn5ch1fywkaqpa8605qzc3w";
  };

  propagatedBuildInputs = [
    htmltools
    jsonlite
    knitr
    rmarkdown
    yaml
  ];

  meta = {
    description = "R package htmlwidgets";
    homepage = "https://cran.r-project.org/package=htmlwidgets";
  };
}
