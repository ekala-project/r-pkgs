{
  buildRPackage,
  fetchurl,
  Rcpp,
  S7,
  ggplot2,
  rlang,
  scales,
  withr,
}:

buildRPackage {
  pname = "ggrepel";
  version = "0.9.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggrepel_0.9.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggrepel/ggrepel_0.9.8.tar.gz"
    ];
    sha256 = "09y04h3nf989k67cjnjkgpfbx8bfw57pkhfm4mrax78xw7sxy5q3";
  };

  propagatedBuildInputs = [
    Rcpp
    S7
    ggplot2
    rlang
    scales
    withr
  ];

  meta = {
    description = "R package ggrepel";
    homepage = "https://cran.r-project.org/package=ggrepel";
  };
}
