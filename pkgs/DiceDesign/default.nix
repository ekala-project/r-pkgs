{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "DiceDesign";
  version = "1.10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/DiceDesign_1.10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/DiceDesign/DiceDesign_1.10.tar.gz"
    ];
    sha256 = "0gf76f4jy8lbmw045q3ncs4ly07clh6gdfbmlnyk45wcgch3nm06";
  };

  meta = {
    description = "R package DiceDesign";
    homepage = "https://cran.r-project.org/package=DiceDesign";
  };
}
