{
  buildRPackage,
  fetchurl,
  assertthat,
  crul,
  dplyr,
  httr,
  jsonlite,
  knitr,
  magrittr,
  rmarkdown,
}:

buildRPackage {
  pname = "gistr";
  version = "0.9.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gistr_0.9.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gistr/gistr_0.9.0.tar.gz"
    ];
    sha256 = "0ac9ikrdg6i8xvlma0gizvsdva46408lk7hvsgkqirhy2ljy02hp";
  };

  propagatedBuildInputs = [
    assertthat
    crul
    dplyr
    httr
    jsonlite
    knitr
    magrittr
    rmarkdown
  ];

  meta = {
    description = "R package gistr";
    homepage = "https://cran.r-project.org/package=gistr";
  };
}
