{
  buildRPackage,
  fetchurl,
  MASS,
}:

buildRPackage {
  pname = "qcc";
  version = "2.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/qcc_2.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/qcc/qcc_2.7.tar.gz"
    ];
    sha256 = "0lc26w7p3d023lfr8v6v75m2vwqg9vi9pdipap19l4vbdq29l4zz";
  };

  propagatedBuildInputs = [
    MASS
  ];

  meta = {
    description = "R package qcc";
    homepage = "https://cran.r-project.org/package=qcc";
  };
}
