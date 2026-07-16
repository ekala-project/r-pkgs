{
  buildRPackage,
  fetchurl,
  dplyr,
  ggplot2,
  gridExtra,
  scales,
  stringr,
  tibble,
  tidyr,
}:

buildRPackage {
  pname = "ggfortify";
  version = "0.4.19";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggfortify_0.4.19.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggfortify/ggfortify_0.4.19.tar.gz"
    ];
    sha256 = "1gbacgrxd7dj62i2k2xv005k4q23iljcrczp5a9yxrg4bgw8qmic";
  };

  propagatedBuildInputs = [
    dplyr
    ggplot2
    gridExtra
    scales
    stringr
    tibble
    tidyr
  ];

  meta = {
    description = "R package ggfortify";
    homepage = "https://cran.r-project.org/package=ggfortify";
  };
}
