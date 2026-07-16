{
  buildRPackage,
  fetchurl,
  R_cache,
  cli,
  magrittr,
  purrr,
  rlang,
  rprojroot,
  vctrs,
  withr,
}:

buildRPackage {
  pname = "styler";
  version = "1.11.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/styler_1.11.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/styler/styler_1.11.0.tar.gz"
    ];
    sha256 = "067yzc8gd4yic6zi4xq82gbyib01bv6sfrpiv1yh9b9f5dw611zh";
  };

  propagatedBuildInputs = [
    R_cache
    cli
    magrittr
    purrr
    rlang
    rprojroot
    vctrs
    withr
  ];

  meta = {
    description = "R package styler";
    homepage = "https://cran.r-project.org/package=styler";
  };
}
