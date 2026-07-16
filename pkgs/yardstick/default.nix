{
  buildRPackage,
  fetchurl,
  cli,
  dplyr,
  generics,
  hardhat,
  lifecycle,
  rlang,
  tibble,
  tidyselect,
  vctrs,
  withr,
}:

buildRPackage {
  pname = "yardstick";
  version = "1.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/yardstick_1.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/yardstick/yardstick_1.4.0.tar.gz"
    ];
    sha256 = "12w8fj67315cjx2lly47pm7lxmyhwiphgahkjkfpsa8hncyjp7sp";
  };

  propagatedBuildInputs = [
    cli
    dplyr
    generics
    hardhat
    lifecycle
    rlang
    tibble
    tidyselect
    vctrs
    withr
  ];

  meta = {
    description = "R package yardstick";
    homepage = "https://cran.r-project.org/package=yardstick";
  };
}
