{
  buildRPackage,
  fetchurl,
  Biobase,
  BiocManager,
  RColorBrewer,
  cluster,
  codetools,
  colorspace,
  digest,
  doParallel,
  foreach,
  ggplot2,
  gridBase,
  registry,
  reshape2,
  rngtools,
  stringr,
}:

buildRPackage {
  pname = "NMF";
  version = "0.28";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/NMF_0.28.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/NMF/NMF_0.28.tar.gz"
    ];
    sha256 = "1yzf5vcvyb2lypxcfyhah7y2yblkar1is7c50645yppf4frygpvp";
  };

  propagatedBuildInputs = [
    Biobase
    BiocManager
    RColorBrewer
    cluster
    codetools
    colorspace
    digest
    doParallel
    foreach
    ggplot2
    gridBase
    registry
    reshape2
    rngtools
    stringr
  ];

  meta = {
    description = "R package NMF";
    homepage = "https://cran.r-project.org/package=NMF";
  };
}
