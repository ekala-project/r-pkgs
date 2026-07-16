{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rFerns";
  version = "6.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rFerns_6.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rFerns/rFerns_6.0.0.tar.gz"
    ];
    sha256 = "1j8bg02zgnkj7injgxr0fxm0qfffcy3p35kjryrap13x53b6jpnm";
  };

  meta = {
    description = "R package rFerns";
    homepage = "https://cran.r-project.org/package=rFerns";
  };
}
