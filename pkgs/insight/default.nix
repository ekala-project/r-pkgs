{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "insight";
  version = "1.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/insight_1.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/insight/insight_1.5.1.tar.gz"
    ];
    sha256 = "1gccd24cnhmjxam1457iqv586g7bvzm2pa20jkw62r6xg7v31drf";
  };

  meta = {
    description = "R package insight";
    homepage = "https://cran.r-project.org/package=insight";
  };
}
