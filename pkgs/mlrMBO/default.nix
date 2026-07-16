{
  buildRPackage,
  fetchurl,
  BBmisc,
  ParamHelpers,
  backports,
  checkmate,
  data_table,
  lhs,
  mlr,
  parallelMap,
  smoof,
}:

buildRPackage {
  pname = "mlrMBO";
  version = "1.1.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mlrMBO_1.1.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mlrMBO/mlrMBO_1.1.6.tar.gz"
    ];
    sha256 = "13bzqp7vfh85rak04kxk6my1fpjfidg48ywswab4vdvhikbhxv7z";
  };

  propagatedBuildInputs = [
    BBmisc
    ParamHelpers
    backports
    checkmate
    data_table
    lhs
    mlr
    parallelMap
    smoof
  ];

  meta = {
    description = "R package mlrMBO";
    homepage = "https://cran.r-project.org/package=mlrMBO";
  };
}
