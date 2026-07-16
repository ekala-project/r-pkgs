{
  buildRPackage,
  fetchurl,
  bayestestR,
  datawizard,
  dplyr,
  ggeffects,
  ggplot2,
  insight,
  knitr,
  parameters,
  performance,
  purrr,
  rlang,
  scales,
  sjlabelled,
  sjmisc,
  sjstats,
  tidyr,
}:

buildRPackage {
  pname = "sjPlot";
  version = "2.9.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sjPlot_2.9.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sjPlot/sjPlot_2.9.0.tar.gz"
    ];
    sha256 = "0a7i9klzhjlc5bgwsrm7vqnrrzkkw92pn0s7dhaphwh4zhfc39jd";
  };

  propagatedBuildInputs = [
    bayestestR
    datawizard
    dplyr
    ggeffects
    ggplot2
    insight
    knitr
    parameters
    performance
    purrr
    rlang
    scales
    sjlabelled
    sjmisc
    sjstats
    tidyr
  ];

  meta = {
    description = "R package sjPlot";
    homepage = "https://cran.r-project.org/package=sjPlot";
  };
}
