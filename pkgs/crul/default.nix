{
  buildRPackage,
  fetchurl,
  R6,
  curl,
  httpcode,
  jsonlite,
  lifecycle,
  mime,
  rlang,
  urltools,
}:

buildRPackage {
  pname = "crul";
  version = "1.6.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/crul_1.6.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/crul/crul_1.6.0.tar.gz"
    ];
    sha256 = "02awbi4a5b71h2dfxqccsz99d596n588sn8dq797mbjs3gm7g3y5";
  };

  propagatedBuildInputs = [
    R6
    curl
    httpcode
    jsonlite
    lifecycle
    mime
    rlang
    urltools
  ];

  meta = {
    description = "R package crul";
    homepage = "https://cran.r-project.org/package=crul";
  };
}
