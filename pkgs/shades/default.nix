{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "shades";
  version = "1.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shades_1.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shades/shades_1.4.0.tar.gz"
    ];
    sha256 = "1zg95sjhrfvbdlfc387g9p0vnb8nb6agdk1mb3wq3kwkm2da0bqj";
  };

  meta = {
    description = "R package shades";
    homepage = "https://cran.r-project.org/package=shades";
  };
}
