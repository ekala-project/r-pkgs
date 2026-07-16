{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "TeachingDemos";
  version = "2.13";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/TeachingDemos_2.13.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/TeachingDemos/TeachingDemos_2.13.tar.gz"
    ];
    sha256 = "1k7vq3l8brqikapv42ajcczsmkly9sf2y5fqpviwv86inx9bj3pq";
  };

  meta = {
    description = "R package TeachingDemos";
    homepage = "https://cran.r-project.org/package=TeachingDemos";
  };
}
