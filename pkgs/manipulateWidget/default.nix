{
  buildRPackage,
  fetchurl,
  base64enc,
  codetools,
  htmltools,
  htmlwidgets,
  knitr,
  miniUI,
  shiny,
  shinyjs,
  webshot,
}:

buildRPackage {
  pname = "manipulateWidget";
  version = "0.11.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/manipulateWidget_0.11.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/manipulateWidget/manipulateWidget_0.11.2.tar.gz"
    ];
    sha256 = "1pl4aqhijbr5rz3dnrc3686k7wdi56zyln1srlrfgghigm8l8q2b";
  };

  propagatedBuildInputs = [
    base64enc
    codetools
    htmltools
    htmlwidgets
    knitr
    miniUI
    shiny
    shinyjs
    webshot
  ];

  meta = {
    description = "R package manipulateWidget";
    homepage = "https://cran.r-project.org/package=manipulateWidget";
  };
}
