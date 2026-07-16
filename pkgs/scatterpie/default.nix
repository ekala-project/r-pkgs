{
  buildRPackage,
  fetchurl,
  dplyr,
  ggforce,
  ggfun,
  ggplot2,
  rlang,
  tidyr,
  yulab_utils,
}:

buildRPackage {
  pname = "scatterpie";
  version = "0.2.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/scatterpie_0.2.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/scatterpie/scatterpie_0.2.6.tar.gz"
    ];
    sha256 = "156r32h847j17ijaf51fq5irbf74idbyvh9i06pw5j4dp50k9fdv";
  };

  propagatedBuildInputs = [
    dplyr
    ggforce
    ggfun
    ggplot2
    rlang
    tidyr
    yulab_utils
  ];

  meta = {
    description = "R package scatterpie";
    homepage = "https://cran.r-project.org/package=scatterpie";
  };
}
