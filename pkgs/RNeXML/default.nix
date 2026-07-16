{
  buildRPackage,
  fetchurl,
  XML,
  ape,
  dplyr,
  httr,
  plyr,
  reshape2,
  rlang,
  stringi,
  stringr,
  tidyr,
  uuid,
  xml2,
}:

buildRPackage {
  pname = "RNeXML";
  version = "2.4.11";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RNeXML_2.4.11.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RNeXML/RNeXML_2.4.11.tar.gz"
    ];
    sha256 = "0ipxdhfzccpqmnfrqdy8bizm80k2chhdlzg3p0dl05p8n35i6s94";
  };

  propagatedBuildInputs = [
    XML
    ape
    dplyr
    httr
    plyr
    reshape2
    rlang
    stringi
    stringr
    tidyr
    uuid
    xml2
  ];

  meta = {
    description = "R package RNeXML";
    homepage = "https://cran.r-project.org/package=RNeXML";
  };
}
