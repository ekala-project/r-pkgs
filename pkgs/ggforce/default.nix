{
  buildRPackage,
  fetchurl,
  MASS,
  cli,
  cpp11,
  ggplot2,
  gtable,
  lifecycle,
  polyclip,
  rlang,
  scales,
  systemfonts,
  tidyselect,
  tweenr,
  vctrs,
  withr,
}:

buildRPackage {
  pname = "ggforce";
  version = "0.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggforce_0.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggforce/ggforce_0.5.0.tar.gz"
    ];
    sha256 = "0lsxzfygwkldvchxp75dj8aw9mn4wxv6ci3s0jh799sdvhrymcs1";
  };

  propagatedBuildInputs = [
    MASS
    cli
    cpp11
    ggplot2
    gtable
    lifecycle
    polyclip
    rlang
    scales
    systemfonts
    tidyselect
    tweenr
    vctrs
    withr
  ];

  meta = {
    description = "R package ggforce";
    homepage = "https://cran.r-project.org/package=ggforce";
  };
}
