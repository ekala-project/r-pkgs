{
  buildRPackage,
  fetchurl,
  Matrix,
  nlme,
}:

buildRPackage {
  pname = "mgcv";
  version = "1.9-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mgcv_1.9-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mgcv/mgcv_1.9-4.tar.gz"
    ];
    sha256 = "0wlk128dwznnxzrcd1ym5mx45czjbfa1zb3clh39w9pvi9lmk0d9";
  };

  propagatedBuildInputs = [
    Matrix
    nlme
  ];

  meta = {
    description = "R package mgcv";
    homepage = "https://cran.r-project.org/package=mgcv";
  };
}
