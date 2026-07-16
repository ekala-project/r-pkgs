{
  buildRPackage,
  fetchurl,
  KMsurv,
  data_table,
  ggplot2,
  gridExtra,
  km_ci,
  knitr,
  survival,
  xtable,
  zoo,
}:

buildRPackage {
  pname = "survMisc";
  version = "0.5.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/survMisc_0.5.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/survMisc/survMisc_0.5.6.tar.gz"
    ];
    sha256 = "014cf7sfndmib9jmj0p3h67sr750k2pvw7m865zwdpvlqddi44fr";
  };

  propagatedBuildInputs = [
    KMsurv
    data_table
    ggplot2
    gridExtra
    km_ci
    knitr
    survival
    xtable
    zoo
  ];

  meta = {
    description = "R package survMisc";
    homepage = "https://cran.r-project.org/package=survMisc";
  };
}
