{
  buildRPackage,
  fetchurl,
  cli,
  dplyr,
  haven,
  lifecycle,
  rlang,
  stringr,
  tidyr,
  tidyselect,
  vctrs,
}:

buildRPackage {
  pname = "labelled";
  version = "2.16.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/labelled_2.16.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/labelled/labelled_2.16.0.tar.gz"
    ];
    sha256 = "1b0zwkrpwf4bcy5qiibpyqnywg2cwif659rqyhdq23lr2fslydxs";
  };

  propagatedBuildInputs = [
    cli
    dplyr
    haven
    lifecycle
    rlang
    stringr
    tidyr
    tidyselect
    vctrs
  ];

  meta = {
    description = "R package labelled";
    homepage = "https://cran.r-project.org/package=labelled";
  };
}
