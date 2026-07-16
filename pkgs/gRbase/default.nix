{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  RcppArmadillo,
  RcppEigen,
  igraph,
}:

buildRPackage {
  pname = "gRbase";
  version = "2.0.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gRbase_2.0.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gRbase/gRbase_2.0.3.tar.gz"
    ];
    sha256 = "18hvdwr3pi5pn2bw6hd4vaqy1ybgsxqkw3y5zg9yn6rzd2zhriia";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    RcppArmadillo
    RcppEigen
    igraph
  ];

  meta = {
    description = "R package gRbase";
    homepage = "https://cran.r-project.org/package=gRbase";
  };
}
