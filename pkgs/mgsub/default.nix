{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "mgsub";
  version = "2.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mgsub_2.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mgsub/mgsub_2.0.0.tar.gz"
    ];
    sha256 = "0nk9ail6xifaykpinkvwm6kxgwpmdf28qggjf8nkran8b7ipl8b5";
  };

  meta = {
    description = "R package mgsub";
    homepage = "https://cran.r-project.org/package=mgsub";
  };
}
