{
  buildRPackage,
  fetchurl,
  BBmisc,
  ParamHelpers,
  XML,
  backports,
  checkmate,
  data_table,
  ggplot2,
  parallelMap,
  stringi,
  survival,
}:

buildRPackage {
  pname = "mlr";
  version = "2.19.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mlr_2.19.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mlr/mlr_2.19.3.tar.gz"
    ];
    sha256 = "0i2w93xmpci6n1vqgxcik73ivpr6g65v4gjp2zikpnd01wb8bms9";
  };

  propagatedBuildInputs = [
    BBmisc
    ParamHelpers
    XML
    backports
    checkmate
    data_table
    ggplot2
    parallelMap
    stringi
    survival
  ];

  meta = {
    description = "R package mlr";
    homepage = "https://cran.r-project.org/package=mlr";
  };
}
