{
  buildRPackage,
  fetchurl,
  Hmisc,
  MASS,
  abind,
  car,
  colorspace,
  e1071,
  foreign,
  haven,
  lattice,
  nortest,
  readstata13,
  readxl,
  sandwich,
}:

buildRPackage {
  pname = "RcmdrMisc";
  version = "2.10.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcmdrMisc_2.10.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcmdrMisc/RcmdrMisc_2.10.1.tar.gz"
    ];
    sha256 = "0zsbkh3jrk18ba580aq3646mln17z0p5zfd6wzdr25fcy1am0fx8";
  };

  propagatedBuildInputs = [
    Hmisc
    MASS
    abind
    car
    colorspace
    e1071
    foreign
    haven
    lattice
    nortest
    readstata13
    readxl
    sandwich
  ];

  meta = {
    description = "R package RcmdrMisc";
    homepage = "https://cran.r-project.org/package=RcmdrMisc";
  };
}
