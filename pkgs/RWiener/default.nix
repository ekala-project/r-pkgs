{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "RWiener";
  version = "1.3-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RWiener_1.3-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RWiener/RWiener_1.3-3.tar.gz"
    ];
    sha256 = "0afrgflyfjv4jqm04had74zz4cs934zwvyxaan1r4qpg383kibpq";
  };

  meta = {
    description = "R package RWiener";
    homepage = "https://cran.r-project.org/package=RWiener";
  };
}
