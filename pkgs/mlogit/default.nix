{
  buildRPackage,
  fetchurl,
  Formula,
  MASS,
  Rdpack,
  dfidx,
  lmtest,
  statmod,
  zoo,
}:

buildRPackage {
  pname = "mlogit";
  version = "1.1-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mlogit_1.1-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mlogit/mlogit_1.1-3.tar.gz"
    ];
    sha256 = "1zaqq181qcpgysn88wvxpm7ch1y1sgnm9mvzwl3asaff6f2z63gl";
  };

  propagatedBuildInputs = [
    Formula
    MASS
    Rdpack
    dfidx
    lmtest
    statmod
    zoo
  ];

  meta = {
    description = "R package mlogit";
    homepage = "https://cran.r-project.org/package=mlogit";
  };
}
