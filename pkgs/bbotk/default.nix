{
  buildRPackage,
  fetchurl,
  R6,
  checkmate,
  cli,
  data_table,
  lgr,
  mlr3misc,
  paradox,
}:

buildRPackage {
  pname = "bbotk";
  version = "1.10.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bbotk_1.10.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bbotk/bbotk_1.10.0.tar.gz"
    ];
    sha256 = "12cwp2z6idw97bxxwn04fj8x5a3zna854bbxv8ixj44im3x9hyi6";
  };

  propagatedBuildInputs = [
    R6
    checkmate
    cli
    data_table
    lgr
    mlr3misc
    paradox
  ];

  meta = {
    description = "R package bbotk";
    homepage = "https://cran.r-project.org/package=bbotk";
  };
}
