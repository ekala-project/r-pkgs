{
  buildRPackage,
  fetchurl,
  Matrix,
  coda,
}:

buildRPackage {
  pname = "statnet_common";
  version = "4.13.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/statnet_common_4.13.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/statnet_common/statnet_common_4.13.0.tar.gz"
    ];
    sha256 = "0gyk3nawfc1a6a0068rlcslrmv7d98izlpxghkc8av10vax7qy36";
  };

  propagatedBuildInputs = [
    Matrix
    coda
  ];

  meta = {
    description = "R package statnet_common";
    homepage = "https://cran.r-project.org/package=statnet_common";
  };
}
