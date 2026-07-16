{
  buildRPackage,
  fetchurl,
  MASS,
  ade4,
  ape,
  boot,
  dplyr,
  ggplot2,
  igraph,
  reshape2,
  seqinr,
  shiny,
  vegan,
}:

buildRPackage {
  pname = "adegenet";
  version = "2.1.11";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/adegenet_2.1.11.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/adegenet/adegenet_2.1.11.tar.gz"
    ];
    sha256 = "0wb2ryv4irn47c1p6w3w302hhxmh9mrx7djxc1jli86af96xv2pc";
  };

  propagatedBuildInputs = [
    MASS
    ade4
    ape
    boot
    dplyr
    ggplot2
    igraph
    reshape2
    seqinr
    shiny
    vegan
  ];

  meta = {
    description = "R package adegenet";
    homepage = "https://cran.r-project.org/package=adegenet";
  };
}
