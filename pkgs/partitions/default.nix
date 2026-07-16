{
  buildRPackage,
  fetchurl,
  Rdpack,
  gmp,
  polynom,
  sets,
}:

buildRPackage {
  pname = "partitions";
  version = "1.10-9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/partitions_1.10-9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/partitions/partitions_1.10-9.tar.gz"
    ];
    sha256 = "088wmm14lih7gs85rmcd2bggs8fdd8xj7m9q469hh9arcbnwsb8s";
  };

  propagatedBuildInputs = [
    Rdpack
    gmp
    polynom
    sets
  ];

  meta = {
    description = "R package partitions";
    homepage = "https://cran.r-project.org/package=partitions";
  };
}
