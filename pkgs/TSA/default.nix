{
  buildRPackage,
  fetchurl,
  leaps,
  locfit,
  mgcv,
  tseries,
}:

buildRPackage {
  pname = "TSA";
  version = "1.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/TSA_1.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/TSA/TSA_1.3.1.tar.gz"
    ];
    sha256 = "14g58s2w7wma1fgcg3b51267b3676zrv0w8v4hpypxygz023d9bx";
  };

  propagatedBuildInputs = [
    leaps
    locfit
    mgcv
    tseries
  ];

  meta = {
    description = "R package TSA";
    homepage = "https://cran.r-project.org/package=TSA";
  };
}
