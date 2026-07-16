{
  buildRPackage,
  fetchurl,
  R6,
  backports,
  checkmate,
  cli,
  data_table,
  evaluate,
  future,
  future_apply,
  lgr,
  mirai,
  mlbench,
  mlr3measures,
  mlr3misc,
  palmerpenguins,
  paradox,
  parallelly,
  uuid,
}:

buildRPackage {
  pname = "mlr3";
  version = "1.6.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mlr3_1.6.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mlr3/mlr3_1.6.0.tar.gz"
    ];
    sha256 = "1raj1ia14pbi9zhbqc1n4a4fnn99fmy3fc67rpad0ka23sn65b5j";
  };

  propagatedBuildInputs = [
    R6
    backports
    checkmate
    cli
    data_table
    evaluate
    future
    future_apply
    lgr
    mirai
    mlbench
    mlr3measures
    mlr3misc
    palmerpenguins
    paradox
    parallelly
    uuid
  ];

  meta = {
    description = "R package mlr3";
    homepage = "https://cran.r-project.org/package=mlr3";
  };
}
