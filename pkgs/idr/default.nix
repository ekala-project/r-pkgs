{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "idr";
  version = "1.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/idr_1.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/idr/idr_1.3.tar.gz"
    ];
    sha256 = "1r6icxf0c0y9wvihwmkk5xqscr1qhacqk3w2076kjm2993f10fbb";
  };

  meta = {
    description = "R package idr";
    homepage = "https://cran.r-project.org/package=idr";
  };
}
