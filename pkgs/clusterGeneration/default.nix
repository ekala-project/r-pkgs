{
  buildRPackage,
  fetchurl,
  MASS,
}:

buildRPackage {
  pname = "clusterGeneration";
  version = "1.3.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/clusterGeneration_1.3.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/clusterGeneration/clusterGeneration_1.3.8.tar.gz"
    ];
    sha256 = "0w1sywv9cgl78wrsamh1zrig67r3grnyl27f036ipd1ab1b2510g";
  };

  propagatedBuildInputs = [
    MASS
  ];

  meta = {
    description = "R package clusterGeneration";
    homepage = "https://cran.r-project.org/package=clusterGeneration";
  };
}
