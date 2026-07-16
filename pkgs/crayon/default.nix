{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "crayon";
  version = "1.5.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/crayon_1.5.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/crayon/crayon_1.5.3.tar.gz"
    ];
    sha256 = "0sfsx4k77fsx1dx9c186dg273psrr3awz4ivfvmbbvs1amla0x1y";
  };

  meta = {
    description = "R package crayon";
    homepage = "https://cran.r-project.org/package=crayon";
  };
}
