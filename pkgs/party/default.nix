{
  buildRPackage,
  fetchurl,
  coin,
  modeltools,
  mvtnorm,
  sandwich,
  strucchange,
  survival,
  zoo,
}:

buildRPackage {
  pname = "party";
  version = "1.3-20";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/party_1.3-20.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/party/party_1.3-20.tar.gz"
    ];
    sha256 = "0mw4lig8xcfakrgc1vyh20p1lwr4lvwp4liaw9d3xwgzn9fi6cz9";
  };

  propagatedBuildInputs = [
    coin
    modeltools
    mvtnorm
    sandwich
    strucchange
    survival
    zoo
  ];

  meta = {
    description = "R package party";
    homepage = "https://cran.r-project.org/package=party";
  };
}
