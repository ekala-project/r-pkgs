{
  buildRPackage,
  fetchurl,
  ggplot2,
  ggrepel,
  igraph,
  network,
  sna,
}:

buildRPackage {
  pname = "ggnetwork";
  version = "0.5.14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggnetwork_0.5.14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggnetwork/ggnetwork_0.5.14.tar.gz"
    ];
    sha256 = "1w1zkyhpb4b9d43c5s4x5czzr4vk2lzph9yqm7lhhxl1bbc7kaya";
  };

  propagatedBuildInputs = [
    ggplot2
    ggrepel
    igraph
    network
    sna
  ];

  meta = {
    description = "R package ggnetwork";
    homepage = "https://cran.r-project.org/package=ggnetwork";
  };
}
