{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "sets";
  version = "1.0-25";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sets_1.0-25.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sets/sets_1.0-25.tar.gz"
    ];
    sha256 = "1x14q29jjmrs5ldbjc7pxp5pr52j3dw6zr9k5qvz4ycniwhnk92w";
  };

  meta = {
    description = "R package sets";
    homepage = "https://cran.r-project.org/package=sets";
  };
}
