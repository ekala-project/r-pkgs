{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "dotCall64";
  version = "1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dotCall64_1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dotCall64/dotCall64_1.2.tar.gz"
    ];
    sha256 = "1ah88h77lc9zb68b3xyk97xpid2pilkywk25m68x3m1h3xbspmma";
  };

  meta = {
    description = "R package dotCall64";
    homepage = "https://cran.r-project.org/package=dotCall64";
  };
}
