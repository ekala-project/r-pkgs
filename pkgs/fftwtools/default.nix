{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "fftwtools";
  version = "0.9-11";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fftwtools_0.9-11.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fftwtools/fftwtools_0.9-11.tar.gz"
    ];
    sha256 = "0zrchp4l0jdbir2gibjf00x225y9giqk80zvqmr2yyvc12lwkw7i";
  };

  meta = {
    description = "R package fftwtools";
    homepage = "https://cran.r-project.org/package=fftwtools";
  };
}
