{
  buildRPackage,
  fetchurl,
  cli,
  ggplot2,
  plyr,
  rlang,
  withr,
}:

buildRPackage {
  pname = "ggstance";
  version = "0.3.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggstance_0.3.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggstance/ggstance_0.3.7.tar.gz"
    ];
    sha256 = "0v25si348qdp68887yx4d652rsz8w5lfabwaq1nvglrhs6s4f9js";
  };

  propagatedBuildInputs = [
    cli
    ggplot2
    plyr
    rlang
    withr
  ];

  meta = {
    description = "R package ggstance";
    homepage = "https://cran.r-project.org/package=ggstance";
  };
}
