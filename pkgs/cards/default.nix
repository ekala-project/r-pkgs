{
  buildRPackage,
  fetchurl,
  cli,
  dplyr,
  glue,
  lifecycle,
  rlang,
  tidyr,
  tidyselect,
}:

buildRPackage {
  pname = "cards";
  version = "0.7.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cards_0.7.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cards/cards_0.7.1.tar.gz"
    ];
    sha256 = "1fd5g5pvasxfg49fs6khrlaj19z56xsf4m4yjh2vwwm86f87ksff";
  };

  propagatedBuildInputs = [
    cli
    dplyr
    glue
    lifecycle
    rlang
    tidyr
    tidyselect
  ];

  meta = {
    description = "R package cards";
    homepage = "https://cran.r-project.org/package=cards";
  };
}
