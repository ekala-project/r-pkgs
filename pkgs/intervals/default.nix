{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "intervals";
  version = "0.15.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/intervals_0.15.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/intervals/intervals_0.15.5.tar.gz"
    ];
    sha256 = "0p6fqw311fni5zaw4hy7zcsjrfmrvb03s4amj0szdr3yqki7p40i";
  };

  meta = {
    description = "R package intervals";
    homepage = "https://cran.r-project.org/package=intervals";
  };
}
