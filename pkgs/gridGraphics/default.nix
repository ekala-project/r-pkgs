{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "gridGraphics";
  version = "0.5-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gridGraphics_0.5-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gridGraphics/gridGraphics_0.5-1.tar.gz"
    ];
    sha256 = "12yswy02j3h5wir7m5jnkhpjmb0sa4snn61vjd68i49qwsa6w219";
  };

  meta = {
    description = "R package gridGraphics";
    homepage = "https://cran.r-project.org/package=gridGraphics";
  };
}
