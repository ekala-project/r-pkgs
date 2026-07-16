{
  buildRPackage,
  fetchurl,
  XML,
  jsonlite,
}:

buildRPackage {
  pname = "gridSVG";
  version = "1.7-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gridSVG_1.7-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gridSVG/gridSVG_1.7-7.tar.gz"
    ];
    sha256 = "0yj5vmiapz2gz5f30iv491hv2cq5bbgnqkwc5xsns5m0pnyijjw4";
  };

  propagatedBuildInputs = [
    XML
    jsonlite
  ];

  meta = {
    description = "R package gridSVG";
    homepage = "https://cran.r-project.org/package=gridSVG";
  };
}
