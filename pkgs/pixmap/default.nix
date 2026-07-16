{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "pixmap";
  version = "0.4-14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pixmap_0.4-14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pixmap/pixmap_0.4-14.tar.gz"
    ];
    sha256 = "17psp66dbw72glyhpy37h0xkifp1nv2f2ghfnmk9pf4m3y9hqw96";
  };

  meta = {
    description = "R package pixmap";
    homepage = "https://cran.r-project.org/package=pixmap";
  };
}
