{
  buildRPackage,
  fetchurl,
  broom,
  cli,
  conflicted,
  dials,
  dplyr,
  ggplot2,
  hardhat,
  infer,
  modeldata,
  parsnip,
  purrr,
  recipes,
  rlang,
  rsample,
  rstudioapi,
  tailor,
  tidyr,
  tune,
  workflows,
  workflowsets,
  yardstick,
}:

buildRPackage {
  pname = "tidymodels";
  version = "1.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tidymodels_1.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tidymodels/tidymodels_1.5.0.tar.gz"
    ];
    sha256 = "124iksqplkvp37xz0p2irdii2gnjnl2h7kl39c0mg4q7q67awccf";
  };

  propagatedBuildInputs = [
    broom
    cli
    conflicted
    dials
    dplyr
    ggplot2
    hardhat
    infer
    modeldata
    parsnip
    purrr
    recipes
    rlang
    rsample
    rstudioapi
    tailor
    tidyr
    tune
    workflows
    workflowsets
    yardstick
  ];

  meta = {
    description = "R package tidymodels";
    homepage = "https://cran.r-project.org/package=tidymodels";
  };
}
