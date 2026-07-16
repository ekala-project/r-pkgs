{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  nlme,
  numDeriv,
  ucminf,
}:

buildRPackage {
  pname = "ordinal";
  version = "2025.12-29";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ordinal_2025.12-29.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ordinal/ordinal_2025.12-29.tar.gz"
    ];
    sha256 = "0by4mrrbc37v32drvd1pbxjbyzgfvk0g3xfyxl2x38n0vyapggxk";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    nlme
    numDeriv
    ucminf
  ];

  meta = {
    description = "R package ordinal";
    homepage = "https://cran.r-project.org/package=ordinal";
  };
}
