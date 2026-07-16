{
  buildRPackage,
  fetchurl,
  cli,
  lifecycle,
  magrittr,
  rlang,
  vctrs,
}:

buildRPackage {
  pname = "purrr";
  version = "1.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/purrr_1.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/purrr/purrr_1.2.2.tar.gz"
    ];
    sha256 = "0zb1hvxskfbqxysj2scgpr3i9irn8clw9ri24l2115bq1vyc0fxc";
  };

  propagatedBuildInputs = [
    cli
    lifecycle
    magrittr
    rlang
    vctrs
  ];

  meta = {
    description = "R package purrr";
    homepage = "https://cran.r-project.org/package=purrr";
  };
}
