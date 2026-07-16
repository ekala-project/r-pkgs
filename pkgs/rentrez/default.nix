{
  buildRPackage,
  fetchurl,
  XML,
  httr,
  jsonlite,
}:

buildRPackage {
  pname = "rentrez";
  version = "1.2.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rentrez_1.2.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rentrez/rentrez_1.2.4.tar.gz"
    ];
    sha256 = "10716g98qb1718q5bb01pjdlh7m1lplxc3mahrg8n4k4y9lsbp92";
  };

  propagatedBuildInputs = [
    XML
    httr
    jsonlite
  ];

  meta = {
    description = "R package rentrez";
    homepage = "https://cran.r-project.org/package=rentrez";
  };
}
