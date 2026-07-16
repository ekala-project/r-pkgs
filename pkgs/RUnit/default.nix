{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "RUnit";
  version = "0.4.33.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RUnit_0.4.33.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RUnit/RUnit_0.4.33.1.tar.gz"
    ];
    sha256 = "01bz34hf4j93mldwharwdc691db324zbl09zg1qnwjnhm0xzla45";
  };

  meta = {
    description = "R package RUnit";
    homepage = "https://cran.r-project.org/package=RUnit";
  };
}
