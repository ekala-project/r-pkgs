{
  buildRPackage,
  fetchurl,
  R6,
  callr,
  cli,
  curl,
  desc,
  digest,
  pkgbuild,
  prettyunits,
  rprojroot,
  sessioninfo,
  withr,
  xopen,
}:

buildRPackage {
  pname = "rcmdcheck";
  version = "1.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rcmdcheck_1.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rcmdcheck/rcmdcheck_1.4.0.tar.gz"
    ];
    sha256 = "1l696byn3kjq2xvz4wxybzaj6ink85h4lz3a35v2132ba5yyzm5v";
  };

  propagatedBuildInputs = [
    R6
    callr
    cli
    curl
    desc
    digest
    pkgbuild
    prettyunits
    rprojroot
    sessioninfo
    withr
    xopen
  ];

  meta = {
    description = "R package rcmdcheck";
    homepage = "https://cran.r-project.org/package=rcmdcheck";
  };
}
