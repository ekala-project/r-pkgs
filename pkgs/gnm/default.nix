{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  nnet,
  qvcalc,
  relimp,
}:

buildRPackage {
  pname = "gnm";
  version = "1.1-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gnm_1.1-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gnm/gnm_1.1-5.tar.gz"
    ];
    sha256 = "0igqzm6sdmk1wqc3rdy6pc3ba9n7bs76j5nql5qa1y2wg3rlxna4";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    nnet
    qvcalc
    relimp
  ];

  meta = {
    description = "R package gnm";
    homepage = "https://cran.r-project.org/package=gnm";
  };
}
