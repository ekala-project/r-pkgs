{
  buildRPackage,
  fetchurl,
  checkmate,
  registry,
  slam,
}:

buildRPackage {
  pname = "ROI";
  version = "1.0-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ROI_1.0-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ROI/ROI_1.0-2.tar.gz"
    ];
    sha256 = "0z8r40pxj5gd20scrkzrnqx0gfvynnalg4kg85nrnld039qlp21y";
  };

  propagatedBuildInputs = [
    checkmate
    registry
    slam
  ];

  meta = {
    description = "R package ROI";
    homepage = "https://cran.r-project.org/package=ROI";
  };
}
