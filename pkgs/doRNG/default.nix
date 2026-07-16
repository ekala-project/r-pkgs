{
  buildRPackage,
  fetchurl,
  foreach,
  iterators,
  rngtools,
}:

buildRPackage {
  pname = "doRNG";
  version = "1.8.6.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/doRNG_1.8.6.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/doRNG/doRNG_1.8.6.3.tar.gz"
    ];
    sha256 = "0l8x4pzb8154l4kicc67xny7xjmvnf81g4j91zkf4a9mdy0b2pbs";
  };

  propagatedBuildInputs = [
    foreach
    iterators
    rngtools
  ];

  meta = {
    description = "R package doRNG";
    homepage = "https://cran.r-project.org/package=doRNG";
  };
}
