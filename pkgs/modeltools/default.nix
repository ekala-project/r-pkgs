{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "modeltools";
  version = "0.2-24";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/modeltools_0.2-24.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/modeltools/modeltools_0.2-24.tar.gz"
    ];
    sha256 = "1bqyrslar36ja8gjdj3y5b82vqc2y5kbyw3vqgr2cmakgj4qbcpq";
  };

  meta = {
    description = "R package modeltools";
    homepage = "https://cran.r-project.org/package=modeltools";
  };
}
