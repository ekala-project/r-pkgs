{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "R_methodsS3";
  version = "1.8.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/R_methodsS3_1.8.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/R_methodsS3/R_methodsS3_1.8.2.tar.gz"
    ];
    sha256 = "0bkwj9c2cpgb0ibk9znh8qh4k1wzp3bkhaxyhf41xjflv9hmwbc2";
  };

  meta = {
    description = "R package R_methodsS3";
    homepage = "https://cran.r-project.org/package=R_methodsS3";
  };
}
