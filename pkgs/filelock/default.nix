{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "filelock";
  version = "1.0.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/filelock_1.0.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/filelock/filelock_1.0.3.tar.gz"
    ];
    sha256 = "0dqi0w92zq1f9542ma2nk5gkqzfmd4jlf34vysb4vv7mag20xk9d";
  };

  meta = {
    description = "R package filelock";
    homepage = "https://cran.r-project.org/package=filelock";
  };
}
