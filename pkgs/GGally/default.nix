{
  buildRPackage,
  fetchurl,
  RColorBrewer,
  S7,
  cli,
  dplyr,
  ggplot2,
  ggstats,
  gtable,
  lifecycle,
  magrittr,
  progress,
  rlang,
  scales,
  tidyr,
}:

buildRPackage {
  pname = "GGally";
  version = "2.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/GGally_2.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/GGally/GGally_2.4.0.tar.gz"
    ];
    sha256 = "10kkiym7k368fkczqpg7wynsjd15fvbsrkj9mvz0n8hc1qb5im68";
  };

  propagatedBuildInputs = [
    RColorBrewer
    S7
    cli
    dplyr
    ggplot2
    ggstats
    gtable
    lifecycle
    magrittr
    progress
    rlang
    scales
    tidyr
  ];

  meta = {
    description = "R package GGally";
    homepage = "https://cran.r-project.org/package=GGally";
  };
}
