{
  buildRPackage,
  fetchurl,
  ggplot2,
  gridSVG,
  plyr,
  rlang,
  shiny,
}:

buildRPackage {
  pname = "plotROC";
  version = "2.3.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/plotROC_2.3.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/plotROC/plotROC_2.3.3.tar.gz"
    ];
    sha256 = "1pmcvb62lxqx5rz3dw260f7c0ca3zw1p7vfm0k916cpwgij65iwb";
  };

  propagatedBuildInputs = [
    ggplot2
    gridSVG
    plyr
    rlang
    shiny
  ];

  meta = {
    description = "R package plotROC";
    homepage = "https://cran.r-project.org/package=plotROC";
  };
}
