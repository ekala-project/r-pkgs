{
  buildRPackage,
  fetchurl,
  RColorBrewer,
  cli,
  dplyr,
  glue,
  htmltools,
  htmlwidgets,
  igraph,
  magrittr,
  purrr,
  readr,
  rlang,
  rstudioapi,
  scales,
  stringr,
  tibble,
  tidyr,
  viridisLite,
  visNetwork,
}:

buildRPackage {
  pname = "DiagrammeR";
  version = "1.0.12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/DiagrammeR_1.0.12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/DiagrammeR/DiagrammeR_1.0.12.tar.gz"
    ];
    sha256 = "0dkyx0jyv5xs8gsvmv82mcmnasw4ql9pzmfvabv8qcfq13wzn1a2";
  };

  propagatedBuildInputs = [
    RColorBrewer
    cli
    dplyr
    glue
    htmltools
    htmlwidgets
    igraph
    magrittr
    purrr
    readr
    rlang
    rstudioapi
    scales
    stringr
    tibble
    tidyr
    viridisLite
    visNetwork
  ];

  meta = {
    description = "R package DiagrammeR";
    homepage = "https://cran.r-project.org/package=DiagrammeR";
  };
}
