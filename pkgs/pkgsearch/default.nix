{
  buildRPackage,
  fetchurl,
  curl,
  jsonlite,
}:

buildRPackage {
  pname = "pkgsearch";
  version = "3.1.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pkgsearch_3.1.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pkgsearch/pkgsearch_3.1.5.tar.gz"
    ];
    sha256 = "15njf0xgjw7inb7lfk04bhz7ccpk05lsghyq33dlwz9xh4mm0iyi";
  };

  propagatedBuildInputs = [
    curl
    jsonlite
  ];

  meta = {
    description = "R package pkgsearch";
    homepage = "https://cran.r-project.org/package=pkgsearch";
  };
}
