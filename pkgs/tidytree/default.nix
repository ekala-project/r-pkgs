{
  buildRPackage,
  fetchurl,
  ape,
  cli,
  dplyr,
  lazyeval,
  magrittr,
  pillar,
  rlang,
  tibble,
  tidyr,
  tidyselect,
  yulab_utils,
}:

buildRPackage {
  pname = "tidytree";
  version = "0.4.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tidytree_0.4.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tidytree/tidytree_0.4.7.tar.gz"
    ];
    sha256 = "105cn3mc94g8swqpklfb6p6j6b0q0nljmrkcq30w6g4hca7sjds4";
  };

  propagatedBuildInputs = [
    ape
    cli
    dplyr
    lazyeval
    magrittr
    pillar
    rlang
    tibble
    tidyr
    tidyselect
    yulab_utils
  ];

  meta = {
    description = "R package tidytree";
    homepage = "https://cran.r-project.org/package=tidytree";
  };
}
