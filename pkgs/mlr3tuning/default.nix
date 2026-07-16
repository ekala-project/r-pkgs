{
  buildRPackage,
  fetchurl,
  R6,
  bbotk,
  checkmate,
  cli,
  data_table,
  lgr,
  mlr3,
  mlr3misc,
  paradox,
}:

buildRPackage {
  pname = "mlr3tuning";
  version = "1.6.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mlr3tuning_1.6.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mlr3tuning/mlr3tuning_1.6.0.tar.gz"
    ];
    sha256 = "1d4vxyrzgly7qxv8yl7l7f6v1ihnwcaafw1915vfzh9790cgsbsk";
  };

  propagatedBuildInputs = [
    R6
    bbotk
    checkmate
    cli
    data_table
    lgr
    mlr3
    mlr3misc
    paradox
  ];

  meta = {
    description = "R package mlr3tuning";
    homepage = "https://cran.r-project.org/package=mlr3tuning";
  };
}
