{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "bit";
  version = "4.6.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bit_4.6.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bit/bit_4.6.0.tar.gz"
    ];
    sha256 = "026y8la4g4nyflh4w8zvlwqwdh4m8c3n1ssyd56p4yscs32j3zj8";
  };

  meta = {
    description = "R package bit";
    homepage = "https://cran.r-project.org/package=bit";
  };
}
