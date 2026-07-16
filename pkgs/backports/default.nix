{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "backports";
  version = "1.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/backports_1.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/backports/backports_1.5.1.tar.gz"
    ];
    sha256 = "1bavfgag0szpimkd6yb9gkfp1s7hayp8vcg08dpliq977jzfmvmq";
  };

  meta = {
    description = "R package backports";
    homepage = "https://cran.r-project.org/package=backports";
  };
}
