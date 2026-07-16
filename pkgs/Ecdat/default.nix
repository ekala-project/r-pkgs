{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "Ecdat";
  version = "0.4.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Ecdat_0.4.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Ecdat/Ecdat_0.4.7.tar.gz"
    ];
    sha256 = "1k0b449mj35awf3adhz4g595344syakbks1cqkq4zdwnc7gg8qfd";
  };

  meta = {
    description = "R package Ecdat";
    homepage = "https://cran.r-project.org/package=Ecdat";
  };
}
