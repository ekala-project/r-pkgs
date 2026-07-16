{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "snow";
  version = "0.4-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/snow_0.4-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/snow/snow_0.4-4.tar.gz"
    ];
    sha256 = "1j8kvf3imxijsqkdjz4i9s7qggfxqrpas46y5wz6za92y937yn44";
  };

  meta = {
    description = "R package snow";
    homepage = "https://cran.r-project.org/package=snow";
  };
}
