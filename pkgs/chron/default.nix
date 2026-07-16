{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "chron";
  version = "2.3-62";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/chron_2.3-62.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/chron/chron_2.3-62.tar.gz"
    ];
    sha256 = "18dyy4fn48d4m7azqbqpazhvy9mwl1k494zl7gxckfrx4ivjrb87";
  };

  meta = {
    description = "R package chron";
    homepage = "https://cran.r-project.org/package=chron";
  };
}
