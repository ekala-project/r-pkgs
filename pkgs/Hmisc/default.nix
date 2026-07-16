{
  buildRPackage,
  fetchurl,
  Formula,
  base64enc,
  cluster,
  colorspace,
  data_table,
  foreign,
  ggplot2,
  gridExtra,
  gtable,
  htmlTable,
  htmltools,
  knitr,
  nnet,
  rmarkdown,
  rpart,
  viridisLite,
}:

buildRPackage {
  pname = "Hmisc";
  version = "5.2-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Hmisc_5.2-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Hmisc/Hmisc_5.2-5.tar.gz"
    ];
    sha256 = "1ab6gkkmw4k8bl4n91f7c9wv4rz9p21yv507ci24fzb58lpc8n6m";
  };

  propagatedBuildInputs = [
    Formula
    base64enc
    cluster
    colorspace
    data_table
    foreign
    ggplot2
    gridExtra
    gtable
    htmlTable
    htmltools
    knitr
    nnet
    rmarkdown
    rpart
    viridisLite
  ];

  meta = {
    description = "R package Hmisc";
    homepage = "https://cran.r-project.org/package=Hmisc";
  };
}
