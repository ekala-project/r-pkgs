{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "relimp";
  version = "1.0-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/relimp_1.0-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/relimp/relimp_1.0-5.tar.gz"
    ];
    sha256 = "0ydn82g8xdqzhf34187080bbpcpw1zdjbj2i3dv1d6d35vvprb5c";
  };

  meta = {
    description = "R package relimp";
    homepage = "https://cran.r-project.org/package=relimp";
  };
}
