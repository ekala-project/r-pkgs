{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "logger";
  version = "0.4.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/logger_0.4.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/logger/logger_0.4.2.tar.gz"
    ];
    sha256 = "14ws5pc3pw1c698v8651bcgl7hfmrwx21vmfi23vrqlfa4l2vg8a";
  };

  meta = {
    description = "R package logger";
    homepage = "https://cran.r-project.org/package=logger";
  };
}
