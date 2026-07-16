{
  buildRPackage,
  fetchurl,
  R6,
  backports,
  checkmate,
  cli,
  data_table,
  digest,
}:

buildRPackage {
  pname = "mlr3misc";
  version = "0.21.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mlr3misc_0.21.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mlr3misc/mlr3misc_0.21.0.tar.gz"
    ];
    sha256 = "0k17gi5l8cw8afi4lb5mqblmwhr7mbn7imqfziam014i45n9b55h";
  };

  propagatedBuildInputs = [
    R6
    backports
    checkmate
    cli
    data_table
    digest
  ];

  meta = {
    description = "R package mlr3misc";
    homepage = "https://cran.r-project.org/package=mlr3misc";
  };
}
