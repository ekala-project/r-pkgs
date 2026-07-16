{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "sodium";
  version = "1.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sodium_1.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sodium/sodium_1.4.0.tar.gz"
    ];
    sha256 = "1k8sa1y27hxmi5mi35aw4pxk0qlwq3bm1qa9g40ggy81wkam6zck";
  };

  meta = {
    description = "R package sodium";
    homepage = "https://cran.r-project.org/package=sodium";
  };
}
