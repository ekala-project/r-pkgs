{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "extrafontdb";
  version = "1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/extrafontdb_1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/extrafontdb/extrafontdb_1.1.tar.gz"
    ];
    sha256 = "1vy3mfns4pcirngg3p93jh7yqlhd92y4n4n6vpiy33lpf90kkn41";
  };

  meta = {
    description = "R package extrafontdb";
    homepage = "https://cran.r-project.org/package=extrafontdb";
  };
}
