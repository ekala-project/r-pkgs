{
  buildRPackage,
  fetchurl,
  OpenMx,
  XML,
  colorspace,
  corpcor,
  igraph,
  lavaan,
  lisrelToR,
  plyr,
  qgraph,
  rockchalk,
  sem,
}:

buildRPackage {
  pname = "semPlot";
  version = "1.1.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/semPlot_1.1.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/semPlot/semPlot_1.1.8.tar.gz"
    ];
    sha256 = "0ygvdjvasb7yg7c4v64inkrfi3qgc3gcscxm1hy988lnqnshngka";
  };

  propagatedBuildInputs = [
    OpenMx
    XML
    colorspace
    corpcor
    igraph
    lavaan
    lisrelToR
    plyr
    qgraph
    rockchalk
    sem
  ];

  meta = {
    description = "R package semPlot";
    homepage = "https://cran.r-project.org/package=semPlot";
  };
}
