{
  buildRPackage,
  fetchurl,
  base64enc,
  cachem,
  fastmap,
  htmltools,
  jquerylib,
  jsonlite,
  lifecycle,
  memoise,
  mime,
  rlang,
  sass,
}:

buildRPackage {
  pname = "bslib";
  version = "0.11.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bslib_0.11.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bslib/bslib_0.11.0.tar.gz"
    ];
    sha256 = "1frh4cf900j695dh3rc85ms3k3d459gpxssmplwlr0nbb62lgpz4";
  };

  propagatedBuildInputs = [
    base64enc
    cachem
    fastmap
    htmltools
    jquerylib
    jsonlite
    lifecycle
    memoise
    mime
    rlang
    sass
  ];

  meta = {
    description = "R package bslib";
    homepage = "https://cran.r-project.org/package=bslib";
  };
}
