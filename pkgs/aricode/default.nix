{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  lifecycle,
}:

buildRPackage {
  pname = "aricode";
  version = "1.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/aricode_1.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/aricode/aricode_1.1.0.tar.gz"
    ];
    sha256 = "1x260wxs1yaccpdgncnky1188p3zahxhhwq0r4pvdv8lzm3dhs4s";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    lifecycle
  ];

  meta = {
    description = "R package aricode";
    homepage = "https://cran.r-project.org/package=aricode";
  };
}
