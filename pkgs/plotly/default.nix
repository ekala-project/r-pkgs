{
  buildRPackage,
  fetchurl,
  RColorBrewer,
  base64enc,
  crosstalk,
  data_table,
  digest,
  dplyr,
  ggplot2,
  htmltools,
  htmlwidgets,
  httr,
  jsonlite,
  lazyeval,
  magrittr,
  promises,
  purrr,
  rlang,
  scales,
  tibble,
  tidyr,
  vctrs,
  viridisLite,
}:

buildRPackage {
  pname = "plotly";
  version = "4.12.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/plotly_4.12.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/plotly/plotly_4.12.0.tar.gz"
    ];
    sha256 = "1kvsf8rf1v6yz28aq91d3j0n4hb5pg0x2hnm27gcc2amwkbdpxpr";
  };

  propagatedBuildInputs = [
    RColorBrewer
    base64enc
    crosstalk
    data_table
    digest
    dplyr
    ggplot2
    htmltools
    htmlwidgets
    httr
    jsonlite
    lazyeval
    magrittr
    promises
    purrr
    rlang
    scales
    tibble
    tidyr
    vctrs
    viridisLite
  ];

  meta = {
    description = "R package plotly";
    homepage = "https://cran.r-project.org/package=plotly";
  };
}
