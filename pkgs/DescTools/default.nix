{
  buildRPackage,
  fetchurl,
  Exact,
  MASS,
  Rcpp,
  boot,
  cli,
  data_table,
  expm,
  fs,
  gld,
  haven,
  httr,
  mvtnorm,
  readr,
  readxl,
  rstudioapi,
  withr,
}:

buildRPackage {
  pname = "DescTools";
  version = "0.99.60";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/DescTools_0.99.60.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/DescTools/DescTools_0.99.60.tar.gz"
    ];
    sha256 = "1g5wffssvbsqkzh6r5fcing2vxk0lx3dbmls0vhphqnwkmbxh81c";
  };

  propagatedBuildInputs = [
    Exact
    MASS
    Rcpp
    boot
    cli
    data_table
    expm
    fs
    gld
    haven
    httr
    mvtnorm
    readr
    readxl
    rstudioapi
    withr
  ];

  meta = {
    description = "R package DescTools";
    homepage = "https://cran.r-project.org/package=DescTools";
  };
}
