{
  buildRPackage,
  fetchurl,
  sandwich,
  zoo,
}:

buildRPackage {
  pname = "strucchange";
  version = "1.5-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/strucchange_1.5-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/strucchange/strucchange_1.5-4.tar.gz"
    ];
    sha256 = "066pbldj1a0hdhrzszqp8ad71krj7w5dbqxmgp8kk5d76r6wd6vq";
  };

  propagatedBuildInputs = [
    sandwich
    zoo
  ];

  meta = {
    description = "R package strucchange";
    homepage = "https://cran.r-project.org/package=strucchange";
  };
}
