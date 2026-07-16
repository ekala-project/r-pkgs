{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "swagger";
  version = "5.32.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/swagger_5.32.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/swagger/swagger_5.32.1.tar.gz"
    ];
    sha256 = "08l4f0cvpgavpfcjvzc5cxydml840n2qih5sb6gn028461jigf2a";
  };

  meta = {
    description = "R package swagger";
    homepage = "https://cran.r-project.org/package=swagger";
  };
}
