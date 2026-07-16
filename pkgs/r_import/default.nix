{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "r_import";
  version = "1.3.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/r_import_1.3.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/r_import/r_import_1.3.4.tar.gz"
    ];
    sha256 = "0i87mlhjig7hzk8fgk3yij1shfwbwa4r05jagibqlv7rabls260g";
  };

  meta = {
    description = "R package r_import";
    homepage = "https://cran.r-project.org/package=r_import";
  };
}
