{
  buildRPackage,
  fetchurl,
  MASS,
  Rcpp,
  S7,
  cli,
  dplyr,
  gdtools,
  ggplot2,
  htmltools,
  htmlwidgets,
  purrr,
  rlang,
  systemfonts,
  vctrs,
}:

buildRPackage {
  pname = "ggiraph";
  version = "0.9.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggiraph_0.9.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggiraph/ggiraph_0.9.6.tar.gz"
    ];
    sha256 = "0idnnz0yl80axc9kf452ladp781ajgl4qs4hbivvffhfgzr1wpvi";
  };

  propagatedBuildInputs = [
    MASS
    Rcpp
    S7
    cli
    dplyr
    gdtools
    ggplot2
    htmltools
    htmlwidgets
    purrr
    rlang
    systemfonts
    vctrs
  ];

  meta = {
    description = "R package ggiraph";
    homepage = "https://cran.r-project.org/package=ggiraph";
  };
}
