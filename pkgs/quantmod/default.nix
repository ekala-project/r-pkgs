{
  buildRPackage,
  fetchurl,
  TTR,
  curl,
  jsonlite,
  xts,
  zoo,
}:

buildRPackage {
  pname = "quantmod";
  version = "0.4.28";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/quantmod_0.4.28.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/quantmod/quantmod_0.4.28.tar.gz"
    ];
    sha256 = "0f6kdsr2cz1fwklv62z6n78qhzh4xyxzhpvfy7n9dfnaw1d23m6i";
  };

  propagatedBuildInputs = [
    TTR
    curl
    jsonlite
    xts
    zoo
  ];

  meta = {
    description = "R package quantmod";
    homepage = "https://cran.r-project.org/package=quantmod";
  };
}
