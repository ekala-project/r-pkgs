{
  buildRPackage,
  fetchurl,
  cli,
  ggplot2,
  glue,
  lifecycle,
  progress,
  rlang,
  scales,
  stringi,
  transformr,
  tweenr,
  vctrs,
}:

buildRPackage {
  pname = "gganimate";
  version = "1.0.11";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gganimate_1.0.11.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gganimate/gganimate_1.0.11.tar.gz"
    ];
    sha256 = "1jpamap57bij0gks24hfya25nczfc4bfhwfy1vis17aa5f3qqj4j";
  };

  propagatedBuildInputs = [
    cli
    ggplot2
    glue
    lifecycle
    progress
    rlang
    scales
    stringi
    transformr
    tweenr
    vctrs
  ];

  meta = {
    description = "R package gganimate";
    homepage = "https://cran.r-project.org/package=gganimate";
  };
}
