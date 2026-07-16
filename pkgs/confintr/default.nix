{
  buildRPackage,
  fetchurl,
  boot,
}:

buildRPackage {
  pname = "confintr";
  version = "1.0.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/confintr_1.0.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/confintr/confintr_1.0.2.tar.gz"
    ];
    sha256 = "0gi9cnk2cd67vmywrkb19g6f9gr8k999kg0k03khad7lgqp4l43s";
  };

  propagatedBuildInputs = [
    boot
  ];

  meta = {
    description = "R package confintr";
    homepage = "https://cran.r-project.org/package=confintr";
  };
}
