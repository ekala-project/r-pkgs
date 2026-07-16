{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "glasso";
  version = "1.11";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/glasso_1.11.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/glasso/glasso_1.11.tar.gz"
    ];
    sha256 = "02p3612rpydk195n2qr77lp1j2w8zsw1ckkk98c8angm4r5q8dsc";
  };

  meta = {
    description = "R package glasso";
    homepage = "https://cran.r-project.org/package=glasso";
  };
}
