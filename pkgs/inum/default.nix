{
  buildRPackage,
  fetchurl,
  libcoin,
}:

buildRPackage {
  pname = "inum";
  version = "1.0-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/inum_1.0-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/inum/inum_1.0-5.tar.gz"
    ];
    sha256 = "1gbbsffbzxjrgi8yw21fl35fsbx7ns8hdrhja50byfqvnghbg5p6";
  };

  propagatedBuildInputs = [
    libcoin
  ];

  meta = {
    description = "R package inum";
    homepage = "https://cran.r-project.org/package=inum";
  };
}
