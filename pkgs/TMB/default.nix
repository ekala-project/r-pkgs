{
  buildRPackage,
  fetchurl,
  Matrix,
  RcppEigen,
}:

buildRPackage {
  pname = "TMB";
  version = "1.9.21";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/TMB_1.9.21.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/TMB/TMB_1.9.21.tar.gz"
    ];
    sha256 = "0fp58mnkgsjm7w7vhz4ld69gnzlwx7g9rmlc0c3ma0mkhrqzyzxh";
  };

  propagatedBuildInputs = [
    Matrix
    RcppEigen
  ];

  meta = {
    description = "R package TMB";
    homepage = "https://cran.r-project.org/package=TMB";
  };
}
