{
  buildRPackage,
  fetchurl,
  Formula,
  backports,
  checkmate,
  data_table,
  generics,
  insight,
  rlang,
}:

buildRPackage {
  pname = "marginaleffects";
  version = "0.32.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/marginaleffects_0.32.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/marginaleffects/marginaleffects_0.32.0.tar.gz"
    ];
    sha256 = "124hn5bp8zj6rbx02qndpfvw2r4xbjd7jj657q84wh3p09qbinlw";
  };

  propagatedBuildInputs = [
    Formula
    backports
    checkmate
    data_table
    generics
    insight
    rlang
  ];

  meta = {
    description = "R package marginaleffects";
    homepage = "https://cran.r-project.org/package=marginaleffects";
  };
}
