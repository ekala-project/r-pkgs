{
  buildRPackage,
  fetchurl,
  MASS,
  ca,
  colorspace,
  dplyr,
  gnm,
  gt,
  htmlwidgets,
  igraph,
  knitr,
  scales,
  vcd,
  webshot2,
}:

buildRPackage {
  pname = "vcdExtra";
  version = "0.9.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/vcdExtra_0.9.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/vcdExtra/vcdExtra_0.9.3.tar.gz"
    ];
    sha256 = "07774z7cps33x1ggg5lpq6hakalz8dpg2d632hp4dbj61zgi0wcy";
  };

  propagatedBuildInputs = [
    MASS
    ca
    colorspace
    dplyr
    gnm
    gt
    htmlwidgets
    igraph
    knitr
    scales
    vcd
    webshot2
  ];

  meta = {
    description = "R package vcdExtra";
    homepage = "https://cran.r-project.org/package=vcdExtra";
  };
}
