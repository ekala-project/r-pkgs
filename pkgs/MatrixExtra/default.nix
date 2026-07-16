{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  RhpcBLASctl,
  float,
}:

buildRPackage {
  pname = "MatrixExtra";
  version = "0.1.15";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/MatrixExtra_0.1.15.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/MatrixExtra/MatrixExtra_0.1.15.tar.gz"
    ];
    sha256 = "0mp0si5923kfakwxcc08288zyx1nrrrpn9srcwax28vrz46l33z9";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    RhpcBLASctl
    float
  ];

  meta = {
    description = "R package MatrixExtra";
    homepage = "https://cran.r-project.org/package=MatrixExtra";
  };
}
