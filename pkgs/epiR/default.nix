{
  buildRPackage,
  fetchurl,
  BiasedUrn,
  flextable,
  lubridate,
  officer,
  pander,
  sf,
  survival,
  zoo,
}:

buildRPackage {
  pname = "epiR";
  version = "2.0.93";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/epiR_2.0.93.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/epiR/epiR_2.0.93.tar.gz"
    ];
    sha256 = "1jc4wlil3wp14lmk49glx52bwspnn5bjfxzqnvm51s5akirg13kq";
  };

  propagatedBuildInputs = [
    BiasedUrn
    flextable
    lubridate
    officer
    pander
    sf
    survival
    zoo
  ];

  meta = {
    description = "R package epiR";
    homepage = "https://cran.r-project.org/package=epiR";
  };
}
