{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "digest";
  version = "0.6.39";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/digest_0.6.39.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/digest/digest_0.6.39.tar.gz"
    ];
    sha256 = "1j8k1b4pkygdxbyz4dwlilkm7gbblnymirzs71qhf5rdkfs4iw4b";
  };

  meta = {
    description = "R package digest";
    homepage = "https://cran.r-project.org/package=digest";
  };
}
