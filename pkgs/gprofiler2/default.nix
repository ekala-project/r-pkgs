{
  buildRPackage,
  fetchurl,
  RCurl,
  crosstalk,
  curl,
  dplyr,
  ggplot2,
  gridExtra,
  jsonlite,
  plotly,
  tidyr,
  viridisLite,
}:

buildRPackage {
  pname = "gprofiler2";
  version = "0.2.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gprofiler2_0.2.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gprofiler2/gprofiler2_0.2.4.tar.gz"
    ];
    sha256 = "0hmhdglka8w5ihdc7ww8268n66p1a7373m62pnlmx5qrpwixblgi";
  };

  propagatedBuildInputs = [
    RCurl
    crosstalk
    curl
    dplyr
    ggplot2
    gridExtra
    jsonlite
    plotly
    tidyr
    viridisLite
  ];

  meta = {
    description = "R package gprofiler2";
    homepage = "https://cran.r-project.org/package=gprofiler2";
  };
}
