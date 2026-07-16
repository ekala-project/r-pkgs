{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "plogr";
  version = "0.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/plogr_0.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/plogr/plogr_0.2.0.tar.gz"
    ];
    sha256 = "0a8dhzlna79ggyhfr0nncgh15a9n6r0dsz664pz0ah323wpblqqf";
  };

  meta = {
    description = "R package plogr";
    homepage = "https://cran.r-project.org/package=plogr";
  };
}
