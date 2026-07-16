{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "exactRankTests";
  version = "0.8-37";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/exactRankTests_0.8-37.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/exactRankTests/exactRankTests_0.8-37.tar.gz"
    ];
    sha256 = "1x5rwxf95847p27jf69ra6y9dqn07b099whihc3dy3s3psk95p55";
  };

  meta = {
    description = "R package exactRankTests";
    homepage = "https://cran.r-project.org/package=exactRankTests";
  };
}
