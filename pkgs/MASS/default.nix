{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "MASS";
  version = "7.3-65";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/MASS_7.3-65.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/MASS/MASS_7.3-65.tar.gz"
    ];
    sha256 = "0bqp73z8qmxv6ws2k4agamvci1wzricpg2jakck5dkk4qgiz2zmh";
  };

  meta = {
    description = "R package MASS";
    homepage = "https://cran.r-project.org/package=MASS";
  };
}
