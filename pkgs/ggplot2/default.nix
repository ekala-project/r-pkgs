{
  buildRPackage,
  fetchurl,
  S7,
  cli,
  gtable,
  isoband,
  lifecycle,
  rlang,
  scales,
  vctrs,
  withr,
}:

buildRPackage {
  pname = "ggplot2";
  version = "4.0.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggplot2_4.0.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggplot2/ggplot2_4.0.3.tar.gz"
    ];
    sha256 = "199zlyfwy8q9bjhpgjiw35p7hzz8i04lf2dimli64av4c6yj80k9";
  };

  propagatedBuildInputs = [
    S7
    cli
    gtable
    isoband
    lifecycle
    rlang
    scales
    vctrs
    withr
  ];

  meta = {
    description = "R package ggplot2";
    homepage = "https://cran.r-project.org/package=ggplot2";
  };
}
