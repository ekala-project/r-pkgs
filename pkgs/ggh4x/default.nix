{
  buildRPackage,
  fetchurl,
  S7,
  cli,
  ggplot2,
  gtable,
  lifecycle,
  rlang,
  scales,
  vctrs,
}:

buildRPackage {
  pname = "ggh4x";
  version = "0.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggh4x_0.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggh4x/ggh4x_0.3.1.tar.gz"
    ];
    sha256 = "11szf1jwc23bc3615fwk89vc8rwhwhl6515d49n1423mxqqc1z6q";
  };

  propagatedBuildInputs = [
    S7
    cli
    ggplot2
    gtable
    lifecycle
    rlang
    scales
    vctrs
  ];

  meta = {
    description = "R package ggh4x";
    homepage = "https://cran.r-project.org/package=ggh4x";
  };
}
