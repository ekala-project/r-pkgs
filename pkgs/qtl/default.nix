{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "qtl";
  version = "1.74";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/qtl_1.74.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/qtl/qtl_1.74.tar.gz"
    ];
    sha256 = "0gdvxknxr6a8zasv12wxaaxadlamlxpw46dj5fsh6786z37sdmbn";
  };

  meta = {
    description = "R package qtl";
    homepage = "https://cran.r-project.org/package=qtl";
  };
}
