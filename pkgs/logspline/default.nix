{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "logspline";
  version = "2.1.22";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/logspline_2.1.22.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/logspline/logspline_2.1.22.tar.gz"
    ];
    sha256 = "00pdcfj1hmafxzs7gqw3n072p6pxp9hvsdm062n0xkiby6igffkp";
  };

  meta = {
    description = "R package logspline";
    homepage = "https://cran.r-project.org/package=logspline";
  };
}
