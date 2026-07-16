{
  buildRPackage,
  fetchurl,
  Deriv,
  MASS,
}:

buildRPackage {
  pname = "neuralnet";
  version = "1.44.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/neuralnet_1.44.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/neuralnet/neuralnet_1.44.2.tar.gz"
    ];
    sha256 = "09l808vgjh059a3f94vgsprfyp5c1hrbjn6i1cn34cxnbljwsrjz";
  };

  propagatedBuildInputs = [
    Deriv
    MASS
  ];

  meta = {
    description = "R package neuralnet";
    homepage = "https://cran.r-project.org/package=neuralnet";
  };
}
