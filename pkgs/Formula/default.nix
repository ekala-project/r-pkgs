{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "Formula";
  version = "1.2-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Formula_1.2-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Formula/Formula_1.2-5.tar.gz"
    ];
    sha256 = "0p1m9pqcn8ns0sn67js53677q8gwxgbl4bymcn5y2r0dc1s4c9c6";
  };

  meta = {
    description = "R package Formula";
    homepage = "https://cran.r-project.org/package=Formula";
  };
}
