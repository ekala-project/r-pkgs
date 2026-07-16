{
  buildRPackage,
  fetchurl,
  RColorBrewer,
  assertthat,
  colorspace,
  dendextend,
  egg,
  ggplot2,
  htmlwidgets,
  magrittr,
  plotly,
  reshape2,
  scales,
  seriation,
  viridis,
  webshot,
}:

buildRPackage {
  pname = "heatmaply";
  version = "1.6.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/heatmaply_1.6.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/heatmaply/heatmaply_1.6.0.tar.gz"
    ];
    sha256 = "1dbgnv24ssa07qs91b8h157hx93lb62sq6i15fpq8rr8ik6f7wl6";
  };

  propagatedBuildInputs = [
    RColorBrewer
    assertthat
    colorspace
    dendextend
    egg
    ggplot2
    htmlwidgets
    magrittr
    plotly
    reshape2
    scales
    seriation
    viridis
    webshot
  ];

  meta = {
    description = "R package heatmaply";
    homepage = "https://cran.r-project.org/package=heatmaply";
  };
}
