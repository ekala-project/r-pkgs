{
  buildRPackage,
  fetchurl,
  data_tree,
  htmlwidgets,
  igraph,
  jsonlite,
  magrittr,
}:

buildRPackage {
  pname = "networkD3";
  version = "0.4.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/networkD3_0.4.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/networkD3/networkD3_0.4.1.tar.gz"
    ];
    sha256 = "0kpn4n4n4b2myzdv9cnsn8a0gvyvy85cajd1ab6v28ipvnjnmqsv";
  };

  propagatedBuildInputs = [
    data_tree
    htmlwidgets
    igraph
    jsonlite
    magrittr
  ];

  meta = {
    description = "R package networkD3";
    homepage = "https://cran.r-project.org/package=networkD3";
  };
}
