{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "Iso";
  version = "0.0-21";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Iso_0.0-21.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Iso/Iso_0.0-21.tar.gz"
    ];
    sha256 = "19lgwbfbca30mh3hhnarzab5cvnrwnr0pxam6fvfnadnqzhjm15n";
  };

  meta = {
    description = "R package Iso";
    homepage = "https://cran.r-project.org/package=Iso";
  };
}
