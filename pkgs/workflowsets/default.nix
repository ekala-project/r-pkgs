{
  buildRPackage,
  fetchurl,
  cli,
  dplyr,
  generics,
  ggplot2,
  hardhat,
  lifecycle,
  parsnip,
  pillar,
  prettyunits,
  purrr,
  rlang,
  rsample,
  tibble,
  tidyr,
  tune,
  vctrs,
  withr,
  workflows,
}:

buildRPackage {
  pname = "workflowsets";
  version = "1.1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/workflowsets_1.1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/workflowsets/workflowsets_1.1.1.tar.gz"
    ];
    sha256 = "1dimx66h4qg7v20cqq35g6c0s7d8zpzc9ajws6rs1ax0vj5i63yv";
  };

  propagatedBuildInputs = [
    cli
    dplyr
    generics
    ggplot2
    hardhat
    lifecycle
    parsnip
    pillar
    prettyunits
    purrr
    rlang
    rsample
    tibble
    tidyr
    tune
    vctrs
    withr
    workflows
  ];

  meta = {
    description = "R package workflowsets";
    homepage = "https://cran.r-project.org/package=workflowsets";
  };
}
