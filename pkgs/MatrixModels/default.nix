{
  buildRPackage,
  fetchurl,
  Matrix,
}:

buildRPackage {
  pname = "MatrixModels";
  version = "0.5-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/MatrixModels_0.5-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/MatrixModels/MatrixModels_0.5-4.tar.gz"
    ];
    sha256 = "0g7k3kag492rbacnm6d11q6xxiy6h9j88ihfg5vylgsslghgjypm";
  };

  propagatedBuildInputs = [
    Matrix
  ];

  meta = {
    description = "R package MatrixModels";
    homepage = "https://cran.r-project.org/package=MatrixModels";
  };
}
