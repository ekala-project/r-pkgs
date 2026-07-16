{
  buildRPackage,
  fetchurl,
  libcoin,
  matrixStats,
  modeltools,
  multcomp,
  mvtnorm,
  survival,
}:

buildRPackage {
  pname = "coin";
  version = "1.4-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/coin_1.4-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/coin/coin_1.4-3.tar.gz"
    ];
    sha256 = "0x5rh002w4xgczbvnh7qfv3qv4iv7p6vdrwwyvchqmzgygdh4qwa";
  };

  propagatedBuildInputs = [
    libcoin
    matrixStats
    modeltools
    multcomp
    mvtnorm
    survival
  ];

  meta = {
    description = "R package coin";
    homepage = "https://cran.r-project.org/package=coin";
  };
}
