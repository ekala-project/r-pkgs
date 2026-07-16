{
  buildRPackage,
  fetchurl,
  R6,
  backports,
  checkmate,
  data_table,
  mlr3misc,
}:

buildRPackage {
  pname = "paradox";
  version = "1.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/paradox_1.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/paradox/paradox_1.0.1.tar.gz"
    ];
    sha256 = "120ll8xrdg9s7ip0053m0i83gshxh3n79spsfwv6dzjwsj3mmpkj";
  };

  propagatedBuildInputs = [
    R6
    backports
    checkmate
    data_table
    mlr3misc
  ];

  meta = {
    description = "R package paradox";
    homepage = "https://cran.r-project.org/package=paradox";
  };
}
