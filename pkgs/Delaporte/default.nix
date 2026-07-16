{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "Delaporte";
  version = "8.4.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Delaporte_8.4.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Delaporte/Delaporte_8.4.3.tar.gz"
    ];
    sha256 = "035ghxrpg4385f8lrkjzbgizfn0kmbbp0z0ax3xwy0r0b8730jdg";
  };

  meta = {
    description = "R package Delaporte";
    homepage = "https://cran.r-project.org/package=Delaporte";
  };
}
