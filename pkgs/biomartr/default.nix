{
  buildRPackage,
  fetchurl,
  Biostrings,
  RCurl,
  R_utils,
  XML,
  biomaRt,
  curl,
  data_table,
  downloader,
  dplyr,
  fs,
  httr,
  jsonlite,
  philentropy,
  purrr,
  readr,
  stringr,
  tibble,
  withr,
}:

buildRPackage {
  pname = "biomartr";
  version = "1.0.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/biomartr_1.0.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/biomartr/biomartr_1.0.7.tar.gz"
    ];
    sha256 = "0ic6qbk2xmgrcc0xhxyhjafp1xbf2c5dpbqqrbkprrhynr8mq7cx";
  };

  propagatedBuildInputs = [
    Biostrings
    RCurl
    R_utils
    XML
    biomaRt
    curl
    data_table
    downloader
    dplyr
    fs
    httr
    jsonlite
    philentropy
    purrr
    readr
    stringr
    tibble
    withr
  ];

  meta = {
    description = "R package biomartr";
    homepage = "https://cran.r-project.org/package=biomartr";
  };
}
