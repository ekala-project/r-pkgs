{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "amap";
  version = "0.8-20";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/amap_0.8-20.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/amap/amap_0.8-20.tar.gz"
    ];
    sha256 = "0w65z1jqg6c9fp6knv9ps5f22f4jk94hbihr6l0hbmijiznbffwq";
  };

  meta = {
    description = "R package amap";
    homepage = "https://cran.r-project.org/package=amap";
  };
}
