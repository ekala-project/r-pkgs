{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "float";
  version = "0.3-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/float_0.3-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/float/float_0.3-3.tar.gz"
    ];
    sha256 = "1lbjafz23m38il8mjwns8mnprryafzd3am6nw9xz5ivsf18n7flp";
  };

  meta = {
    description = "R package float";
    homepage = "https://cran.r-project.org/package=float";
  };
}
