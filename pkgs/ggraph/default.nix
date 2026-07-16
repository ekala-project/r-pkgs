{
  buildRPackage,
  fetchurl,
  MASS,
  cli,
  cpp11,
  dplyr,
  ggforce,
  ggplot2,
  ggrepel,
  graphlayouts,
  igraph,
  lifecycle,
  memoise,
  rlang,
  scales,
  tidygraph,
  vctrs,
  viridis,
  withr,
}:

buildRPackage {
  pname = "ggraph";
  version = "2.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggraph_2.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggraph/ggraph_2.2.2.tar.gz"
    ];
    sha256 = "0b425y7lkwzfgc1jdj0pijaq4ipwnd1gxk29bqz2dyaryfi4nhd9";
  };

  propagatedBuildInputs = [
    MASS
    cli
    cpp11
    dplyr
    ggforce
    ggplot2
    ggrepel
    graphlayouts
    igraph
    lifecycle
    memoise
    rlang
    scales
    tidygraph
    vctrs
    viridis
    withr
  ];

  meta = {
    description = "R package ggraph";
    homepage = "https://cran.r-project.org/package=ggraph";
  };
}
