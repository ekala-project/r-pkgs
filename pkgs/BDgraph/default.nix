{
  buildRPackage,
  fetchurl,
  ggplot2,
  igraph,
  pROC,
}:

buildRPackage {
  pname = "BDgraph";
  version = "2.74";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/BDgraph_2.74.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/BDgraph/BDgraph_2.74.tar.gz"
    ];
    sha256 = "1ahlg2qfz18m6si68r3rw5p4cgwh1dq5clz345alwz48m0vajy5g";
  };

  propagatedBuildInputs = [
    ggplot2
    igraph
    pROC
  ];

  meta = {
    description = "R package BDgraph";
    homepage = "https://cran.r-project.org/package=BDgraph";
  };
}
