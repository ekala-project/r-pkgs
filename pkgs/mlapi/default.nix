{
  buildRPackage,
  fetchurl,
  Matrix,
  R6,
}:

buildRPackage {
  pname = "mlapi";
  version = "0.1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mlapi_0.1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mlapi/mlapi_0.1.1.tar.gz"
    ];
    sha256 = "1qyiii6x9b89i4pd4yi2zd23aabpmnpj18gqi5va0zy0l8r7kknr";
  };

  propagatedBuildInputs = [
    Matrix
    R6
  ];

  meta = {
    description = "R package mlapi";
    homepage = "https://cran.r-project.org/package=mlapi";
  };
}
