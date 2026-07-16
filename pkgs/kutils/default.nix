{
  buildRPackage,
  fetchurl,
  RUnit,
  foreign,
  openxlsx,
  plyr,
  xtable,
}:

buildRPackage {
  pname = "kutils";
  version = "1.73";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/kutils_1.73.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/kutils/kutils_1.73.tar.gz"
    ];
    sha256 = "0xqg1s48afpn2w0mlqfwz3sj1gdjf05cpxq4z9r01k1476lvh6c9";
  };

  propagatedBuildInputs = [
    RUnit
    foreign
    openxlsx
    plyr
    xtable
  ];

  meta = {
    description = "R package kutils";
    homepage = "https://cran.r-project.org/package=kutils";
  };
}
