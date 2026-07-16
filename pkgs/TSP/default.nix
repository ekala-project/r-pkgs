{
  buildRPackage,
  fetchurl,
  foreach,
}:

buildRPackage {
  pname = "TSP";
  version = "1.2.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/TSP_1.2.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/TSP/TSP_1.2.7.tar.gz"
    ];
    sha256 = "0wsz2cdb8adsjxc1jwq5bpv0qbwlxjh9zy9ny7yjq7a1i2a9r4j9";
  };

  propagatedBuildInputs = [
    foreach
  ];

  meta = {
    description = "R package TSP";
    homepage = "https://cran.r-project.org/package=TSP";
  };
}
