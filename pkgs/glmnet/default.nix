{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  RcppEigen,
  foreach,
  shape,
  survival,
}:

buildRPackage {
  pname = "glmnet";
  version = "5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/glmnet_5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/glmnet/glmnet_5.0.tar.gz"
    ];
    sha256 = "186jg7g2qhbxc8a4yb3vindjshh0cgd692qkrl1dai9s72k3vcph";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    RcppEigen
    foreach
    shape
    survival
  ];

  meta = {
    description = "R package glmnet";
    homepage = "https://cran.r-project.org/package=glmnet";
  };
}
