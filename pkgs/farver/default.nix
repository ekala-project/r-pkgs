{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "farver";
  version = "2.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/farver_2.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/farver/farver_2.1.2.tar.gz"
    ];
    sha256 = "09gy2wmm3jp2k3q6zbmjl6z55a974221q7vi6xhmdd5abnwj722j";
  };

  meta = {
    description = "R package farver";
    homepage = "https://cran.r-project.org/package=farver";
  };
}
