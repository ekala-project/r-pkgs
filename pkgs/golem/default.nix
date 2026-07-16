{
  buildRPackage,
  fetchurl,
  attempt,
  config,
  here,
  htmltools,
  rlang,
  shiny,
  yaml,
}:

buildRPackage {
  pname = "golem";
  version = "0.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/golem_0.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/golem/golem_0.5.1.tar.gz"
    ];
    sha256 = "079zjzqvslv8k9pj52xwdhk6a9a8sg0p9wc6s457lz0ircan9ml6";
  };

  propagatedBuildInputs = [
    attempt
    config
    here
    htmltools
    rlang
    shiny
    yaml
  ];

  meta = {
    description = "R package golem";
    homepage = "https://cran.r-project.org/package=golem";
  };
}
