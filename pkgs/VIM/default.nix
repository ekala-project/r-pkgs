{
  buildRPackage,
  fetchurl,
  MASS,
  R6,
  Rcpp,
  car,
  colorspace,
  data_table,
  e1071,
  future,
  laeken,
  mlr3,
  mlr3learners,
  mlr3pipelines,
  mlr3tuning,
  nnet,
  paradox,
  ranger,
  robustbase,
  sp,
  vcd,
  xgboost,
}:

buildRPackage {
  pname = "VIM";
  version = "7.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/VIM_7.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/VIM/VIM_7.0.0.tar.gz"
    ];
    sha256 = "007yh5shkywkmfbwh4cywp4jxc9cwp4zkgdvq14gvncw5i92a7gi";
  };

  propagatedBuildInputs = [
    MASS
    R6
    Rcpp
    car
    colorspace
    data_table
    e1071
    future
    laeken
    mlr3
    mlr3learners
    mlr3pipelines
    mlr3tuning
    nnet
    paradox
    ranger
    robustbase
    sp
    vcd
    xgboost
  ];

  meta = {
    description = "R package VIM";
    homepage = "https://cran.r-project.org/package=VIM";
  };
}
