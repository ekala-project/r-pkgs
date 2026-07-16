{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "ellipse";
  version = "0.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ellipse_0.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ellipse/ellipse_0.5.0.tar.gz"
    ];
    sha256 = "1wy25kw3055zxzidzzkif6c8bmch73qkv2ri4i1w0b6ffcwmbs6d";
  };

  meta = {
    description = "R package ellipse";
    homepage = "https://cran.r-project.org/package=ellipse";
  };
}
