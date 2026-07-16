{
  buildRPackage,
  fetchurl,
  cli,
  ggplot2,
  glue,
  gridpattern,
  lifecycle,
  rlang,
  scales,
  vctrs,
}:

buildRPackage {
  pname = "ggpattern";
  version = "1.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggpattern_1.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggpattern/ggpattern_1.3.1.tar.gz"
    ];
    sha256 = "1mfr9nc8pcidim98rwvh9l623v2cb5bmshv0bv5wwag3azacb15b";
  };

  propagatedBuildInputs = [
    cli
    ggplot2
    glue
    gridpattern
    lifecycle
    rlang
    scales
    vctrs
  ];

  meta = {
    description = "R package ggpattern";
    homepage = "https://cran.r-project.org/package=ggpattern";
  };
}
