{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "parallelly";
  version = "1.47.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/parallelly_1.47.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/parallelly/parallelly_1.47.0.tar.gz"
    ];
    sha256 = "1i4pfy3y7dhzywnmx270cl442k2xlpd8ix127c6fgpvibi8z9h48";
  };

  meta = {
    description = "R package parallelly";
    homepage = "https://cran.r-project.org/package=parallelly";
  };
}
