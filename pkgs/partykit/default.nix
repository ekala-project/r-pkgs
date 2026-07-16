{
  buildRPackage,
  fetchurl,
  Formula,
  inum,
  libcoin,
  mvtnorm,
  rpart,
  survival,
}:

buildRPackage {
  pname = "partykit";
  version = "1.2-27";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/partykit_1.2-27.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/partykit/partykit_1.2-27.tar.gz"
    ];
    sha256 = "11r1dr2gb05xsmmyx1krga3vfi0xvg3zixvix404ba9p2zc1gxwb";
  };

  propagatedBuildInputs = [
    Formula
    inum
    libcoin
    mvtnorm
    rpart
    survival
  ];

  meta = {
    description = "R package partykit";
    homepage = "https://cran.r-project.org/package=partykit";
  };
}
