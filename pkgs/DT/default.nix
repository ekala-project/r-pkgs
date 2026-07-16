{
  buildRPackage,
  fetchurl,
  crosstalk,
  htmltools,
  htmlwidgets,
  jquerylib,
  jsonlite,
  magrittr,
  promises,
}:

buildRPackage {
  pname = "DT";
  version = "0.34.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/DT_0.34.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/DT/DT_0.34.0.tar.gz"
    ];
    sha256 = "1wpi949agfi2m05axrqjm2b5yp626g8v3bbjy19mpxkay9g04ql8";
  };

  propagatedBuildInputs = [
    crosstalk
    htmltools
    htmlwidgets
    jquerylib
    jsonlite
    magrittr
    promises
  ];

  meta = {
    description = "R package DT";
    homepage = "https://cran.r-project.org/package=DT";
  };
}
