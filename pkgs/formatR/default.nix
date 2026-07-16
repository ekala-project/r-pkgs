{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "formatR";
  version = "1.14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/formatR_1.14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/formatR/formatR_1.14.tar.gz"
    ];
    sha256 = "0k271w4bhlj7r9igkiyfw7d7bg30s2mn4sr4alb8f9w57wnapfjf";
  };

  meta = {
    description = "R package formatR";
    homepage = "https://cran.r-project.org/package=formatR";
  };
}
