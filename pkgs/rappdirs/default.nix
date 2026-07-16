{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rappdirs";
  version = "0.3.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rappdirs_0.3.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rappdirs/rappdirs_0.3.4.tar.gz"
    ];
    sha256 = "0rmw39l4z046wwqna6i2h9kxcd0w5k7ad51zwshk46ivxz4yn813";
  };

  meta = {
    description = "R package rappdirs";
    homepage = "https://cran.r-project.org/package=rappdirs";
  };
}
