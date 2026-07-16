{
  buildRPackage,
  fetchurl,
  R_utils,
  magrittr,
  purrr,
  rlang,
  testthat,
  usethis,
}:

buildRPackage {
  pname = "cmdfun";
  version = "1.0.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cmdfun_1.0.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cmdfun/cmdfun_1.0.2.tar.gz"
    ];
    sha256 = "1pbcq7hi2lcmqnghmy3q2fsk0c9fy5m0637acyzmc096fxbx723j";
  };

  propagatedBuildInputs = [
    R_utils
    magrittr
    purrr
    rlang
    testthat
    usethis
  ];

  meta = {
    description = "R package cmdfun";
    homepage = "https://cran.r-project.org/package=cmdfun";
  };
}
