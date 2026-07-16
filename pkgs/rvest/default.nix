{
  buildRPackage,
  fetchurl,
  cli,
  glue,
  httr,
  lifecycle,
  magrittr,
  rlang,
  selectr,
  tibble,
  xml2,
}:

buildRPackage {
  pname = "rvest";
  version = "1.0.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rvest_1.0.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rvest/rvest_1.0.5.tar.gz"
    ];
    sha256 = "005wadzdhxf6hgr8vl4nl0nfi2crj6467mhwbccqfy26njh38z0y";
  };

  propagatedBuildInputs = [
    cli
    glue
    httr
    lifecycle
    magrittr
    rlang
    selectr
    tibble
    xml2
  ];

  meta = {
    description = "R package rvest";
    homepage = "https://cran.r-project.org/package=rvest";
  };
}
