{
  buildRPackage,
  fetchurl,
  dplyr,
  glue,
  purrr,
  rlang,
  testthat,
  tibble,
}:

buildRPackage {
  pname = "patrick";
  version = "0.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/patrick_0.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/patrick/patrick_0.3.1.tar.gz"
    ];
    sha256 = "05f8ccr6g5mz0n2hyna8cvk9wb3vbdmx1cdwsfyjxwagpmyvill5";
  };

  propagatedBuildInputs = [
    dplyr
    glue
    purrr
    rlang
    testthat
    tibble
  ];

  meta = {
    description = "R package patrick";
    homepage = "https://cran.r-project.org/package=patrick";
  };
}
