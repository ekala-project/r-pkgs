{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "tiff";
  version = "0.1-12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tiff_0.1-12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tiff/tiff_0.1-12.tar.gz"
    ];
    sha256 = "0p41irri0nxg9mm06g8jp5zqssv80g5zg0iifrr7ancjkxqww46z";
  };

  meta = {
    description = "R package tiff";
    homepage = "https://cran.r-project.org/package=tiff";
  };
}
