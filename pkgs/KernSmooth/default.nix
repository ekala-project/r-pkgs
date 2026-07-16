{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "KernSmooth";
  version = "2.23-26";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/KernSmooth_2.23-26.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/KernSmooth/KernSmooth_2.23-26.tar.gz"
    ];
    sha256 = "0gm79nfaypvpxg7j9jdi6k0w5dyi0fp14m32grwalzvz36nbsrdl";
  };

  meta = {
    description = "R package KernSmooth";
    homepage = "https://cran.r-project.org/package=KernSmooth";
  };
}
