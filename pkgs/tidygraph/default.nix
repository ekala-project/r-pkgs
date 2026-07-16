{
  buildRPackage,
  fetchurl,
  R6,
  cli,
  cpp11,
  dplyr,
  igraph,
  lifecycle,
  magrittr,
  pillar,
  rlang,
  tibble,
  tidyr,
}:

buildRPackage {
  pname = "tidygraph";
  version = "1.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tidygraph_1.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tidygraph/tidygraph_1.3.1.tar.gz"
    ];
    sha256 = "06mc31yb771midi8lq0zdfymcsm2s4y1mqdxxjz1n24njfxx9hda";
  };

  propagatedBuildInputs = [
    R6
    cli
    cpp11
    dplyr
    igraph
    lifecycle
    magrittr
    pillar
    rlang
    tibble
    tidyr
  ];

  meta = {
    description = "R package tidygraph";
    homepage = "https://cran.r-project.org/package=tidygraph";
  };
}
