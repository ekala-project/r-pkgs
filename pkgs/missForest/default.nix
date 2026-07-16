{
  buildRPackage,
  fetchurl,
  Rdpack,
  doRNG,
  foreach,
  iterators,
  itertools,
  randomForest,
  ranger,
}:

buildRPackage {
  pname = "missForest";
  version = "1.6.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/missForest_1.6.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/missForest/missForest_1.6.1.tar.gz"
    ];
    sha256 = "17vkw2fkca7ixf1jzzswwlkybav9ij6rhmkx6kikskv91k0i6nl9";
  };

  propagatedBuildInputs = [
    Rdpack
    doRNG
    foreach
    iterators
    itertools
    randomForest
    ranger
  ];

  meta = {
    description = "R package missForest";
    homepage = "https://cran.r-project.org/package=missForest";
  };
}
