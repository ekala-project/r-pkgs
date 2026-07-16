{
  buildRPackage,
  fetchurl,
  R6,
  cli,
  curl,
  jsonlite,
  lifecycle,
  rlang,
  rprojroot,
  waldo,
  yaml,
}:

buildRPackage {
  pname = "vcr";
  version = "2.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/vcr_2.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/vcr/vcr_2.1.0.tar.gz"
    ];
    sha256 = "1r4g6fwrqf0p0sdl7nd62rxsxcd3pwxwhdspbyw21gfs7qf931sg";
  };

  propagatedBuildInputs = [
    R6
    cli
    curl
    jsonlite
    lifecycle
    rlang
    rprojroot
    waldo
    yaml
  ];

  meta = {
    description = "R package vcr";
    homepage = "https://cran.r-project.org/package=vcr";
  };
}
