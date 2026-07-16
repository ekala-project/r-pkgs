{
  buildRPackage,
  fetchurl,
  crul,
  data_table,
  fauxpas,
  httr,
  jsonlite,
  tibble,
  xml2,
}:

buildRPackage {
  pname = "rorcid";
  version = "0.7.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rorcid_0.7.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rorcid/rorcid_0.7.0.tar.gz"
    ];
    sha256 = "1d0s5w48ksyj152nc4xq5w0nsimab8jc5fgspdwnbas2g8a52igr";
  };

  propagatedBuildInputs = [
    crul
    data_table
    fauxpas
    httr
    jsonlite
    tibble
    xml2
  ];

  meta = {
    description = "R package rorcid";
    homepage = "https://cran.r-project.org/package=rorcid";
  };
}
