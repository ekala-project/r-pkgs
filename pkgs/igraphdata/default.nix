{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "igraphdata";
  version = "1.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/igraphdata_1.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/igraphdata/igraphdata_1.0.1.tar.gz"
    ];
    sha256 = "19w5npa4b8c054v94xlr7nmhhg2fhq4m8jbds86skp8zvipl4rkl";
  };

  meta = {
    description = "R package igraphdata";
    homepage = "https://cran.r-project.org/package=igraphdata";
  };
}
