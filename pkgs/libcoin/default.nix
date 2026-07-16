{
  buildRPackage,
  fetchurl,
  mvtnorm,
}:

buildRPackage {
  pname = "libcoin";
  version = "1.0-12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/libcoin_1.0-12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/libcoin/libcoin_1.0-12.tar.gz"
    ];
    sha256 = "0i8rxq1c4d6pz857nfhcniqpr2gsdvxchg63q3klj5lv7iyh32d1";
  };

  propagatedBuildInputs = [
    mvtnorm
  ];

  meta = {
    description = "R package libcoin";
    homepage = "https://cran.r-project.org/package=libcoin";
  };
}
