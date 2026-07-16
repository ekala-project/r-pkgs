{
  buildRPackage,
  fetchurl,
  curl,
  xts,
  zoo,
}:

buildRPackage {
  pname = "TTR";
  version = "0.24.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/TTR_0.24.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/TTR/TTR_0.24.4.tar.gz"
    ];
    sha256 = "1102f4i776asqb281mq20ymhzhcp12gn9nr3rm0jzblv6nf2nww9";
  };

  propagatedBuildInputs = [
    curl
    xts
    zoo
  ];

  meta = {
    description = "R package TTR";
    homepage = "https://cran.r-project.org/package=TTR";
  };
}
