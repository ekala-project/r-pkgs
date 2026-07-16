{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "english";
  version = "1.2-6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/english_1.2-6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/english/english_1.2-6.tar.gz"
    ];
    sha256 = "1g3nmy5p8wj3ix1vp1qmkmy3dyqisrw0md8cjrx4klqkp0wqlms9";
  };

  meta = {
    description = "R package english";
    homepage = "https://cran.r-project.org/package=english";
  };
}
