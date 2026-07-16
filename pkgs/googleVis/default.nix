{
  buildRPackage,
  fetchurl,
  jsonlite,
}:

buildRPackage {
  pname = "googleVis";
  version = "0.7.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/googleVis_0.7.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/googleVis/googleVis_0.7.3.tar.gz"
    ];
    sha256 = "0swcf2vl3mvp2bsd7nra917pajyh27j2k3vmmrb6n8g55mazyisn";
  };

  propagatedBuildInputs = [
    jsonlite
  ];

  meta = {
    description = "R package googleVis";
    homepage = "https://cran.r-project.org/package=googleVis";
  };
}
