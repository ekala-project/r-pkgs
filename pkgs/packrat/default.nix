{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "packrat";
  version = "0.9.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/packrat_0.9.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/packrat/packrat_0.9.3.tar.gz"
    ];
    sha256 = "1ml11wiy5gakvr96q8y69bwz9vq9s46iv9j9cmmx2vskbhmfcwyv";
  };

  meta = {
    description = "R package packrat";
    homepage = "https://cran.r-project.org/package=packrat";
  };
}
