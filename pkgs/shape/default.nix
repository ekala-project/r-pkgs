{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "shape";
  version = "1.4.6.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shape_1.4.6.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shape/shape_1.4.6.1.tar.gz"
    ];
    sha256 = "1912znpk85j8c01s4m2f7x8rcqwski8b5n7g70cczmkzk47vvya3";
  };

  meta = {
    description = "R package shape";
    homepage = "https://cran.r-project.org/package=shape";
  };
}
