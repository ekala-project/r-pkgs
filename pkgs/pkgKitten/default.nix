{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "pkgKitten";
  version = "0.2.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pkgKitten_0.2.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pkgKitten/pkgKitten_0.2.4.tar.gz"
    ];
    sha256 = "1ff2qhrgmlbayz7k12p7qs42w38g7ipwnq97wiw830dyf7k7c3f7";
  };

  meta = {
    description = "R package pkgKitten";
    homepage = "https://cran.r-project.org/package=pkgKitten";
  };
}
