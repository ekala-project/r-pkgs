{
  buildRPackage,
  fetchurl,
  bibtex,
  httr,
  jsonlite,
  lubridate,
  plyr,
  stringr,
  xml2,
}:

buildRPackage {
  pname = "RefManageR";
  version = "1.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RefManageR_1.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RefManageR/RefManageR_1.4.0.tar.gz"
    ];
    sha256 = "1kjd66gp2z9fzrnyr1bqfd9p58q0bin3a187z9b56hiqmdjhyc78";
  };

  propagatedBuildInputs = [
    bibtex
    httr
    jsonlite
    lubridate
    plyr
    stringr
    xml2
  ];

  meta = {
    description = "R package RefManageR";
    homepage = "https://cran.r-project.org/package=RefManageR";
  };
}
