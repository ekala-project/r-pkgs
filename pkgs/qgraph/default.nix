{
  buildRPackage,
  fetchurl,
  Hmisc,
  Matrix,
  Rcpp,
  abind,
  colorspace,
  corpcor,
  fdrtool,
  ggplot2,
  glasso,
  gtools,
  igraph,
  jpeg,
  lavaan,
  pbapply,
  plyr,
  png,
  psych,
  reshape2,
}:

buildRPackage {
  pname = "qgraph";
  version = "1.9.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/qgraph_1.9.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/qgraph/qgraph_1.9.8.tar.gz"
    ];
    sha256 = "1m019j5nxc0184p0r2zgdn457g555nxsp2s08maa053nydj1va0l";
  };

  propagatedBuildInputs = [
    Hmisc
    Matrix
    Rcpp
    abind
    colorspace
    corpcor
    fdrtool
    ggplot2
    glasso
    gtools
    igraph
    jpeg
    lavaan
    pbapply
    plyr
    png
    psych
    reshape2
  ];

  meta = {
    description = "R package qgraph";
    homepage = "https://cran.r-project.org/package=qgraph";
  };
}
