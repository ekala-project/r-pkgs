{
  buildRPackage,
  fetchurl,
  DBI,
  blob,
  callr,
  desc,
  hms,
  lubridate,
  magrittr,
  nanoarrow,
  palmerpenguins,
  rlang,
  testthat,
  withr,
}:

buildRPackage {
  pname = "DBItest";
  version = "1.8.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/DBItest_1.8.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/DBItest/DBItest_1.8.2.tar.gz"
    ];
    sha256 = "1zm3y5fsmsyz4bi3fqvl3zp13jjbi029i21xi4l81h7wxrc8p5y5";
  };

  propagatedBuildInputs = [
    DBI
    blob
    callr
    desc
    hms
    lubridate
    magrittr
    nanoarrow
    palmerpenguins
    rlang
    testthat
    withr
  ];

  meta = {
    description = "R package DBItest";
    homepage = "https://cran.r-project.org/package=DBItest";
  };
}
