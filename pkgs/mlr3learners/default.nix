{
  buildRPackage,
  fetchurl,
  R6,
  checkmate,
  data_table,
  mlr3,
  mlr3misc,
  paradox,
}:

buildRPackage {
  pname = "mlr3learners";
  version = "0.14.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mlr3learners_0.14.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mlr3learners/mlr3learners_0.14.0.tar.gz"
    ];
    sha256 = "13i5kl0w675355arph9gsbg19fsi063s2yg2czh2rmwcryqszd29";
  };

  propagatedBuildInputs = [
    R6
    checkmate
    data_table
    mlr3
    mlr3misc
    paradox
  ];

  meta = {
    description = "R package mlr3learners";
    homepage = "https://cran.r-project.org/package=mlr3learners";
  };
}
