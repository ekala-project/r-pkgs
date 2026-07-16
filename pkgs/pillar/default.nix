{
  buildRPackage,
  fetchurl,
  cli,
  glue,
  lifecycle,
  rlang,
  utf8,
  vctrs,
}:

buildRPackage {
  pname = "pillar";
  version = "1.11.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pillar_1.11.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pillar/pillar_1.11.1.tar.gz"
    ];
    sha256 = "0ls6kzaqniwnjk5akj08rrq3ilsipkhm5jybbn6mp6wc4daf2v05";
  };

  propagatedBuildInputs = [
    cli
    glue
    lifecycle
    rlang
    utf8
    vctrs
  ];

  meta = {
    description = "R package pillar";
    homepage = "https://cran.r-project.org/package=pillar";
  };
}
