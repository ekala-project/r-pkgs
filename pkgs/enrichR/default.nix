{
  buildRPackage,
  fetchurl,
  WriteXLS,
  curl,
  ggplot2,
  httr,
  rjson,
}:

buildRPackage {
  pname = "enrichR";
  version = "3.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/enrichR_3.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/enrichR/enrichR_3.4.tar.gz"
    ];
    sha256 = "0gl4731z496nci71kbigagqi35afv43fqs1vnrmzwnn0q8jndcan";
  };

  propagatedBuildInputs = [
    WriteXLS
    curl
    ggplot2
    httr
    rjson
  ];

  meta = {
    description = "R package enrichR";
    homepage = "https://cran.r-project.org/package=enrichR";
  };
}
