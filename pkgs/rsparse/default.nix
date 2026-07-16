{
  buildRPackage,
  fetchurl,
  Matrix,
  MatrixExtra,
  Rcpp,
  RcppArmadillo,
  RhpcBLASctl,
  data_table,
  float,
  lgr,
}:

buildRPackage {
  pname = "rsparse";
  version = "0.5.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rsparse_0.5.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rsparse/rsparse_0.5.3.tar.gz"
    ];
    sha256 = "0yzijxgd82h0yzqzpyfix5fd840clmms1nagl1161ngfdwd4kqb9";
  };

  propagatedBuildInputs = [
    Matrix
    MatrixExtra
    Rcpp
    RcppArmadillo
    RhpcBLASctl
    data_table
    float
    lgr
  ];

  meta = {
    description = "R package rsparse";
    homepage = "https://cran.r-project.org/package=rsparse";
  };
}
