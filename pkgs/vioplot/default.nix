{
  buildRPackage,
  fetchurl,
  sm,
  zoo,
}:

buildRPackage {
  pname = "vioplot";
  version = "0.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/vioplot_0.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/vioplot/vioplot_0.5.1.tar.gz"
    ];
    sha256 = "004g8xkdj0ghp365xgvwk5pf2ahrhxxq2f8482a73h59gwr11ff3";
  };

  propagatedBuildInputs = [
    sm
    zoo
  ];

  meta = {
    description = "R package vioplot";
    homepage = "https://cran.r-project.org/package=vioplot";
  };
}
