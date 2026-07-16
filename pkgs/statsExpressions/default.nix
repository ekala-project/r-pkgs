{
  buildRPackage,
  fetchurl,
  BayesFactor,
  PMCMRplus,
  WRS2,
  afex,
  bayestestR,
  correlation,
  datawizard,
  dplyr,
  effectsize,
  glue,
  insight,
  parameters,
  performance,
  purrr,
  rlang,
  rstantools,
  tidyr,
  withr,
}:

buildRPackage {
  pname = "statsExpressions";
  version = "2.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/statsExpressions_2.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/statsExpressions/statsExpressions_2.0.0.tar.gz"
    ];
    sha256 = "01d685zxk9w6ikdjh617d0fc1ga3jz4v7xsynmn924n35nx04zrv";
  };

  propagatedBuildInputs = [
    BayesFactor
    PMCMRplus
    WRS2
    afex
    bayestestR
    correlation
    datawizard
    dplyr
    effectsize
    glue
    insight
    parameters
    performance
    purrr
    rlang
    rstantools
    tidyr
    withr
  ];

  meta = {
    description = "R package statsExpressions";
    homepage = "https://cran.r-project.org/package=statsExpressions";
  };
}
