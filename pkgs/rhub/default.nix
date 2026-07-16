{
  buildRPackage,
  fetchurl,
  R6,
  callr,
  cli,
  curl,
  desc,
  gert,
  gitcreds,
  glue,
  jsonlite,
  pkgbuild,
  processx,
  rappdirs,
  rematch,
  rprojroot,
  whoami,
}:

buildRPackage {
  pname = "rhub";
  version = "2.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rhub_2.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rhub/rhub_2.0.1.tar.gz"
    ];
    sha256 = "0fc291gy7zpx6mcpfw5sjjmx4y7lxhzh6n61mwwmz96nn4qb2m1q";
  };

  propagatedBuildInputs = [
    R6
    callr
    cli
    curl
    desc
    gert
    gitcreds
    glue
    jsonlite
    pkgbuild
    processx
    rappdirs
    rematch
    rprojroot
    whoami
  ];

  meta = {
    description = "R package rhub";
    homepage = "https://cran.r-project.org/package=rhub";
  };
}
