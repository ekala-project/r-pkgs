{
  buildRPackage,
  fetchurl,
  rstudioapi,
  svGUI,
}:

buildRPackage {
  pname = "svDialogs";
  version = "1.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/svDialogs_1.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/svDialogs/svDialogs_1.1.2.tar.gz"
    ];
    sha256 = "1p8n7wrcfjkwp2vr2l1x1r774v840wx4yzmidv7rcz1wzvdpczl1";
  };

  propagatedBuildInputs = [
    rstudioapi
    svGUI
  ];

  meta = {
    description = "R package svDialogs";
    homepage = "https://cran.r-project.org/package=svDialogs";
  };
}
