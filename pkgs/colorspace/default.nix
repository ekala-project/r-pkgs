{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "colorspace";
  version = "2.1-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/colorspace_2.1-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/colorspace/colorspace_2.1-2.tar.gz"
    ];
    sha256 = "0ghm9cjql5q1083immms790nxq1r0qrbhn9kzfvp4pgg6ffljwgc";
  };

  meta = {
    description = "R package colorspace";
    homepage = "https://cran.r-project.org/package=colorspace";
  };
}
