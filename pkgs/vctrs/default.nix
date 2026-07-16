{
  buildRPackage,
  fetchurl,
  cli,
  glue,
  lifecycle,
  rlang,
}:

buildRPackage {
  pname = "vctrs";
  version = "0.7.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/vctrs_0.7.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/vctrs/vctrs_0.7.3.tar.gz"
    ];
    sha256 = "0ns3n0q8sqw6rci9ih5yi9f412wh8cx1l8mpvm6n5b067r0phl5l";
  };

  propagatedBuildInputs = [
    cli
    glue
    lifecycle
    rlang
  ];

  meta = {
    description = "R package vctrs";
    homepage = "https://cran.r-project.org/package=vctrs";
  };
}
