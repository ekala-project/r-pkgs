{
  buildRPackage,
  fetchurl,
  cli,
  digest,
  httr,
  jsonlite,
  rex,
  withr,
  yaml,
}:

buildRPackage {
  pname = "covr";
  version = "3.6.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/covr_3.6.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/covr/covr_3.6.5.tar.gz"
    ];
    sha256 = "11l9gvpaywlngkd4c7yzp8mi2fnq8sndkb0dbq8nh73m3n6aklr0";
  };

  propagatedBuildInputs = [
    cli
    digest
    httr
    jsonlite
    rex
    withr
    yaml
  ];

  meta = {
    description = "R package covr";
    homepage = "https://cran.r-project.org/package=covr";
  };
}
