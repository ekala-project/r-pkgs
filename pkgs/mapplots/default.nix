{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "mapplots";
  version = "1.5.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mapplots_1.5.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mapplots/mapplots_1.5.3.tar.gz"
    ];
    sha256 = "104jv650is1hhcnq8xacigkvvlal62lknz6m7i4b9g3g9yp45bix";
  };

  meta = {
    description = "R package mapplots";
    homepage = "https://cran.r-project.org/package=mapplots";
  };
}
