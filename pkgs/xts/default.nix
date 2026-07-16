{
  buildRPackage,
  fetchurl,
  zoo,
}:

buildRPackage {
  pname = "xts";
  version = "0.14.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/xts_0.14.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/xts/xts_0.14.2.tar.gz"
    ];
    sha256 = "0vyw284fwb17ih25swpvbd419gxr6swnrbsh70b68imnna28bdnl";
  };

  propagatedBuildInputs = [
    zoo
  ];

  meta = {
    description = "R package xts";
    homepage = "https://cran.r-project.org/package=xts";
  };
}
