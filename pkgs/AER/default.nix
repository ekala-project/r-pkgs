{
  buildRPackage,
  fetchurl,
  Formula,
  car,
  lmtest,
  sandwich,
  survival,
  zoo,
}:

buildRPackage {
  pname = "AER";
  version = "1.2-16";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/AER_1.2-16.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/AER/AER_1.2-16.tar.gz"
    ];
    sha256 = "113h1vmzm4b4ghmsvgm2ip76mq4s57hdhb1sxzapdkpnggc7b11z";
  };

  propagatedBuildInputs = [
    Formula
    car
    lmtest
    sandwich
    survival
    zoo
  ];

  meta = {
    description = "R package AER";
    homepage = "https://cran.r-project.org/package=AER";
  };
}
