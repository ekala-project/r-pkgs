{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "ISwR";
  version = "2.0-12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ISwR_2.0-12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ISwR/ISwR_2.0-12.tar.gz"
    ];
    sha256 = "11bf4gakz4bjazjx4xrng1af8b9llv9k8bgdxz02ivsy95cwsip2";
  };

  meta = {
    description = "R package ISwR";
    homepage = "https://cran.r-project.org/package=ISwR";
  };
}
