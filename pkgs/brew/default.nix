{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "brew";
  version = "1.0-10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/brew_1.0-10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/brew/brew_1.0-10.tar.gz"
    ];
    sha256 = "13x3vnrhfcvr479r4dya61a5vcky2gb4kv2xbivy0ah39qrzg0a1";
  };

  meta = {
    description = "R package brew";
    homepage = "https://cran.r-project.org/package=brew";
  };
}
