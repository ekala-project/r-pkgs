{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "maps";
  version = "3.4.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/maps_3.4.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/maps/maps_3.4.3.tar.gz"
    ];
    sha256 = "1f48spc254c0gvbyi57gxx5i5kyvszhgp29zvc6jhh806d2ljv9v";
  };

  meta = {
    description = "R package maps";
    homepage = "https://cran.r-project.org/package=maps";
  };
}
