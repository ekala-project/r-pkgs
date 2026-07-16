{
  buildRPackage,
  fetchurl,
  assertthat,
  dplyr,
  htmltools,
  jsonlite,
  magrittr,
  rlang,
  shiny,
}:

buildRPackage {
  pname = "ggvis";
  version = "0.4.10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggvis_0.4.10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggvis/ggvis_0.4.10.tar.gz"
    ];
    sha256 = "12bk6j2qqrq1wwgmanz08yh56656xls9b0yyvyl9zazkgy63gh12";
  };

  propagatedBuildInputs = [
    assertthat
    dplyr
    htmltools
    jsonlite
    magrittr
    rlang
    shiny
  ];

  meta = {
    description = "R package ggvis";
    homepage = "https://cran.r-project.org/package=ggvis";
  };
}
