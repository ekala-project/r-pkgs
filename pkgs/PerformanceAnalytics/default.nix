{
  buildRPackage,
  fetchurl,
  quadprog,
  xts,
  zoo,
}:

buildRPackage {
  pname = "PerformanceAnalytics";
  version = "2.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/PerformanceAnalytics_2.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/PerformanceAnalytics/PerformanceAnalytics_2.1.0.tar.gz"
    ];
    sha256 = "13fm2r2yv61lp3d8a3199ppjlc3qs12nncjjf0xcs61870wiv07w";
  };

  propagatedBuildInputs = [
    quadprog
    xts
    zoo
  ];

  meta = {
    description = "R package PerformanceAnalytics";
    homepage = "https://cran.r-project.org/package=PerformanceAnalytics";
  };
}
