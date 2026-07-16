{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  MatrixModels,
  SparseM,
  survival,
}:

buildRPackage {
  pname = "quantreg";
  version = "6.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/quantreg_6.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/quantreg/quantreg_6.1.tar.gz"
    ];
    sha256 = "16hnw2kynr4s75iybzgf17z95wgyx8fkk4sv54wmz895mg2r48pl";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    MatrixModels
    SparseM
    survival
  ];

  meta = {
    description = "R package quantreg";
    homepage = "https://cran.r-project.org/package=quantreg";
  };
}
