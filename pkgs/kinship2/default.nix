{
  buildRPackage,
  fetchurl,
  Matrix,
  knitr,
  quadprog,
}:

buildRPackage {
  pname = "kinship2";
  version = "1.9.6.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/kinship2_1.9.6.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/kinship2/kinship2_1.9.6.2.tar.gz"
    ];
    sha256 = "0kpa1awnm20b62iks3sz7w34iay7gd6vir99yf7pw1wbbg4jidl5";
  };

  propagatedBuildInputs = [
    Matrix
    knitr
    quadprog
  ];

  meta = {
    description = "R package kinship2";
    homepage = "https://cran.r-project.org/package=kinship2";
  };
}
