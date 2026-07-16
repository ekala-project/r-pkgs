{
  buildRPackage,
  fetchurl,
  cli,
  cpp11,
  forcats,
  hms,
  lifecycle,
  readr,
  rlang,
  tibble,
  tidyselect,
  vctrs,
}:

buildRPackage {
  pname = "haven";
  version = "2.5.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/haven_2.5.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/haven/haven_2.5.5.tar.gz"
    ];
    sha256 = "19f9n7a4g90fdwhx66cjyxmzm5zdgwqkawk8ry587qb06yfcv0ll";
  };

  propagatedBuildInputs = [
    cli
    cpp11
    forcats
    hms
    lifecycle
    readr
    rlang
    tibble
    tidyselect
    vctrs
  ];

  meta = {
    description = "R package haven";
    homepage = "https://cran.r-project.org/package=haven";
  };
}
