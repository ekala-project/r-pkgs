{
  buildRPackage,
  fetchurl,
  BiocManager,
  graph,
  igraph,
}:

buildRPackage {
  pname = "ggm";
  version = "2.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggm_2.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggm/ggm_2.5.2.tar.gz"
    ];
    sha256 = "0nv5m7f2kbjr0abfpcb18g1291ghphpzx0ixf7fpk23ia6xqwvyy";
  };

  propagatedBuildInputs = [
    BiocManager
    graph
    igraph
  ];

  meta = {
    description = "R package ggm";
    homepage = "https://cran.r-project.org/package=ggm";
  };
}
