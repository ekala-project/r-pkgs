{
  buildRPackage,
  fetchurl,
  broom,
  dplyr,
  ggplot2,
  ggpubr,
  ggtext,
  gridExtra,
  magrittr,
  maxstat,
  purrr,
  rlang,
  scales,
  survival,
  tibble,
  tidyr,
}:

buildRPackage {
  pname = "survminer";
  version = "0.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/survminer_0.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/survminer/survminer_0.5.2.tar.gz"
    ];
    sha256 = "1h881pfgq6iqm36c5qkf54pkfjv8n8hjgck1kjpa4hmqbxj5ij8p";
  };

  propagatedBuildInputs = [
    broom
    dplyr
    ggplot2
    ggpubr
    ggtext
    gridExtra
    magrittr
    maxstat
    purrr
    rlang
    scales
    survival
    tibble
    tidyr
  ];

  meta = {
    description = "R package survminer";
    homepage = "https://cran.r-project.org/package=survminer";
  };
}
